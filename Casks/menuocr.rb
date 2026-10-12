cask "menuocr" do
  version "1.2.2"
  sha256 "9a484e8609d377ba05cdc31d432b11dcdb21c283a83493ff984dc6ab23dfd431"

  url "https://github.com/Hassaankh10/MenuOCR/releases/download/v#{version}/MenuOCR-#{version}-macOS-arm64.zip"
  name "MenuOCR"
  desc "Copy text from screenshots with local OCR"
  homepage "https://github.com/Hassaankh10/MenuOCR"

  depends_on arch: :arm64
  depends_on macos: :ventura
  depends_on formula: "tesseract"

  app "MenuOCR.app"

  caveats <<~EOS
    Enable Screen Recording for MenuOCR in System Settings, then reopen the app.
    This build is not notarized. If macOS blocks it, use Open Anyway in Privacy & Security.
  EOS
end
