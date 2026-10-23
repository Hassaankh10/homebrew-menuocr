cask "menuocr" do
  version "1.5.1"
  sha256 "2db718196f4c3e9dab0d730bc1b1e7e10995e1b1b357713c5f70b2148d676248"

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
