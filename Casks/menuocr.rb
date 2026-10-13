cask "menuocr" do
  version "1.4.0"
  sha256 "16e65bd90682e84ff7114d604fc74fb8b30272223e5127eabc29c01e3d39d054"

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
