Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BF76E00B43; Wed, 13 Feb 2019 08:36:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774FCE00AB0
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 08:36:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1DGZDcO015868
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Feb 2019 08:35:54 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.435.0;
	Wed, 13 Feb 2019 08:35:22 -0800
To: "Dhanush K.S" <dhanush.ks@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <CAKPYHZ7vQ1a=+YiiacvrkoBoVSKs4FYoFtQ8WYnXcz72DFmv1w@mail.gmail.com>
	<CAJTo0LYrt_KsnF0yp+bW_NGfyJ4mZTki2nrKthi-bqxYb2nHNA@mail.gmail.com>
	<b15b311e-6110-a87b-e084-541f096f31f8@windriver.com>
	<CAKPYHZ4k_g2U1Md5MmdmCwdR7L2-J0ZyRrNcArN+hrbgkn8jQw@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <0e4d769f-5213-12ef-061f-9e9a4d4d1dba@windriver.com>
Date: Wed, 13 Feb 2019 11:35:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAKPYHZ4k_g2U1Md5MmdmCwdR7L2-J0ZyRrNcArN+hrbgkn8jQw@mail.gmail.com>
X-Originating-IP: [172.25.44.4]
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
X-List-Received-Date: Wed, 13 Feb 2019 16:36:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Adding the list back.

On 1/31/19 12:56 PM, Dhanush K.S wrote:
> Hi Randy,
(back from vacation).
> 
> No. Not actually, as we upgraded to Sumo recently and would probably 
> jump straight to Warrior if need be.

Warrior is still in development so keep that in mind.

> Wanted to get the time_t functionality for 32 bit arch due to the 
> current Y2038 bug. But it seems like GNU has postponed it to future release.

As you can see be reading the Jan 2019 article:
    https://lwn.net/Articles/776435/
the Linux Y2038 work is ongoing. Even once it's 'finished', it's
unlikely that you won't have to upgrade your deployed systems to
fix one or two defects so I'm confused about why you seem need/want
this right now rather than in months or a year or more.

> 
> Yeah! Would agree with having a combo that no one probably would be 
> having. But what I don't get is why the incompatibility with of v2.28 
> with Yocto 2.5? Is it inherent with all  yocto releases or something to 
> do just with sumo?

I don't work on the glibc upgrades so I'm not sure.
There's nothing unique going on in Yocto but rather
changing glibc versions is often lots of work that requires
both broad and deep OS knowledge.

../Randy

