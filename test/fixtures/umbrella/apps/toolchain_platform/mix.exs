defmodule ToolchainPlatform.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
           |> File.read!()
           |> String.trim()

  def project do
    [
      app: :toolchain_platform,
      version: @version,
      nerves_package: nerves_package(),
      deps_path: "../../deps",
      build_path: "../../_build",
      config_path: "../../config/config.exs"
    ]
  end

  defp nerves_package do
    [
      type: :toolchain_platform,
      checksum: package_files()
    ]
  end

  defp package_files do
    [
      "mix.exs",
      "env.exs",
      "lib",
      "VERSION"
    ]
  end
end
