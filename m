Return-Path: <nbigaouette@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F020E00A07; Thu,  6 Oct 2016 13:05:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [68.67.54.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2E7AE0071C
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 13:05:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id E2ECB15F6051;
	Thu,  6 Oct 2016 16:05:19 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 9chzCj45Qu47; Thu,  6 Oct 2016 16:05:19 -0400 (EDT)
Received: from iris.rogue-research.com (iris.rogue-research.com [10.29.19.89])
	by mail.rogue-research.com (Postfix) with ESMTP id 4994415F604A;
	Thu,  6 Oct 2016 16:05:19 -0400 (EDT)
MIME-Version: 1.0
Date: Thu, 06 Oct 2016 16:05:19 -0400
From: nbigaouette <nbigaouette@rogue-research.com>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1spJNdbFs4FL_cJ_+rDHkHwSywouiwZYXuTbZaEadn-_ZQ@mail.gmail.com>
References: <39b967af-15c1-dd18-4490-92594aadf6fe@rogue-research.com>
	<CAMKF1spJNdbFs4FL_cJ_+rDHkHwSywouiwZYXuTbZaEadn-_ZQ@mail.gmail.com>
Message-ID: <7ec7a752bf767ebb338b1fa4e6ba1992@rogue-research.com>
X-Sender: nbigaouette@rogue-research.com
User-Agent: Roundcube Webmail/1.2.1
Cc: yocto@yoctoproject.org
Subject: Re: Splitting a recipe into two for two kind of compilation
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
X-List-Received-Date: Thu, 06 Oct 2016 20:05:24 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Thank you Khem, I was able to fix the conflict by adding multiple 
SSTATE_DUPWHITELIST in my `.inc` file.

I couldn't find documentation for SSTATE_DUPWHITELIST, so I'm posting 
the exact line I've used. The trick was to use STAGING_DIR_HOST to 
specify the path to the file.

For example, for the conflicting file:
> /cache/tmp/sysroots/intel-corei7-64/lib/systemd/system/mypackage.service
I added:
> SSTATE_DUPWHITELIST += 
> "${STAGING_DIR_HOST}${systemd_unitdir}/system/mypackage.service"

I can now build both `-release` and `-debug` packages and include them 
in two separate images. Once the distro is running on the hardware, I 
can simply switch between the two (by removing the first and installing 
the second).

Thanks!

Nicolas


On 2016-10-05 11:56, Khem Raj wrote:
> On Wed, Oct 5, 2016 at 7:20 AM, Nicolas Bigaouette
> <nbigaouette@rogue-research.com> wrote:
>> Hi all!
>> 
>> I have an issue when trying to build two different images using 
>> conflicting
>> packages.
>> 
>> I need to package an application of mine (built using cmake) for our 
>> Yocto
>> deployment. The recipe is already written and works well, except that 
>> I now
>> need to build two different versions of that code.
>> 
>> The code gets compiled to two different binaries (using `#ifdef`) 
>> depending
>> on the cmake variable.
>> 
>> Right now I can select which code path is compiled by adding either
>> `EXTRA_OECMAKE += " -DCMAKE_BUILD_TYPE=Debug"` or EXTRA_OECMAKE += "
>> -DCMAKE_BUILD_TYPE=Release" to my recipe.
>> 
>> I believe I need a second recipe for a second package. I thus moved
>> everything that is common to an `.inc` file and created two new 
>> recipes that
>> `require` that new include file. The two new recipes have a suffix to
>> identify which code path was compiled in (`mypackage-release` and
>> `mypackage-debug`). I also added an `RCONFLICTS_${PN}` line to both 
>> recipes
>> to indicate conflict with the one another.
>> 
>> I can now build both packages using bitbake, but I cannot build two 
>> images
>> (say `myimage-release` and `myimage-debug`) that will include only one 
>> of
>> the package. I want `myimage-release` to include `mypackage-release` 
>> and
>> `myimage-debug` should include `mypackage-debug` but I get conflicts 
>> between
>> the two packages in the sysroot. Here's the log:
>> 
>>> ERROR: The recipe mypackage-release is trying to install files into a
>>> shared area when those files already exist. Those files and their 
>>> manifest
>>> location are:
>>> /cache/tmp/sysroots/intel-corei7-64/lib/systemd/system/mypackage.service
>>>  Matched in manifest-intel-corei7-64-mypackage-debug.populate_sysroot
>>> Please verify which recipe should provide the above files.
>>> The build has stopped as continuing in this scenario WILL break 
>>> things, if
>>> not now, possibly in the future (we've seen builds fail several 
>>> months
>>> later). If the system knew how to recover from this automatically it 
>>> would
>>> however there are several different scenarios which can result in 
>>> this and
>>> we don't know which one this is. It may be you have switched 
>>> providers of
>>> something like virtual/kernel (e.g. from linux-yocto to 
>>> linux-yocto-dev), in
>>> that case you need to execute the clean task for both recipes and it 
>>> will
>>> resolve this error. It may be you changed DISTRO_FEATURES from 
>>> systemd to
>>> udev or vice versa. Cleaning those recipes should again resolve this 
>>> error
>>> however switching DISTRO_FEATURES on an existing build directory is 
>>> not
>>> supported, you should really clean out tmp and rebuild (reusing 
>>> sstate
>>> should be safe). It could be the overlapping files detected are 
>>> harmless in
>>> which case adding them to SSTATE_DUPWHITELIST may be the correct 
>>> solution.
>>> It could also be your build is including two different conflicting 
>>> versions
>>> of things (e.g. bluez 4 and bluez 5 and the correct solution for that 
>>> would
>>> be to resolve the conflict. If in doubt, please ask on the mailing 
>>> list,
>>> sharing the error and filelist above.
>>> ERROR: If the above message is too much, the simpler version is 
>>> you're
>>> advised to wipe out tmp and rebuild (reusing sstate is fine). That 
>>> will
>>> likely fix things in most (but not all) cases.
>>> ERROR: Function failed: sstate_task_postfunc
>>> ERROR: Logfile of failure stored in:
>>> /cache/tmp/work/corei7-64-poky-linux/mypackage-release/1.4.99+gitAUTOINC+b34a28e86d+master-r0/temp/log.do_populate_sysroot.14559
>>> NOTE: recipe 
>>> mypackage-release-1.4.99+gitAUTOINC+b34a28e86d+master-r0:
>>> task do_populate_sysroot: Failed
>>> ERROR: Task 810
>>> (/builds/yocto/poky/../meta-proj/recipes-proj/mypackage/mypackage-release_git.bb,
>>> do_populate_sysroot) failed with exit code '1'
>> 
>> 
>> 
>> Am I approaching the problem the right way? Is doing what I do the 
>> proper
>> way to achieve what I want?
>> 
> 
> There are couple of ways you can look at it. There is global flag 
> DEBUG_BUILD
> to generate debuggable images. So you could utilize that flag in a 
> single recipe
> to control enabling/disabling debugging features of your app. This
> will give better debugability to devs as well since you will have
> other packages with debug friendly information.
> 
> Taking the approach you have described would work too, you have to 
> ensure
> that two recipes i.e. debug and release dont provide same PACKAGES
> otherwise they end up with conflicts.
> 
> The issue you are seeing is because of a file which is being installed
> into sysroot by both packages. so may be adding it to
> SSTATE_DUPWHITELIST would be fine here. just add it to
> SSTATE_DUPWHITELIST in recipe.
> 
>> NOTE: I build the image using `bitbake myimage-release myimage-debug`.
>> 
>> Thank you!
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

