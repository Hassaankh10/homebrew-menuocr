cask "menuocr" do
  version "1.3.1"
  sha256 "ca24a23c9079941ad813cf96ed87dccef2232b7481f73173b8e440bb73f8275b"

  url "https://github.com/Hassaankh10/MenuOCR/releases/download/v#{version}/MenuOCR-#{version}-macOS-arm64.dmg"
  name "MenuOCR"
  desc "Copy text from screenshots with local OCR"
  homepage "https://github.com/Hassaankh10/MenuOCR"

  depends_on arch: :arm64
  depends_on macos: :ventura
  depends_on formula: "tesseract"

  app "MenuOCR.app"

  caveats <<~EOS
    Open MenuOCR and follow the Screen Recording setup panel.
    This build is not notarized. If macOS blocks it, use Open Anyway in Privacy & Security.
  EOS
end
