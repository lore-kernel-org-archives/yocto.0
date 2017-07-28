Return-Path: <afenkart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D62E00D16; Fri, 28 Jul 2017 06:20:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (afenkart[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F48E00CEF
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 06:20:39 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id k43so126641964uaf.3
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 06:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZdH0bfsbXaGbQ19B+uxVIwAdXI7cnt6HwqGQHD4hNzc=;
	b=akEZlEXtYdCY+UsYOuRp7ciFhVKI7FQMdwlPgzv7Nkt/CvVOGm7i2uQ9pnn5uBaicZ
	o+dABu1pgpDA/p0N2dMrpdkkoJYCUcKOUUc1I+WoFiRezKwi9eQTZb+yYojECuNoIL6m
	4hSnOBiiby1yM5g+ZqbXd6DCOoZ1PANQXcrOtB4L/wzzVI8UAvbG+6KN8V9kxUHj3x0d
	vs3vDOg8K42Vspt01SQUQW2CcEzKxa/41G2IQ56ZDn1W7gFL0eBtf1GY3DqRUiMLN1ac
	S0hLHjem9wgLknNogtbkiQR1hS/k0EVUa1AQ05J7/WZxkzZ+v/QnsVgRT3FnOjQQKU6m
	CqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZdH0bfsbXaGbQ19B+uxVIwAdXI7cnt6HwqGQHD4hNzc=;
	b=HB0PFXBvcfGs8OS6vQf1ECrLiXM0cIv4RN+XH7hfa76GnSWJj4YCgpDMdb8OmZwRif
	yA2u/YGNM5uxUKu3AOtf3VtY4SGdaxRTnldc4xgv8fJhk/YDgBR4sYoXSot22cRmRexm
	2r8UJz17FnVYFXBMXG1Q+O3DKlTRF+kIVP6YgVgzjso4Og+P+MJ6lf66KtBitXyXgOho
	v3pUQZRSs1/h0Ikp70PrB0p3EVkEf+YCZRhTLp6/dL6yuEveUKvzj0JsYA41r5D3HCAt
	ip67Q9VUrMuX6QTGWBfXIE3f8JTuzIQiM7q79DjS51qHtUu1CcTTROWtO9mjH1sUFjFD
	LyKA==
X-Gm-Message-State: AIVw112qHe33quSssMs962AWk+rdJNWTlRm1L6HLDIrv5goeB22ODtkI
	IHXZOIrboX7pFWJYt9r+qlQXIKb7KjMJ
X-Received: by 10.31.83.193 with SMTP id h184mr5181640vkb.17.1501248039245;
	Fri, 28 Jul 2017 06:20:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.13.209 with HTTP; Fri, 28 Jul 2017 06:20:38 -0700 (PDT)
In-Reply-To: <990d598a-da7c-f568-96a0-d360902baf7e@denx.de>
References: <CALtMJEDs_oFkifuHe8gahxS25UEqP-gKCLfkH3HbZqsB8T8DPQ@mail.gmail.com>
	<990d598a-da7c-f568-96a0-d360902baf7e@denx.de>
From: Andreas Fenkart <afenkart@gmail.com>
Date: Fri, 28 Jul 2017 15:20:38 +0200
Message-ID: <CALtMJEBbYsq5SGZOD+zof5viTJUcK_WqLVOxjex7s0oBXipMVA@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: swupate.bblcass dependencies not triggering rebuild
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
X-List-Received-Date: Fri, 28 Jul 2017 13:20:41 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Stefano,

2017-06-14 10:32 GMT+02:00 Stefano Babic <sbabic@denx.de>:
> Hi Andreas,
>
> On 13/06/2017 14:18, Andreas Fenkart wrote:
>> Hi list,
>>
>> I want to create a swupdate file, which is a cpio file with rootfs and
>> some metadata to control software update. My problem is, that it is not
>> rebuilt everytime the rootfs changes. I checked in the cooker log.
>>
>> NOTE: recipe swupdate-image-1.0-r4: task do_populate_sysroot_setscene: Succeeded
>> NOTE: Running noexec task 5475 of 5478 (ID: 27,
>> meta-devel/recipes-core/images/swupdate-image.bb, do_build)
>>
>> I generated the dot files with bitbake -g swupdate, and while do_swuimage
>> has to run before do_build, do_build does not depend directly on do_swuimage:
>>
>> swupdate-image.do_createlink -> swupdate-image.do_swuimage
>> swupdate-image.do_install -> swupdate-image.do_createlink
>> swupdate-image.do_populate_sysroot -> swupdate-image.do_install
>> swupdate-image.do_build" -> swupdate-image.do_populate_sysroot
>>
>> $ bitbake-diffsigs -t swupdate-image do_build
>> ERROR: No sigdata files found matching swupdate-image do_build
>>
>> $ bitbake-diffsigs -t swupdate-image do_populate_sysroot
>> Unable to find matching sigdata for ....
>> recipes-core/images/swupdate-image.bb.do_install with hashes
>> c0bc8039e8dbe8d70939dd3db2ceb922 or e9d7b242613f323d4d6adff3d6d4881b
>>
>> $ bitbake-diffsigs -t swupdate-image do_install
>> ERROR: No sigdata files found matching swupdate-image do_install
>>
>> $ bitbake-diffsigs -t swupdate-image do_createlink
>> Hash for dependent task imagesswupdate-image.bb.do_swuimage changed
>> from cec64d7e21b0375ff641427d5d631254 to
>> 45510576a402839f4c4d4ac9b9eff578
>>   Hash for dependent task imagesrootfs.bb.do_build changed from
>> 876eb436b444f84efd355c0294b871bf to fabbabdd000427cdf5e721b59784d5c4
>>   Unable to find matching sigdata for
>> meta-devel/recipes-core/images/rootfs.bb.do_build with hashes
>> 876eb436b444f84efd355c0294b871bf or fabbabdd000427cdf5e721b59784d5c4
>>
>> The dependency on rootfs is added here:
>> https://github.com/sbabic/meta-swupdate/blob/master/classes/swupdate.bbclass#L64
>> with IMAGE_DEPENDS="rootfs"
>>
>> Is it correct to 'depend' on :do_build? It seems rather uncommon.
>
> I think that the first attempt to set dependency here was with
> do_rootfs, but this just works for rootfs, not for all other images. In
> the history. commit b2f47aa9de53a98380b8677eb9e078db608b0ad3 changed
> from do_populatesysroot to do_build because it was noted that it runs
> too early.
>
> I am not sure if I have this issue, maybe it was sporadic. I wrote a
> patch, really to fix an issue in the transition morty --> pyro, where I
> changed the dependency as:
> diff --git a/classes/swupdate.bbclass b/classes/swupdate.bbclass
> index 44e4546..511f147 100644
> --- a/classes/swupdate.bbclass
> +++ b/classes/swupdate.bbclass
> @@ -61,16 +61,23 @@ def swupdate_getdepends(d):
>
>      depstr = ""
>      for dep in deps:
> -        depstr += " " + dep + ":do_build"
> +        if dep.find(":") != -1:
> +            deptask = ""
> +        else:
> +            if (dep == "virtual/kernel") or (dep == "virtual/bootloader"):
> +                deptask = ":do_deploy"
> +            else:
> +                deptask = ":do_image_complete"
> +
> +        depstr += " " + dep + deptask
> +
>      return depstr
>
>
> So "do_image_complete" instead of "do_build", but I have to check
> explicitely for kernel and bootloader because they have no
> do_image_complete. But I do not know if this can be a correct solution.
>
>>
>> I checked the latest swupdate-image.do_populate siginfo in sstate, which is
>> pretty large, so adding just the task-dependencies:
>> ..
>> Tasks this task depends on:
>> ['..-devel/recipes-core/images/swupdate-image.bb.do_install']
>> This task depends on the checksums of files: []
>> Hash for dependent task
>> ./meta-devel/recipes-core/images/swupdate-image.bb.do_install is
>> e9d7b242613f323d4d6adff3d6d4881b
>> Computed Hash is d8b1d389351c25e0c4a519fb8fe9ddda
>> ..
>>
>> Which makes me wonder, since bitbake-diffsig said do_install has no sigdata
>>
>
> We have do_install[noexec] = "1" in the class - is this the reason ?

I removed all the 'noexec' stamps from swupdate.bbclass, but still the
cooker.log says, that none of the swupdate-image tasks needs
execution:

NOTE: Setscene stamp current for task
5(../recipes-core/images/swupdate-image.bb, do_populate_sysroot)
NOTE: Setscene stamp current for task
6(../recipes-core/images/swupdate-image.bb, do_populate_lic)
NOTE: Setscene stamp current for task
7(../recipes-core/images/swupdate-image.bb, do_packagedata)
NOTE: Setscene stamp current for task
8(../recipes-core/images/swupdate-image.bb, do_package_qa)
NOTE: Setscene stamp current for task
9(../recipes-core/images/swupdate-image.bb, do_package)

The funny thing is, that bitbake swupdate-image actually triggers a built
of the rootfs. But the task do_swuimage is not even mentioned in the
cooker.log! Now only do_swuimage depends on rootfs:do_build, so
how can bitbake built a dependency for task it's not running?

This is yocto-2.0.2, quite old, but I'd expect this to work on that
release still

>> I must admit that I feel pretty lost here.
>
> Best regards,
> Stefano

