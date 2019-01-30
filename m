Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D60B6E00D17; Wed, 30 Jan 2019 12:10:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F07EBE00CB0
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 12:10:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0UKAtID005937
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Jan 2019 12:10:55 -0800 (PST)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.435.0;
	Wed, 30 Jan 2019 12:10:55 -0800
To: "Burton, Ross" <ross.burton@intel.com>,
	"Dhanush K.S" <dhanush.ks@gmail.com>
References: <CAKPYHZ7vQ1a=+YiiacvrkoBoVSKs4FYoFtQ8WYnXcz72DFmv1w@mail.gmail.com>
	<CAJTo0LYrt_KsnF0yp+bW_NGfyJ4mZTki2nrKthi-bqxYb2nHNA@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <b15b311e-6110-a87b-e084-541f096f31f8@windriver.com>
Date: Wed, 30 Jan 2019 15:10:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYrt_KsnF0yp+bW_NGfyJ4mZTki2nrKthi-bqxYb2nHNA@mail.gmail.com>
X-Originating-IP: [172.25.44.4]
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
X-List-Received-Date: Wed, 30 Jan 2019 20:10:59 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 1/30/19 8:42 AM, Burton, Ross wrote:
> No doubt devtool should handle this better, but upgrading glibc is
> *not easy*.  If you can't do it manually then I wouldn't recommend
> doing it at all.
> 
> A better start would be to copy the recipes from git for the version
> you want, and then you'll be able to pick up all of the patches to
> other recipes that you'll also need.

Have you seriously considered upgrading to Thud/2.6.x?

What feature(s) do you want that makes you feel that an
upgrade it to v2.28 is worth the effort? If you put the
work in to do the update, you'll have a YP-based combo that
no one else is using. While that may get you exactly what you want,
there will be costs involved in maintaining it so I'm curious
about your motivation and thoughts about maintenance.

../Randy

> 
> Ross
> 
> On Wed, 30 Jan 2019 at 13:35, Dhanush K.S <dhanush.ks@gmail.com> wrote:
>>
>> Hi,
>>
>> I'm currently using Yocto Sumo 2.5 release with the glibc version 2.27 and would like to upgrade it to v2.28.
>> Using the devtool upgrade glibc -V 2.28 -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5 doesn't work as expected.
>> In turn it creates the workspace/recipes/glibc_2.28.bb recipe with the contents and SRC_URI of v2.27.
>>
>> devtool upgrade glibc -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5
>> NOTE: Starting bitbake server...
>> NOTE: Creating workspace layer in /source/yocto/build_arm-cortex-a8/workspace
>>
>> NOTE: Extracting current version source...
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION           = "1.37.0"
>> BUILD_SYS            = "x86_64-linux"
>> NATIVELSBSTRING      = "universal-4.8"
>> TARGET_SYS           = "arm-poky-linux-gnueabi"
>> MACHINE              = "arm-cortex-a8"
>> DISTRO               = "poky"
>> DISTRO_VERSION       = "2.5"
>> TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"
>> TARGET_FPU           = "hard"
>> meta
>> meta-poky
>> meta-yocto-bsp
>> meta-oe              = "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
>> workspace            = "<unknown>:<unknown>"
>>
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to be rerun and all succeeded.
>> NOTE: Writing buildhistory
>> NOTE: Adding local source files to srctree...
>> NOTE: Extracting upgraded version source...
>> WARNING: Command 'git rebase 044c96f0d5595aeb0bb4e79355081c5a7f4faca5' failed:
>> First, rewinding head to replay your work on top of it...
>> Applying: sparc: Check PIC instead of SHARED in start.S [BZ #22638]
>> error: Failed to merge in the changes.
>> Using index info to reconstruct a base tree...
>> M ChangeLog
>> M sysdeps/sparc/sparc32/start.S
>> M sysdeps/sparc/sparc64/start.S
>> Falling back to patching base and 3-way merge...
>> Auto-merging ChangeLog
>> CONFLICT (content): Merge conflict in ChangeLog
>> Patch failed at 0001 sparc: Check PIC instead of SHARED in start.S [BZ #22638]
>> The copy of the patch that failed is found in: .git/rebase-apply/patch
>>
>> Resolve all conflicts manually, mark them as resolved with
>> "git add/rm <conflicted_files>", then run "git rebase --continue".
>> You can instead skip this commit: run "git rebase --skip".
>> To abort and get back to the state before "git rebase", run "git rebase --abort".
>>
>> You will need to resolve conflicts in order to complete the upgrade.
>> Traceback (most recent call last):
>>    File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line 344, in <module>
>>      ret = main()
>>    File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line 331, in main
>>      ret = args.func(args, config, basepath, workspace)
>>    File "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py", line 559, in upgrade
>>      rf, copied = _create_new_recipe(args.version, md5, sha256, args.srcrev, srcbranch, srcsubdir1, srcsubdir2, config.workspace_path, tinfoil, rd, license_diff, new_licenses)
>>    File "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py", line 344, in _create_new_recipe
>>      scheme, network, path, user, passwd, params = bb.fetch2.decodeurl(entry)
>>    File "/source/yocto/poky-sumo-19.0.0/bitbake/lib/bb/fetch2/__init__.py", line 368, in decodeurl
>>      raise MalformedUrl(url)
>> bb.fetch2.MalformedUrl: The URL: '${GLIBC_GIT_URI};branch=${SRCBRANCH};name=glibc' is invalid and cannot be interpreted.
>>
>> Need help with this one.
>>
>> Thanks,
>> Dhanush
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


-- 
# Randy MacLeod
# Wind River Linux

