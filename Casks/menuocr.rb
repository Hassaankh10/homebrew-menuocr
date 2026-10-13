cask "menuocr" do
  version "1.4.1"
  sha256 "b38e54a5d1c0b775240e6f1172a3d6de4709dcc994d2b42e39c3751b011968b7"

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
