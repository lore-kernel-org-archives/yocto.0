Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.13873.1576873595433924706
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Dec 2019 12:26:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qKt1DR0s;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id l127so5836099pfl.1
        for <yocto@lists.yoctoproject.org>; Fri, 20 Dec 2019 12:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=kFXPvZglUNzs2H3bq6CHd2TRA8clsI5RsydHANILoss=;
        b=qKt1DR0skPVOS5MTxjrQGRIE1njLg4u/XeFs2X0NFpqWrqbViAVdPWY/NO3h/iwWs4
         X2tnNl5VwN5usNmEtsxhNPyvvJriox2wRKXpH2IhQnm9klLeNK1XX/xPMngSViTrJ/qA
         r0UoH4Uoe/oqI3feWE4AWRrJ9XexmeoT3YQyEZ3/NnmQdY7WZ+Tlw5BHo7s9Y4I9+g3l
         NKiLF5EthBv9hB9sx0qu9LEn4biUfSJOwAbIP9FXInYuSw98q4l8rjDRfmJo+3PSc3G+
         klLxWWzvxFa5qT8sRzk/C/+9lA65rlkKcy8u4rKxbdrucQf4iSzAAnOpgGRlz2gG/8wI
         6dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=kFXPvZglUNzs2H3bq6CHd2TRA8clsI5RsydHANILoss=;
        b=N2C/GsUE4nzEgHyB35oMFgchNeHmIU9QhkEhUCnAi6gKKAEi1u5cbwDfCrtsdgPc44
         wHf4TdLc+GFGMv+r30Mrn6adEI1PL5Lxs91sruO68G09a/vzhitvmYBv5zayr31A8dTr
         D7XqbEsoDH4XgFQiBrMc/nSDJgbaDgHQJerNFO1OtauxYDvzeTngelAuW1TE97pIqfUD
         fnyTzZtLuwsD/wXIIZkUAyjrgNg6BEebl8dvyJYxaTtwiw8CIcKcegmWqY5e1hcgrEMP
         pbKkEBGEj1FvcVGWikTRqWBlhg1Ix87eGXVeGjd6LCbyQ/jipWy1xeaYkzoU1uMc7FBK
         Dpfg==
X-Gm-Message-State: APjAAAU2QQeyROfqOg0CSZVGAijOuFl32bsNUkm6R/KVMukeTPd6oqah
	Dj52kaBsAp+LmnVDjYwL85H6R+9hW4c=
X-Google-Smtp-Source: APXvYqzRCdmQgdLuPhEpJoGoHFtlaMUzvBB6JJP525KLxMudn2tgQtMpY0Nj4PfTL2KqMcSgx6w3KA==
X-Received: by 2002:a62:a11e:: with SMTP id b30mr17742207pff.149.1576873594667;
        Fri, 20 Dec 2019 12:26:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:1dfc:3910:e3ef:464b? ([2601:202:4180:a5c0:1dfc:3910:e3ef:464b])
        by smtp.gmail.com with ESMTPSA id g19sm14388489pfh.134.2019.12.20.12.26.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Dec 2019 12:26:34 -0800 (PST)
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] Add a detailed README file for yocto-autobuilder-helper scripts
To: Peiran <peiran1997@gmail.com>, yocto@lists.yoctoproject.org
References: <20191220201128.20373-1-peiran1997@gmail.com>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 mQINBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABtCFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT6JAj0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxC5Ag0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAGJAiUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <2f561dea-3149-42c5-e5a3-d2dd5c1e3aec@gmail.com>
Date: Fri, 20 Dec 2019 12:26:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220201128.20373-1-peiran1997@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------2E7973AF333938322DD72A90"
Content-Language: en-US

--------------2E7973AF333938322DD72A90
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 12/20/19 12:11 PM, Peiran wrote:
> The new README file adds information to build a
> target on a local machine, explains the scripts,
> parameters, and configuration files in more detail,
> and provides some notes on limitations and possible
> improvements that can be made to the autobuilder-helper
> scripts.
>
> Signed-off-by: Peiran Hong <peiran1997@gmail.com>

Thank you very much for taking the time to documenting this.

