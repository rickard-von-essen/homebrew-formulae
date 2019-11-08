# Use this DownloadStrategy to get patches from the `patches/<formula name>/` in this tap
#
# Example:
#
# <pre>  patch do
#     url "01-fix.patch", :using => PatchDirDownloadStrategy
#   end</pre>
class PatchDirDownloadStrategy < AbstractFileDownloadStrategy
  def fetch
    formula_name = name.split("--")[0]
    FileUtils.cp(Pathname.new(__dir__).parent / "patches" / formula_name / url, cached_location)
  end
end
