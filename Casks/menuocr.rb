cask "menuocr" do
  version "1.2.1"
  sha256 "f853381c8be8134749f4a7e2d923db6806e9ecc453eaaadfdd09fccb50e8014f"

  url "https://github.com/Hassaankh10/MenuOCR/releases/download/v#{version}/MenuOCR-#{version}-macOS-arm64.zip"
  name "MenuOCR"
  desc "Copy text from screenshots with local OCR"
  homepage "https://github.com/Hassaankh10/MenuOCR"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"
  depends_on formula: "tesseract"

  app "MenuOCR.app"

  caveats <<~EOS
    Enable Screen Recording for MenuOCR in System Settings, then reopen the app.
    This build is not notarized. If macOS blocks it, use Open Anyway in Privacy & Security.
  EOS
end