- armin
>  README.md | 317 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 317 insertions(+)
>  create mode 100644 README.md
>
> diff --git a/README.md b/README.md
> new file mode 100644
> index 0000000..b50061d
> --- /dev/null
> +++ b/README.md
> @@ -0,0 +1,317 @@
> +## Directories
> +
> +- `git/trash`: Directory for storing successfully finished and not
> +  published builds.
> +
> +- `git/mirror`: *Optional*, directory for storing repo mirrors. If
> +  repos are present in this directory, `git config` will do a local
> +  clone on the repo instead of fetching from remote.
> +
> +## Json File Containing Repository Data
> +
> +In order to build a target, user needs to create a json file to hold
> +the data of the repos that are required by the target (e.g. poky,
> +bitbake, meta-openembbeded, etc.). All available repo data can be
> +found in the `repo-defaults` entry in the `config.json` file. User can
> +then copy the desired repo data and create a new json file consisting
> +of only the repo data. An example of this would be:
> +
> +```json
> +{
> +	"poky" : {
> +		"url" : "git://git.yoctoproject.org/poky",
> +		"branch" : "master",
> +		"revision" : "HEAD",
> +		"checkout-dirname" : ".",
> +		"no-layer-add" : true,
> +		"call-init" : true
> +	},
> +	"bitbake" : {
> +		"url" : "git://git.openembedded.org/bitbake",
> +		"branch" : "master",
> +		"revision" : "HEAD",
> +		"no-layer-add" : true
> +	}
> +}
> +```
> +
> +In the subsequent sections, this file will be referred to as **`repos.json`**.
> +
> +## Entry Point Scripts and Usage
> +
> +### `scripts/prepare-shared-repos`
> +
> +This script will fetch repos specified by `repos.json` and cache them
> +in a custom directory. The cached repos can then be reused for future
> +builds.
> +
> +Args:
> +
> +1. `repojson`: The path to `repos.json` containing repository data
> +   explained in the previous section.
> +
> +2. `sharedsrcdir`: The directory where the repos will be cached.
> +
> +3. `-p`, `--publish-dir`: *Optional*, where to publish artefacts
> +   to. Fetched repos would be archived as tarball and stored in this
> +   directory. This procedure will not happen if `publish-dir` is not
> +   specified.
> +
> +### `scripts/shared-repo-unpack`
> +
> +This script first fetches repos specified by `repos.json` *as well as*
> +specified in the `NEEDREPOS` entry of the target in `config.json` to
> +the autobuilder working directory given by user, then calls another
> +script `scripts/layer-config`.
> +
> +`scripts/layer-config` will source `oe-init-build-env` file and
> +execute `bitbake-layers add-layer` to add necessary layers (the
> +`call-init` entry in `repos.json` for each repository will determine
> +if `oe-init-build-env` is sourced, the `no-layer-add` entry will
> +determine if `bitbake add-layer` should be run on this repo). Note
> +that if `NEEDREPOS` is not set for the specific build target,
> +`NEEDREPOS` in target `defaults` is checked and added. refer to
> +`getconfigvar()` function in `scripts/utils.py` for details.
> +
> +Args:
> +
> +1. `repojson`: Same as in `scripts/prepare-shared-repos`.
> +
> +2. `abworkdir`: The autobuilder working directory which will resemble
> +   the look of `poky` or `openembbeded-core` repo with build
> +   directory, `oe-init-build-env`, etc.
> +
> +3. `target`: The target name defined under the `overrides` entry in
> +   `config.json`.
> +
> +4. `-c`, `--cache-dir`: *Optional*, path to the directory caching the
> +   repos fetch by `scripts/prepare-shared-repos`. If this argument is
> +   not set, fetched repos will be stored in the `repos` directory
> +   inside `abworkdir`.
> +
> +5. `-p`, `--publish-dir`: *Optional*, same as in
> +   `scripts/prepare-shared-repos`.
> +
> +### `scripts/run-config`
> +
> +This script is the command responsible for sourcing the
> +`oe-init-build-env` file, preparing for and executing `bitbake` to
> +start the build, and running any sanity checks and extra commands
> +specified by the target.
> +
> +First, build history related tasks are done. Build history related
> +entries in `config.json` are checked. Specifically, it checks if the
> +`BUILDHISTORY` entry is set to `true` for the target, and if the
> +`reponame:branchname` argument passed into `run-config` is present in
> +the `BUILD_HISTORY_DIRECTPUSH` or the `BUILD_HISTORY_FORKPUSH` entry
> +in `config.json`. Then `scripts/buildhistory-init` script is executed
> +to fetch the build history repo specified in the `BUILD_HISTORY_REPO`
> +entry in `config.json`. However, the default build history repo given
> +in `config.json` requires permission to clone.
> +
> +Then for each `step` of the target, the following tasks are run in
> +sequence:
> +
> +1. `bitbake-layers addlayer` is run for all the layers present in the
> +   `ADDLAYER` entry of the target in `config.json`. Note that these
> +   layers are different from the ones added in the previous step by
> +   `scripts/layer-config`.
> +
> +2. `scripts/setup-config` generates an `auto.conf` under
> +   `abworkdir/build/conf` and writes to it the extra configs specified
> +   by the `extravars` entry of the target in `config.json`. It also
> +   generates a `sdk-extra.conf` file and writes to it the items
> +   specified by the `SDKEXTRAS` entry of the target in `config.json`.
> +
> +3. `bitbake` command is run on the `BBTARGET` specified in the current
> +   step with `-k` option.
> +
> +4. `SANITYTARGETS` of the step is run.
> +
> +5. `EXTRACMDS` and `EXTRAPLAINCMDS` of the step is run.
> +
> +6. Remove all layers added in reverse order using `bitbake-layers
> +   remove-layer`.
> +
> +After the build is finished, publish artefacts (copy generated images
> +and sdks to the user-defined publish directory. Refer to
> +`scripts/publish-artefacts`), collect build results (copy
> +`build_directory/tmp/log/oeqa/testresults.json` to the user-defined
> +results directory and also compare the current build with previous
> +ones. `buildhistory` is being run, refer to `scripts/collect-results`)
> +and send error report if and error occurred and the `SENDERRORS` entry
> +for the target is set in `config.json` (`send-error-report` is being
> +run, refer to `scripts/upload-error-reports`).
> +
> +Lastly, everything is cleaned up. If there is any error during the
> +build or the build is published (i.e. the `--publish-dir` argument is
> +specified), the build directory is renamed by appending `-renamed`
> +after the original build directory name and the script
> +exits. Otherwise, `janitor/clobberdir` script is run to try to move
> +the build directory to the trash directory set in `config.json` by the
> +`TRASH_DIR` entry.  `janitor/clobberdir` first checks if trash
> +directory is present and is valid, then it checks if the trash
> +directory is on the same file system with the build directory. If it
> +is, move the build directory to trash directory, else delete it.
> +
> +Args:
> +
> +1. `target`: Same as in `scripts/shared-repo-unpack`
> +
> +2. `builddir`: The build directory created by the sourcing of
> +   `oe-init-build-env`, **This directory is not the autobuilder
> +   working `abworkdir`**, but rather the `build` directory inside it,
> +   i.e. it is something like `abworkdir/build`.
> +
> +3. `branchname`: The branch the build is running on. However, **This
> +   does not set the branch the build is running**, it is only used for
> +   build history. To change the branch of the build, modify the
> +   `branch` entry in `repos.json`.
> +
> +4. `reponame`: The repo the build is running on. Again, **This does
> +   not set the repo the build is running**, it is only used for build
> +   history.
> +
> +5. `-s`, `--sstateprefix`: *Defaults to empty*, the directory prefix
> +   to publish sstate into.
> +
> +6. `-b`, `--buildappsrcrev`: *Defaults to empty*, a build appliance
> +   SRCREV to use.
> +
> +7. `-p`, `--publish-dir`: *Optional*, sets the directory
> +   `scripts/publish-artefacts` script will be copying to.
> +
> +8. `-r`, `--results-dir`: *Optional*, sets the directory
> +   `scripts/collect-results` script will be copying to.
> +
> +9. `-u`, `--build-url`: *Optional*, sets the url to link back to this
> +   build from the error report server.
> +
> +10. `--build-type`: *Defaults to `quick`*, can be either `quick` or
> +    `full`. For `quick` type, toolchain tests are skipped.
> +
> +11. `-t`, `--test`: *Defaults to `false`*, if set to `true`, only
> +    `scripts/setup-config` is executed and the commands are dry-run.
> +
> +12. `-q`, `--quietlogging`: *Defaults to `false`*, prevents the
> +    flushing of `bitbake` stdout output.
> +
> +## Steps to build a target
> +
> +Suppose we are now in the `scripts` directory. We want to build the
> +target `poky-tiny` and work in the directory `$HOME/workdir` and want
> +to cache all the repos in the directory `$HOME/cache` for future use.
> +
> +1. Modify the `BASE_HOMEDIR` in `config.json` to a valid directory for the build to happen. Here we use `$HOME`
> +
> +```json
> +{
> +    "BASE_HOMEDIR" : "/home/usr"
> +    ...
> +}
> +```
> +
> +2. Create required directory `git/trash`. Here we create it under `$HOME`:
> +
> +```bash
> +$ mkdir -p $HOME/git/trash
> +```
> +
> +3. Check the `NEEDREPOS` entry for corresponding build targets in
> +   `config.json` and create the `repos.json` file according to the
> +   [Json File Containing Repository
> +   Data](##{Json-File-Containing-Repository-Data}) section above. In
> +   this case `poky` and `bitbake` are needed, so the `repos.json` file
> +   should look like:
> +
> +```json
> +{
> +	"poky" : {
> +		"url" : "git://git.yoctoproject.org/poky",
> +		"branch" : "",
> +		"revision" : "HEAD",
> +		"checkout-dirname" : ".",
> +		"no-layer-add" : true,
> +		"call-init" : true
> +	},
> +	"bitbake" : {
> +		"url" : "git://git.openembedded.org/bitbake",
> +		"branch" : "master",
> +		"revision" : "HEAD",
> +		"no-layer-add" : true
> +	}
> +}
> +```
> +
> +4. Run `scripts/prepare-shared-repos` and point to the `repos.json`
> +   file as well as the cache directory. In this case we want:
> +
> +```bash
> +$ ./prepare-shared-repos $HOME/repos.json $HOME/cache
> +```
> +
> +5. Run `scripts/shared-repo-unpack` and point to the `repos.json` file
> +   as well as the autobuilder's working directory, `-c` or the
> +   `--cache-dir` argument can be set since we have already fetched the
> +   repos in the previous step:
> +
> +```bash
> +$ ./shared-repo-unpack -c $HOME/cache $HOME/repos.json $HOME/workdir poky-tiny
> +```
> +
> +Now the `$HOME/workdir` should be created and `oe-init-build-env` should be
> +sourced, which creates a `build` directory inside `$HOME/workdir`.
> +
> +6. Run `scripts/run-config` with the target to build, the build
> +   directory (**Not the autobuilder working directory**), the branch
> +   and the repo we are building on ([**The last two arguments does not
> +   affect build**](##`scripts/run-config`)).
> +
> +```bash
> +$ ./run-config poky-tiny $HOME/workdir/build master poky
> +```
> +
> +7. If the build finished without error and is not published, the build
> +   directory should be rsynced to the `git/trash` directory. If the
> +   build failed, the `build` directory will be renamed to
> +   `build-renamed` and stay inside the working directory.
> +
> +## Notes
> +
> +1. Instead of asking user for the `config.json` file, all the entry
> +   point scripts referred to the file through function
> +   `util.loadconfig()`, which first finds out the absolute path of the
> +   current executing script (i.e. `scripts/prepare-shared-repos`) and
> +   then append `../config.json` to it. This is probably not a good
> +   idea.
> +
> +2. All the copy of the repos are done using `rsync`, `git clone
> +   --reference or git clone --shared` may be better.
> +
> +3. Using `rsync` also caused `prepare-shared-repos` and
> +   `shared-repo-unpack` script to do `git clone` and overwrite repo
> +   content every time they are being called, even when the repo
> +   content is exactly the same. We should probably only be doing `git
> +   clone` for new repos and do `git checkout` or `git pull` for
> +   existing repos.
> +
> +4. After a failed or published `scripts/run-config`, the build
> +   directory is simply appended with `-renamed` to avoid distracting
> +   other builds, this is probably not a good idea (Maybe append random
> +   string or build ID type of string after each build directory?).
> +
> +5. The path specified for `git clone` in function `fetchgitrepo()` in
> +   `scripts/utils.py` append `/` directly and causes the path to have
> +   two `/` if 'abworkdir' is passed in with a `/` at the end
> +   (e.g. `/home/workdir/` instead of `/home/workdir`), this does not
> +   have any effect on `git clone` but maybe an extra parsing/formating
> +   of the path is better.
> +
> +6. Feeding an incorrect target name into `scripts/shared-repo-unpack`
> +   and `scripts/run-config` will not result in an error. The scripts
> +   will instead use configurations in the `defaults` target and
> +   `scripts/run-config` will simply skip the bitbake command and exit
> +   normally with an exit code 0.
> +
> +7. `checkvnc` script tries to call `-kill` only on the first display,
> +   there should be more flexibility on this.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47784): https://lists.yoctoproject.org/g/yocto/message/47784
> Mute This Topic: https://lists.yoctoproject.org/mt/68855528/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------2E7973AF333938322DD72A90
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/20/19 12:11 PM, Peiran wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20191220201128.20373-1-peiran1997@gmail.com">
      <pre class="moz-quote-pre" wrap="">The new README file adds information to build a
target on a local machine, explains the scripts,
parameters, and configuration files in more detail,
and provides some notes on limitations and possible
improvements that can be made to the autobuilder-helper
scripts.

Signed-off-by: Peiran Hong <a class="moz-txt-link-rfc2396E" href="mailto:peiran1997@gmail.com">&lt;peiran1997@gmail.com&gt;</a></pre>
    </blockquote>
    <br>
    Thank you very much for taking the time to documenting this.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:20191220201128.20373-1-peiran1997@gmail.com">
      <pre class="moz-quote-pre" wrap="">
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
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47784): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47784">https://lists.yoctoproject.org/g/yocto/message/47784</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/68855528/1024635">https://lists.yoctoproject.org/mt/68855528/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------2E7973AF333938322DD72A90--