> 
> Look forward to your views on this.
> Thanks!
> 
> 
> On Wed, 30 Jan 2019 at 21:10, Randy MacLeod <randy.macleod@windriver.com 
> <mailto:randy.macleod@windriver.com>> wrote:
> 
>     On 1/30/19 8:42 AM, Burton, Ross wrote:
>      > No doubt devtool should handle this better, but upgrading glibc is
>      > *not easy*.  If you can't do it manually then I wouldn't recommend
>      > doing it at all.
>      >
>      > A better start would be to copy the recipes from git for the version
>      > you want, and then you'll be able to pick up all of the patches to
>      > other recipes that you'll also need.
> 
>     Have you seriously considered upgrading to Thud/2.6.x?
> 
>     What feature(s) do you want that makes you feel that an
>     upgrade it to v2.28 is worth the effort? If you put the
>     work in to do the update, you'll have a YP-based combo that
>     no one else is using. While that may get you exactly what you want,
>     there will be costs involved in maintaining it so I'm curious
>     about your motivation and thoughts about maintenance.
> 
>     ../Randy
> 
>      >
>      > Ross
>      >
>      > On Wed, 30 Jan 2019 at 13:35, Dhanush K.S <dhanush.ks@gmail.com
>     <mailto:dhanush.ks@gmail.com>> wrote:
>      >>
>      >> Hi,
>      >>
>      >> I'm currently using Yocto Sumo 2.5 release with the glibc
>     version 2.27 and would like to upgrade it to v2.28.
>      >> Using the devtool upgrade glibc -V 2.28 -S
>     044c96f0d5595aeb0bb4e79355081c5a7f4faca5 doesn't work as expected.
>      >> In turn it creates the workspace/recipes/glibc_2.28.bb
>     <http://glibc_2.28.bb> recipe with the contents and SRC_URI of v2.27.
>      >>
>      >> devtool upgrade glibc -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5
>      >> NOTE: Starting bitbake server...
>      >> NOTE: Creating workspace layer in
>     /source/yocto/build_arm-cortex-a8/workspace
>      >>
>      >> NOTE: Extracting current version source...
>      >> NOTE: Resolving any missing task queue dependencies
>      >>
>      >> Build Configuration:
>      >> BB_VERSION           = "1.37.0"
>      >> BUILD_SYS            = "x86_64-linux"
>      >> NATIVELSBSTRING      = "universal-4.8"
>      >> TARGET_SYS           = "arm-poky-linux-gnueabi"
>      >> MACHINE              = "arm-cortex-a8"
>      >> DISTRO               = "poky"
>      >> DISTRO_VERSION       = "2.5"
>      >> TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard
>     cortexa8"
>      >> TARGET_FPU           = "hard"
>      >> meta
>      >> meta-poky
>      >> meta-yocto-bsp
>      >> meta-oe              =
>     "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
>      >> workspace            = "<unknown>:<unknown>"
>      >>
>      >> NOTE: Executing RunQueue Tasks
>      >> NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to
>     be rerun and all succeeded.
>      >> NOTE: Writing buildhistory
>      >> NOTE: Adding local source files to srctree...
>      >> NOTE: Extracting upgraded version source...
>      >> WARNING: Command 'git rebase
>     044c96f0d5595aeb0bb4e79355081c5a7f4faca5' failed:
>      >> First, rewinding head to replay your work on top of it...
>      >> Applying: sparc: Check PIC instead of SHARED in start.S [BZ #22638]
>      >> error: Failed to merge in the changes.
>      >> Using index info to reconstruct a base tree...
>      >> M ChangeLog
>      >> M sysdeps/sparc/sparc32/start.S
>      >> M sysdeps/sparc/sparc64/start.S
>      >> Falling back to patching base and 3-way merge...
>      >> Auto-merging ChangeLog
>      >> CONFLICT (content): Merge conflict in ChangeLog
>      >> Patch failed at 0001 sparc: Check PIC instead of SHARED in
>     start.S [BZ #22638]
>      >> The copy of the patch that failed is found in:
>     .git/rebase-apply/patch
>      >>
>      >> Resolve all conflicts manually, mark them as resolved with
>      >> "git add/rm <conflicted_files>", then run "git rebase --continue".
>      >> You can instead skip this commit: run "git rebase --skip".
>      >> To abort and get back to the state before "git rebase", run "git
>     rebase --abort".
>      >>
>      >> You will need to resolve conflicts in order to complete the upgrade.
>      >> Traceback (most recent call last):
>      >>    File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line
>     344, in <module>
>      >>      ret = main()
>      >>    File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line
>     331, in main
>      >>      ret = args.func(args, config, basepath, workspace)
>      >>    File
>     "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py",
>     line 559, in upgrade
>      >>      rf, copied = _create_new_recipe(args.version, md5, sha256,
>     args.srcrev, srcbranch, srcsubdir1, srcsubdir2,
>     config.workspace_path, tinfoil, rd, license_diff, new_licenses)
>      >>    File
>     "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py",
>     line 344, in _create_new_recipe
>      >>      scheme, network, path, user, passwd, params =
>     bb.fetch2.decodeurl(entry)
>      >>    File
>     "/source/yocto/poky-sumo-19.0.0/bitbake/lib/bb/fetch2/__init__.py",
>     line 368, in decodeurl
>      >>      raise MalformedUrl(url)
>      >> bb.fetch2.MalformedUrl: The URL:
>     '${GLIBC_GIT_URI};branch=${SRCBRANCH};name=glibc' is invalid and
>     cannot be interpreted.
>      >>
>      >> Need help with this one.
>      >>
>      >> Thanks,
>      >> Dhanush
>      >> --
>      >> _______________________________________________
>      >> yocto mailing list
>      >> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>      >> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
>     -- 
>     # Randy MacLeod
>     # Wind River Linux
> 


-- 
# Randy MacLeod
# Wind River Linux

