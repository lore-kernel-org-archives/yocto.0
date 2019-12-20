Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.13724.1576872810731520498
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Dec 2019 12:13:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: phong@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBKKDSfD012289
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 20 Dec 2019 12:13:29 -0800 (PST)
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Fri, 20 Dec 2019
 12:13:24 -0800
Received: by yow-lpggp3.wrs.com (Postfix, from userid 21010)	id C6A7020019;
 Fri, 20 Dec 2019 15:13:23 -0500 (EST)
From: "Peiran" <peiran1997@gmail.com>
To: <yocto@lists.yoctoproject.org>
CC: Peiran Hong <peiran1997@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] Add a detailed README file for yocto-autobuilder-helper scripts
Date: Fri, 20 Dec 2019 15:11:28 -0500
Message-ID: <20191220201128.20373-1-peiran1997@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The new README file adds information to build a
target on a local machine, explains the scripts,
parameters, and configuration files in more detail,
and provides some notes on limitations and possible
improvements that can be made to the autobuilder-helper
scripts.

Signed-off-by: Peiran Hong <peiran1997@gmail.com>
---
 README.md | 317 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 317 insertions(+)
 create mode 100644 README.md

diff --git a/README.md b/README.md
new file mode 100644
index 0000000..b50061d
--- /dev/null
+++ b/README.md
@@ -0,0 +1,317 @@
+## Directories
+
+- `git/trash`: Directory for storing successfully finished and not
+  published builds.
+
+- `git/mirror`: *Optional*, directory for storing repo mirrors. If
+  repos are present in this directory, `git config` will do a local
+  clone on the repo instead of fetching from remote.
+
+## Json File Containing Repository Data
+
+In order to build a target, user needs to create a json file to hold
+the data of the repos that are required by the target (e.g. poky,
+bitbake, meta-openembbeded, etc.). All available repo data can be
+found in the `repo-defaults` entry in the `config.json` file. User can
+then copy the desired repo data and create a new json file consisting
+of only the repo data. An example of this would be:
+
+```json
+{
+	"poky" : {
+		"url" : "git://git.yoctoproject.org/poky",
+		"branch" : "master",
+		"revision" : "HEAD",
+		"checkout-dirname" : ".",
+		"no-layer-add" : true,
+		"call-init" : true
+	},
+	"bitbake" : {
+		"url" : "git://git.openembedded.org/bitbake",
+		"branch" : "master",
+		"revision" : "HEAD",
+		"no-layer-add" : true
+	}
+}
+```
+
+In the subsequent sections, this file will be referred to as **`repos.json`**.
+
+## Entry Point Scripts and Usage
+
+### `scripts/prepare-shared-repos`
+
+This script will fetch repos specified by `repos.json` and cache them
+in a custom directory. The cached repos can then be reused for future
+builds.
+
+Args:
+
+1. `repojson`: The path to `repos.json` containing repository data
+   explained in the previous section.
+
+2. `sharedsrcdir`: The directory where the repos will be cached.
+
+3. `-p`, `--publish-dir`: *Optional*, where to publish artefacts
+   to. Fetched repos would be archived as tarball and stored in this
+   directory. This procedure will not happen if `publish-dir` is not
+   specified.
+
+### `scripts/shared-repo-unpack`
+
+This script first fetches repos specified by `repos.json` *as well as*
+specified in the `NEEDREPOS` entry of the target in `config.json` to
+the autobuilder working directory given by user, then calls another
+script `scripts/layer-config`.
+
+`scripts/layer-config` will source `oe-init-build-env` file and
+execute `bitbake-layers add-layer` to add necessary layers (the
+`call-init` entry in `repos.json` for each repository will determine
+if `oe-init-build-env` is sourced, the `no-layer-add` entry will
+determine if `bitbake add-layer` should be run on this repo). Note
+that if `NEEDREPOS` is not set for the specific build target,
+`NEEDREPOS` in target `defaults` is checked and added. refer to
+`getconfigvar()` function in `scripts/utils.py` for details.
+
+Args:
+
+1. `repojson`: Same as in `scripts/prepare-shared-repos`.
+
+2. `abworkdir`: The autobuilder working directory which will resemble
+   the look of `poky` or `openembbeded-core` repo with build
+   directory, `oe-init-build-env`, etc.
+
+3. `target`: The target name defined under the `overrides` entry in
+   `config.json`.
+
+4. `-c`, `--cache-dir`: *Optional*, path to the directory caching the
+   repos fetch by `scripts/prepare-shared-repos`. If this argument is
+   not set, fetched repos will be stored in the `repos` directory
+   inside `abworkdir`.
+
+5. `-p`, `--publish-dir`: *Optional*, same as in
+   `scripts/prepare-shared-repos`.
+
+### `scripts/run-config`
+
+This script is the command responsible for sourcing the
+`oe-init-build-env` file, preparing for and executing `bitbake` to
+start the build, and running any sanity checks and extra commands
+specified by the target.
+
+First, build history related tasks are done. Build history related
+entries in `config.json` are checked. Specifically, it checks if the
+`BUILDHISTORY` entry is set to `true` for the target, and if the
+`reponame:branchname` argument passed into `run-config` is present in
+the `BUILD_HISTORY_DIRECTPUSH` or the `BUILD_HISTORY_FORKPUSH` entry
+in `config.json`. Then `scripts/buildhistory-init` script is executed
+to fetch the build history repo specified in the `BUILD_HISTORY_REPO`
+entry in `config.json`. However, the default build history repo given
+in `config.json` requires permission to clone.
+
+Then for each `step` of the target, the following tasks are run in
+sequence:
+
+1. `bitbake-layers addlayer` is run for all the layers present in the
+   `ADDLAYER` entry of the target in `config.json`. Note that these
+   layers are different from the ones added in the previous step by
+   `scripts/layer-config`.
+
+2. `scripts/setup-config` generates an `auto.conf` under
+   `abworkdir/build/conf` and writes to it the extra configs specified
+   by the `extravars` entry of the target in `config.json`. It also
+   generates a `sdk-extra.conf` file and writes to it the items
+   specified by the `SDKEXTRAS` entry of the target in `config.json`.
+
+3. `bitbake` command is run on the `BBTARGET` specified in the current
+   step with `-k` option.
+
+4. `SANITYTARGETS` of the step is run.
+
+5. `EXTRACMDS` and `EXTRAPLAINCMDS` of the step is run.
+
+6. Remove all layers added in reverse order using `bitbake-layers
+   remove-layer`.
+
+After the build is finished, publish artefacts (copy generated images
+and sdks to the user-defined publish directory. Refer to
+`scripts/publish-artefacts`), collect build results (copy
+`build_directory/tmp/log/oeqa/testresults.json` to the user-defined
+results directory and also compare the current build with previous
+ones. `buildhistory` is being run, refer to `scripts/collect-results`)
+and send error report if and error occurred and the `SENDERRORS` entry
+for the target is set in `config.json` (`send-error-report` is being
+run, refer to `scripts/upload-error-reports`).
+
+Lastly, everything is cleaned up. If there is any error during the
+build or the build is published (i.e. the `--publish-dir` argument is
+specified), the build directory is renamed by appending `-renamed`
+after the original build directory name and the script
+exits. Otherwise, `janitor/clobberdir` script is run to try to move
+the build directory to the trash directory set in `config.json` by the
+`TRASH_DIR` entry.  `janitor/clobberdir` first checks if trash
+directory is present and is valid, then it checks if the trash
+directory is on the same file system with the build directory. If it
+is, move the build directory to trash directory, else delete it.
+
+Args:
+
+1. `target`: Same as in `scripts/shared-repo-unpack`
+
+2. `builddir`: The build directory created by the sourcing of
+   `oe-init-build-env`, **This directory is not the autobuilder
+   working `abworkdir`**, but rather the `build` directory inside it,
+   i.e. it is something like `abworkdir/build`.
+
+3. `branchname`: The branch the build is running on. However, **This
+   does not set the branch the build is running**, it is only used for
+   build history. To change the branch of the build, modify the
+   `branch` entry in `repos.json`.
+
+4. `reponame`: The repo the build is running on. Again, **This does
+   not set the repo the build is running**, it is only used for build
+   history.
+
+5. `-s`, `--sstateprefix`: *Defaults to empty*, the directory prefix
+   to publish sstate into.
+
+6. `-b`, `--buildappsrcrev`: *Defaults to empty*, a build appliance
+   SRCREV to use.
+
+7. `-p`, `--publish-dir`: *Optional*, sets the directory
+   `scripts/publish-artefacts` script will be copying to.
+
+8. `-r`, `--results-dir`: *Optional*, sets the directory
+   `scripts/collect-results` script will be copying to.
+
+9. `-u`, `--build-url`: *Optional*, sets the url to link back to this
+   build from the error report server.
+
+10. `--build-type`: *Defaults to `quick`*, can be either `quick` or
+    `full`. For `quick` type, toolchain tests are skipped.
+
+11. `-t`, `--test`: *Defaults to `false`*, if set to `true`, only
+    `scripts/setup-config` is executed and the commands are dry-run.
+
+12. `-q`, `--quietlogging`: *Defaults to `false`*, prevents the
+    flushing of `bitbake` stdout output.
+
+## Steps to build a target
+
+Suppose we are now in the `scripts` directory. We want to build the
+target `poky-tiny` and work in the directory `$HOME/workdir` and want
+to cache all the repos in the directory `$HOME/cache` for future use.
+
+1. Modify the `BASE_HOMEDIR` in `config.json` to a valid directory for the build to happen. Here we use `$HOME`
+
+```json
+{
+    "BASE_HOMEDIR" : "/home/usr"
+    ...
+}
+```
+
+2. Create required directory `git/trash`. Here we create it under `$HOME`:
+
+```bash
+$ mkdir -p $HOME/git/trash
+```
+
+3. Check the `NEEDREPOS` entry for corresponding build targets in
+   `config.json` and create the `repos.json` file according to the
+   [Json File Containing Repository
+   Data](##{Json-File-Containing-Repository-Data}) section above. In
+   this case `poky` and `bitbake` are needed, so the `repos.json` file
+   should look like:
+
+```json
+{
+	"poky" : {
+		"url" : "git://git.yoctoproject.org/poky",
+		"branch" : "",
+		"revision" : "HEAD",
+		"checkout-dirname" : ".",
+		"no-layer-add" : true,
+		"call-init" : true
+	},
+	"bitbake" : {
+		"url" : "git://git.openembedded.org/bitbake",
+		"branch" : "master",
+		"revision" : "HEAD",
+		"no-layer-add" : true
+	}
+}
+```
+
+4. Run `scripts/prepare-shared-repos` and point to the `repos.json`
+   file as well as the cache directory. In this case we want:
+
+```bash
+$ ./prepare-shared-repos $HOME/repos.json $HOME/cache
+```
+
+5. Run `scripts/shared-repo-unpack` and point to the `repos.json` file
+   as well as the autobuilder's working directory, `-c` or the
+   `--cache-dir` argument can be set since we have already fetched the
+   repos in the previous step:
+
+```bash
+$ ./shared-repo-unpack -c $HOME/cache $HOME/repos.json $HOME/workdir poky-tiny
+```
+
+Now the `$HOME/workdir` should be created and `oe-init-build-env` should be
+sourced, which creates a `build` directory inside `$HOME/workdir`.
+
+6. Run `scripts/run-config` with the target to build, the build
+   directory (**Not the autobuilder working directory**), the branch
+   and the repo we are building on ([**The last two arguments does not
+   affect build**](##`scripts/run-config`)).
+
+```bash
+$ ./run-config poky-tiny $HOME/workdir/build master poky
+```
+
+7. If the build finished without error and is not published, the build
+   directory should be rsynced to the `git/trash` directory. If the
+   build failed, the `build` directory will be renamed to
+   `build-renamed` and stay inside the working directory.
+
+## Notes
+
+1. Instead of asking user for the `config.json` file, all the entry
+   point scripts referred to the file through function
+   `util.loadconfig()`, which first finds out the absolute path of the
+   current executing script (i.e. `scripts/prepare-shared-repos`) and
+   then append `../config.json` to it. This is probably not a good
+   idea.
+
+2. All the copy of the repos are done using `rsync`, `git clone
+   --reference or git clone --shared` may be better.
+
+3. Using `rsync` also caused `prepare-shared-repos` and
+   `shared-repo-unpack` script to do `git clone` and overwrite repo
+   content every time they are being called, even when the repo
+   content is exactly the same. We should probably only be doing `git
+   clone` for new repos and do `git checkout` or `git pull` for
+   existing repos.
+
+4. After a failed or published `scripts/run-config`, the build
+   directory is simply appended with `-renamed` to avoid distracting
+   other builds, this is probably not a good idea (Maybe append random
+   string or build ID type of string after each build directory?).
+
+5. The path specified for `git clone` in function `fetchgitrepo()` in
+   `scripts/utils.py` append `/` directly and causes the path to have
+   two `/` if 'abworkdir' is passed in with a `/` at the end
+   (e.g. `/home/workdir/` instead of `/home/workdir`), this does not
+   have any effect on `git clone` but maybe an extra parsing/formating
+   of the path is better.
+
+6. Feeding an incorrect target name into `scripts/shared-repo-unpack`
+   and `scripts/run-config` will not result in an error. The scripts
+   will instead use configurations in the `defaults` target and
+   `scripts/run-config` will simply skip the bitbake command and exit
+   normally with an exit code 0.
+
+7. `checkvnc` script tries to call `-kill` only on the first display,
+   there should be more flexibility on this.
-- 
2.24.0

