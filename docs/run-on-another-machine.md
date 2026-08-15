# Hướng dẫn chạy trên máy khác

## Cách nhanh nhất

1. Cài Python 3.12 hoặc mới hơn từ Homebrew hoặc python.org.
2. Mở Terminal trong thư mục dự án.
3. Tạo môi trường ảo mới:

```bash
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
```

4. Cài thêm gói Google Cloud TTS nếu máy mới chưa có:

```bash
pip install google-cloud-texttospeech
```

5. Chạy app:

```bash
python app.pyw
```

## Trên macOS

- Nếu bạn dùng launcher có sẵn, hãy mở `TextToMp3Launcher.app` để chạy đúng code mới nhất trong repo.
- Nếu Finder chưa hiện icon, đóng rồi mở lại thư mục dự án.
- App dùng `TextToMp3Launcher.app` sẽ trỏ vào `app.pyw` trong thư mục hiện tại, nên mỗi lần bạn sửa code xong chỉ cần mở lại launcher là chạy bản mới.

## Nếu thiếu Tkinter

Nếu chạy bị lỗi `No module named '_tkinter'`, hãy cài bản Python có Tk hỗ trợ hoặc dùng Python từ python.org.

## Ghi chú

- Dự án hiện dùng Python 3.12 trong môi trường sạch `.venv312`.
- Nếu bạn copy repo sang máy khác, chỉ cần tạo lại venv và cài dependencies như trên.
- File launcher `TextToMp3Launcher.app` là cách bấm nhanh trên macOS.
