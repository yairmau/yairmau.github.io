"""
Helper to auto-crop figures from a PDF page using caption positions + embedded
image/drawing bounding boxes, instead of trusting pymupdf4llm's heuristic
auto-crop (which has repeatedly bled captions into images or merged adjacent
figures). Not part of the website; a working tool for the papers-md porting
pass. Usage is interactive/manual per paper: import and call functions from
a one-off script or the REPL, inspect results, adjust.
"""
import pymupdf


def list_captions(pdf_path, page_index, needle_prefix="FIG."):
    """Print caption rects on a page to find where each figure's caption starts."""
    pdf = pymupdf.open(pdf_path)
    page = pdf[page_index]
    blocks = page.get_text("blocks")
    for b in blocks:
        x0, y0, x1, y1, text, *_ = b
        if needle_prefix in text[:12] or "Figure" in text[:12]:
            print(f"x0={x0:.1f} y0={y0:.1f} x1={x1:.1f} y1={y1:.1f} :: {text[:50]!r}")


def list_images(pdf_path, page_index):
    pdf = pymupdf.open(pdf_path)
    page = pdf[page_index]
    for img in page.get_image_info():
        print("img bbox", img["bbox"])


def crop(pdf_path, page_index, rect, out_path, zoom=4):
    pdf = pymupdf.open(pdf_path)
    page = pdf[page_index]
    mat = pymupdf.Matrix(zoom, zoom)
    pix = page.get_pixmap(matrix=mat, clip=pymupdf.Rect(*rect))
    pix.save(out_path)
    print("saved", out_path)


def render_full_page(pdf_path, page_index, out_path, dpi=200):
    pdf = pymupdf.open(pdf_path)
    page = pdf[page_index]
    pix = page.get_pixmap(dpi=dpi)
    pix.save(out_path)
    print("saved", out_path, pix.width, pix.height)
