require "formula"

class GccArmNoneEabi94 < Formula
  desc "GNU Embedded Toolchain for ARM"
  homepage "https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads"
  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2"
  version "20191106"
  sha256 '1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0'

  def install
    ohai "Copying binaries..."
    cp_r %w[arm-none-eabi bin lib share], "#{prefix}/"
  end
end
