# create a zip file of this repo, excluding all dirs starting with a . or __ in the name; exclude also "output" and the large input files, as well as uv.lock file

import zipfile
import glob

zip_fn = ".publish/WaterBench-MIKE21SW-SouthernNorthSea.zip"


def zip_repo():
    with zipfile.ZipFile(zip_fn, "w") as z:
        for fn in glob.glob("**/*", recursive=True):
            if (
                not any([fn.startswith(x) for x in [".", "__", "output\\", "input\AreaHD", "input\Wind", "uv"]] and ".toml" not in fn)
                and "__" not in fn
                and "." in fn
            ):
                z.write(fn)
            else:
                print(f"Excluded: {fn}")

    print(f"Zip file created: {zip_fn}")


if __name__ == "__main__":
    zip_repo()
