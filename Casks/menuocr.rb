cask "menuocr" do
  version "1.5.0"
  sha256 "b494c946aa720937d1ef4581fd954c065cd68767ed289772f3ada77f194874be"

  url "https://github.com/Hassaankh10/MenuOCR/releases/download/v#{version}/MenuOCR-#{version}-macOS-arm64.dmg"
  name "MenuOCR"
  desc "Copy text and QR codes from screenshots"
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
