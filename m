Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1545AE00D12; Wed, 30 Jan 2019 05:42:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CFEE00D08
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 05:42:31 -0800 (PST)
Received: by mail-io1-f65.google.com with SMTP id g8so19414911iok.4
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 05:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JrHsU22TjEiTLvNZVqBsbO1lh8iP1OUyg5HB2xJtVLc=;
	b=q3eO5qgruTNx6NYc1GUzVlti4iZtMnkPtDS8CrwD4XBOqcFjOCwwa91pvhspVCy5d3
	9+Ai//ohPioIoNFX4e8H6yYh5+t56ZBKklkh0hObKn7JewwQIWBbagbiYDrxPj0C8HHM
	/jO6nWBvzmIhpqpfUfFuf955yeCZJd1/HgFjxQnT867dVSlDPRae8M6YPXwcgtkk3Lv1
	bkcs0d/8mlUkuZO2BPq2gnsOkWgxGDmPENL4OVbc8N+mXqfdfVJqQlsVIwvN8siN2goJ
	ibPIDv1njBLhfvsROZxtsmVkNXWfcA8jg679PntwCVzhQCapHWKJv/Z1CtEW0IBErdBZ
	6YJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JrHsU22TjEiTLvNZVqBsbO1lh8iP1OUyg5HB2xJtVLc=;
	b=BS60+4ygaAGA16y5klzz0yajd3AW6GbwE0+XXTGsJRn9RH0vy2ERldCJ5WLAFFXjV5
	yeF0MpUthN6HqtdBe2dHHk2V7caSoLrs8LfFEC8+SdEYNi/DYDKV+rlshScjDhaHS9zu
	W46r363GM749BiIocpsNjIhBY+9ssYIhsdqIoY7EdpASneifqGCHDEJd1bM0nUL4zlCZ
	psDNWMIyVfRUyOyob5Mnpt4kc+3unfuTe6Rab4doNcl2ZtImCBZKd3nWG9RMStQSl9v5
	llJjxiqOtjb/J0wAeH95nbCdrqt9o5Wi1KxR6fB2C2t6zgifyJSDRzz90qHXYzwNj8Zb
	fPsA==
X-Gm-Message-State: AJcUukccIjtPZ/yUJLVC4AK5vd0ABpeFmVylN7aXo+FRrGEmXGBILr+S
	FuEJuX7Xmk0hv+rHlAM3qiJT6vjlJTA/IkWYmrqPgQ==
X-Google-Smtp-Source: AHgI3IZszLbX+lUm1E6usYa8p68dMBYk7mUOW4k2VXkY2UmAJr9RaKgmCne0cENIVOmvbiGtuxPBnKxyC502R8zot+Q=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr16568207ioe.20.1548855751139;
	Wed, 30 Jan 2019 05:42:31 -0800 (PST)
MIME-Version: 1.0
References: <CAKPYHZ7vQ1a=+YiiacvrkoBoVSKs4FYoFtQ8WYnXcz72DFmv1w@mail.gmail.com>
In-Reply-To: <CAKPYHZ7vQ1a=+YiiacvrkoBoVSKs4FYoFtQ8WYnXcz72DFmv1w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 30 Jan 2019 13:42:20 +0000
Message-ID: <CAJTo0LYrt_KsnF0yp+bW_NGfyJ4mZTki2nrKthi-bqxYb2nHNA@mail.gmail.com>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: DEVTOOL doesn't upgrade glibc as expected
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Jan 2019 13:42:33 -0000
Content-Type: text/plain; charset="UTF-8"

No doubt devtool should handle this better, but upgrading glibc is
*not easy*.  If you can't do it manually then I wouldn't recommend
doing it at all.

A better start would be to copy the recipes from git for the version
you want, and then you'll be able to pick up all of the patches to
other recipes that you'll also need.

Ross

On Wed, 30 Jan 2019 at 13:35, Dhanush K.S <dhanush.ks@gmail.com> wrote:
>
> Hi,
>
> I'm currently using Yocto Sumo 2.5 release with the glibc version 2.27 and would like to upgrade it to v2.28.
> Using the devtool upgrade glibc -V 2.28 -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5 doesn't work as expected.
> In turn it creates the workspace/recipes/glibc_2.28.bb recipe with the contents and SRC_URI of v2.27.
>
> devtool upgrade glibc -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5
> NOTE: Starting bitbake server...
> NOTE: Creating workspace layer in /source/yocto/build_arm-cortex-a8/workspace
>
> NOTE: Extracting current version source...
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.37.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal-4.8"
> TARGET_SYS           = "arm-poky-linux-gnueabi"
> MACHINE              = "arm-cortex-a8"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.5"
> TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"
> TARGET_FPU           = "hard"
> meta
> meta-poky
> meta-yocto-bsp
> meta-oe              = "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
> workspace            = "<unknown>:<unknown>"
>
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to be rerun and all succeeded.
> NOTE: Writing buildhistory
> NOTE: Adding local source files to srctree...
> NOTE: Extracting upgraded version source...
> WARNING: Command 'git rebase 044c96f0d5595aeb0bb4e79355081c5a7f4faca5' failed:
> First, rewinding head to replay your work on top of it...
> Applying: sparc: Check PIC instead of SHARED in start.S [BZ #22638]
> error: Failed to merge in the changes.
> Using index info to reconstruct a base tree...
> M ChangeLog
> M sysdeps/sparc/sparc32/start.S
> M sysdeps/sparc/sparc64/start.S
> Falling back to patching base and 3-way merge...
> Auto-merging ChangeLog
> CONFLICT (content): Merge conflict in ChangeLog
> Patch failed at 0001 sparc: Check PIC instead of SHARED in start.S [BZ #22638]
> The copy of the patch that failed is found in: .git/rebase-apply/patch
>
> Resolve all conflicts manually, mark them as resolved with
> "git add/rm <conflicted_files>", then run "git rebase --continue".
> You can instead skip this commit: run "git rebase --skip".
> To abort and get back to the state before "git rebase", run "git rebase --abort".
>
> You will need to resolve conflicts in order to complete the upgrade.
> Traceback (most recent call last):
>   File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line 344, in <module>
>     ret = main()
>   File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line 331, in main
>     ret = args.func(args, config, basepath, workspace)
>   File "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py", line 559, in upgrade
>     rf, copied = _create_new_recipe(args.version, md5, sha256, args.srcrev, srcbranch, srcsubdir1, srcsubdir2, config.workspace_path, tinfoil, rd, license_diff, new_licenses)
>   File "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py", line 344, in _create_new_recipe
>     scheme, network, path, user, passwd, params = bb.fetch2.decodeurl(entry)
>   File "/source/yocto/poky-sumo-19.0.0/bitbake/lib/bb/fetch2/__init__.py", line 368, in decodeurl
>     raise MalformedUrl(url)
> bb.fetch2.MalformedUrl: The URL: '${GLIBC_GIT_URI};branch=${SRCBRANCH};name=glibc' is invalid and cannot be interpreted.
>
> Need help with this one.
>
> Thanks,
> Dhanush
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

