Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26940E00953; Wed,  5 Oct 2016 08:56:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF02AE0043B
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 08:56:31 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id 2so4181404vkb.1
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 08:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F2EfW25vTxa0peRZThnvg3NEAqtF3/7WoedhVjCqmXM=;
	b=oM5YQDLMTUuVW4nAMyCsLI58FkWaJ5X62FElHDM+vN93j4aKxegyjy+FCLLN015ykW
	jWZ/0GzD/PT7/YY9tzQ+9RkECLStfg7xx0fk5wpaki/bB8z0XC7dDrUx/vk0ahPmLm/f
	ttAdKEKxpSvcS8d4pD68OOaOu15LO3e07Ru7TBaGTdTKnbmsfzy6UjNUIBY/axRnyMui
	3zR26lkSZZtomXHoaCbTrZ6eqw6xEqpb6UK3TJgRjvzTNNf1a2IfTbXp9duxAzQnIIxu
	/wRIt1xYxcZcHLa70CfVwPDQqwFdNQEtHOgxUdQjdVN+YEW4xXxrePZfVzSNG1iVx0g4
	sh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F2EfW25vTxa0peRZThnvg3NEAqtF3/7WoedhVjCqmXM=;
	b=hO1srS7DXCqvReFjZRw9rZEz+Yufb4Ius8l72J9LR+W9HQ9gtTOsI1O9ufxU4/l+eC
	i5Cx7tlrEtILj++0uItIVCfpPUthnF9LdFPvfjYuT71534CAw98YnleAh+tAuztEMY+6
	T8ibpKvA6/CzrkiwW2UkKuUzLYfOIQfiqxOlxn812uGUv7rWi4vP0yiCvUpJbrTSSkqn
	c+oDHhe00vX8jHJIsFBCT6LFS9AfL+YPC1w0ApnFfGjEaIIbWCjacpYIOUc+EHPflvjD
	HDGYzYMb3NC/lZFOVzTV9xOibI0EpYvaShnzSWpeyd9juB0pQ7h85egO+uYVMp+39PUS
	isdg==
X-Gm-Message-State: AA6/9Rllu3CQizhows/CH/vfooyX36mt2VNHeWAqh6pZNCwhvHOIpuO/eqJRsZI3i9Mqw8DHZK9xWjneIDUDeA==
X-Received: by 10.31.180.132 with SMTP id d126mr3496899vkf.139.1475682990779; 
	Wed, 05 Oct 2016 08:56:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Wed, 5 Oct 2016 08:56:00 -0700 (PDT)
In-Reply-To: <39b967af-15c1-dd18-4490-92594aadf6fe@rogue-research.com>
References: <39b967af-15c1-dd18-4490-92594aadf6fe@rogue-research.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Oct 2016 08:56:00 -0700
Message-ID: <CAMKF1spJNdbFs4FL_cJ_+rDHkHwSywouiwZYXuTbZaEadn-_ZQ@mail.gmail.com>
To: Nicolas Bigaouette <nbigaouette@rogue-research.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 05 Oct 2016 15:56:35 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 5, 2016 at 7:20 AM, Nicolas Bigaouette
<nbigaouette@rogue-research.com> wrote:
> Hi all!
>
> I have an issue when trying to build two different images using conflicting
> packages.
>
> I need to package an application of mine (built using cmake) for our Yocto
> deployment. The recipe is already written and works well, except that I now
> need to build two different versions of that code.
>
> The code gets compiled to two different binaries (using `#ifdef`) depending
> on the cmake variable.
>
> Right now I can select which code path is compiled by adding either
> `EXTRA_OECMAKE += " -DCMAKE_BUILD_TYPE=Debug"` or EXTRA_OECMAKE += "
> -DCMAKE_BUILD_TYPE=Release" to my recipe.
>
> I believe I need a second recipe for a second package. I thus moved
> everything that is common to an `.inc` file and created two new recipes that
> `require` that new include file. The two new recipes have a suffix to
> identify which code path was compiled in (`mypackage-release` and
> `mypackage-debug`). I also added an `RCONFLICTS_${PN}` line to both recipes
> to indicate conflict with the one another.
>
> I can now build both packages using bitbake, but I cannot build two images
> (say `myimage-release` and `myimage-debug`) that will include only one of
> the package. I want `myimage-release` to include `mypackage-release` and
> `myimage-debug` should include `mypackage-debug` but I get conflicts between
> the two packages in the sysroot. Here's the log:
>
>> ERROR: The recipe mypackage-release is trying to install files into a
>> shared area when those files already exist. Those files and their manifest
>> location are:
>> /cache/tmp/sysroots/intel-corei7-64/lib/systemd/system/mypackage.service
>>  Matched in manifest-intel-corei7-64-mypackage-debug.populate_sysroot
>> Please verify which recipe should provide the above files.
>> The build has stopped as continuing in this scenario WILL break things, if
>> not now, possibly in the future (we've seen builds fail several months
>> later). If the system knew how to recover from this automatically it would
>> however there are several different scenarios which can result in this and
>> we don't know which one this is. It may be you have switched providers of
>> something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in
>> that case you need to execute the clean task for both recipes and it will
>> resolve this error. It may be you changed DISTRO_FEATURES from systemd to
>> udev or vice versa. Cleaning those recipes should again resolve this error
>> however switching DISTRO_FEATURES on an existing build directory is not
>> supported, you should really clean out tmp and rebuild (reusing sstate
>> should be safe). It could be the overlapping files detected are harmless in
>> which case adding them to SSTATE_DUPWHITELIST may be the correct solution.
>> It could also be your build is including two different conflicting versions
>> of things (e.g. bluez 4 and bluez 5 and the correct solution for that would
>> be to resolve the conflict. If in doubt, please ask on the mailing list,
>> sharing the error and filelist above.
>> ERROR: If the above message is too much, the simpler version is you're
>> advised to wipe out tmp and rebuild (reusing sstate is fine). That will
>> likely fix things in most (but not all) cases.
>> ERROR: Function failed: sstate_task_postfunc
>> ERROR: Logfile of failure stored in:
>> /cache/tmp/work/corei7-64-poky-linux/mypackage-release/1.4.99+gitAUTOINC+b34a28e86d+master-r0/temp/log.do_populate_sysroot.14559
>> NOTE: recipe mypackage-release-1.4.99+gitAUTOINC+b34a28e86d+master-r0:
>> task do_populate_sysroot: Failed
>> ERROR: Task 810
>> (/builds/yocto/poky/../meta-proj/recipes-proj/mypackage/mypackage-release_git.bb,
>> do_populate_sysroot) failed with exit code '1'
>
>
>
> Am I approaching the problem the right way? Is doing what I do the proper
> way to achieve what I want?
>

There are couple of ways you can look at it. There is global flag DEBUG_BUILD
to generate debuggable images. So you could utilize that flag in a single recipe
to control enabling/disabling debugging features of your app. This
will give better debugability to devs as well since you will have
other packages with debug friendly information.

Taking the approach you have described would work too, you have to ensure
that two recipes i.e. debug and release dont provide same PACKAGES
otherwise they end up with conflicts.

The issue you are seeing is because of a file which is being installed
into sysroot by both packages. so may be adding it to
SSTATE_DUPWHITELIST would be fine here. just add it to
SSTATE_DUPWHITELIST in recipe.

> NOTE: I build the image using `bitbake myimage-release myimage-debug`.
>
> Thank you!
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

