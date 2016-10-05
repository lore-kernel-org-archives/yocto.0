Return-Path: <nbigaouette@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57ABBE00C31; Wed,  5 Oct 2016 07:27:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [68.67.54.10 listed in list.dnswl.org]
X-Greylist: delayed 415 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Oct 2016 07:27:10 PDT
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BEBE00C2B
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 07:27:10 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 8459915E8DA6
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 10:20:14 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id nAoJ1sGvfXGw for <yocto@yoctoproject.org>;
	Wed,  5 Oct 2016 10:20:12 -0400 (EDT)
Received: from [10.29.19.226] (unknown [10.29.19.226])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 2054215E8D9F
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 10:20:12 -0400 (EDT)
To: yocto@yoctoproject.org
From: Nicolas Bigaouette <nbigaouette@rogue-research.com>
Message-ID: <39b967af-15c1-dd18-4490-92594aadf6fe@rogue-research.com>
Date: Wed, 5 Oct 2016 10:20:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
Subject: Splitting a recipe into two for two kind of compilation
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
X-List-Received-Date: Wed, 05 Oct 2016 14:27:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

I have an issue when trying to build two different images using 
conflicting packages.

I need to package an application of mine (built using cmake) for our 
Yocto deployment. The recipe is already written and works well, except 
that I now need to build two different versions of that code.

The code gets compiled to two different binaries (using `#ifdef`) 
depending on the cmake variable.

Right now I can select which code path is compiled by adding either 
`EXTRA_OECMAKE += " -DCMAKE_BUILD_TYPE=Debug"` or EXTRA_OECMAKE += " 
-DCMAKE_BUILD_TYPE=Release" to my recipe.

I believe I need a second recipe for a second package. I thus moved 
everything that is common to an `.inc` file and created two new recipes 
that `require` that new include file. The two new recipes have a suffix 
to identify which code path was compiled in (`mypackage-release` and 
`mypackage-debug`). I also added an `RCONFLICTS_${PN}` line to both 
recipes to indicate conflict with the one another.

I can now build both packages using bitbake, but I cannot build two 
images (say `myimage-release` and `myimage-debug`) that will include 
only one of the package. I want `myimage-release` to include 
`mypackage-release` and `myimage-debug` should include `mypackage-debug` 
but I get conflicts between the two packages in the sysroot. Here's the log:

> ERROR: The recipe mypackage-release is trying to install files into a 
> shared area when those files already exist. Those files and their 
> manifest location are:
> /cache/tmp/sysroots/intel-corei7-64/lib/systemd/system/mypackage.service
>  Matched in manifest-intel-corei7-64-mypackage-debug.populate_sysroot
> Please verify which recipe should provide the above files.
> The build has stopped as continuing in this scenario WILL break 
> things, if not now, possibly in the future (we've seen builds fail 
> several months later). If the system knew how to recover from this 
> automatically it would however there are several different scenarios 
> which can result in this and we don't know which one this is. It may 
> be you have switched providers of something like virtual/kernel (e.g. 
> from linux-yocto to linux-yocto-dev), in that case you need to execute 
> the clean task for both recipes and it will resolve this error. It may 
> be you changed DISTRO_FEATURES from systemd to udev or vice versa. 
> Cleaning those recipes should again resolve this error however 
> switching DISTRO_FEATURES on an existing build directory is not 
> supported, you should really clean out tmp and rebuild (reusing sstate 
> should be safe). It could be the overlapping files detected are 
> harmless in which case adding them to SSTATE_DUPWHITELIST may be the 
> correct solution. It could also be your build is including two 
> different conflicting versions of things (e.g. bluez 4 and bluez 5 and 
> the correct solution for that would be to resolve the conflict. If in 
> doubt, please ask on the mailing list, sharing the error and filelist 
> above.
> ERROR: If the above message is too much, the simpler version is you're 
> advised to wipe out tmp and rebuild (reusing sstate is fine). That 
> will likely fix things in most (but not all) cases.
> ERROR: Function failed: sstate_task_postfunc
> ERROR: Logfile of failure stored in: 
> /cache/tmp/work/corei7-64-poky-linux/mypackage-release/1.4.99+gitAUTOINC+b34a28e86d+master-r0/temp/log.do_populate_sysroot.14559
> NOTE: recipe mypackage-release-1.4.99+gitAUTOINC+b34a28e86d+master-r0: 
> task do_populate_sysroot: Failed
> ERROR: Task 810 
> (/builds/yocto/poky/../meta-proj/recipes-proj/mypackage/mypackage-release_git.bb, 
> do_populate_sysroot) failed with exit code '1'


Am I approaching the problem the right way? Is doing what I do the 
proper way to achieve what I want?

NOTE: I build the image using `bitbake myimage-release myimage-debug`.

Thank you!

