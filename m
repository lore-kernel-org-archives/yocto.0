Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EC87E0167C; Thu, 19 Jul 2018 00:22:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6178E00D13
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 00:22:24 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id v9-v6so6316280ljk.4
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 00:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=00E2dVjRpVxNKOUs7HZTcy2JHlvaK9qSw5vNEQ9+NqU=;
	b=f4lKqfaW/GNH/DMBD57ENbzO8tpHgTHCb5yIaKgrRhMS67HZAZ331FtbIyIPr7+RLl
	u9ZnDWJsBQfdMKnFqiDiCcpTON20lxFatBnf+tjhrr59Od/jLuJdzZ6YTmf/hYhcDLr4
	hgKdt1YKEJIVvRejc6JTTMNly2wFkpsZRSt0bjr056qrAOI4fKshp/aqicMRdL1+DzYx
	BnDGKtBMiMKlnWGIkb/yn/9+gNlEjIAR1arlk+bdxZ5/PSNjpai/ZBcqWuUp0wTyOMHm
	EO605jupH/Bi3Gep1f4pSOi7E/P5asI3c26tfGY1jSLKHB0hCo2ItAY7T7B7JCl90cDu
	qs6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=00E2dVjRpVxNKOUs7HZTcy2JHlvaK9qSw5vNEQ9+NqU=;
	b=BqG47+21H5OpRHzgGXoh45XounBafyUGwa+d0kd1L2frhQRI6VuDzDqRK2lzB+Ss4X
	iI1eldaPbYaug+8kEkPEbhCsyXGhRkR1SkvLGbADK1AK2fI3Ga9o2NrF451zAxf/kAgO
	o7PS8GbsOpMkPgm+dab5YYZECXk+O+J6pctlEVTJOSBDK7YGts4TDNN2NwPlqunP5xil
	Vms5m+SAtT63WUAHrLUKyS0r4GETRSkHiTR9oltokYxPhzpt6VsS6s9xUlZe1cvgC7Dx
	wbQj9OD0pqd8GO1+cYlI1vcuo8HO7tRQ94c6YsVj5lm74eb2CerzOHzwkhINrGqpRdyS
	mssw==
X-Gm-Message-State: AOUpUlHQh9aksX69H8j5etjxSuwiFtaXNQqwnNBbnyJcnXM/fxAJKWHI
	3ZHESvTy+QYEvJIimcWCzuw3HOS4xOv+u1omWfI=
X-Google-Smtp-Source: AAOMgpdcYv79VQR6Tj4fvGO45fUi9L4I5HnrsnyMBqkfJduhOPH8S25tFkN+MCHLiH3C/XPRybL5YDYJTEVUCaGe3Qg=
X-Received: by 2002:a2e:8616:: with SMTP id
	a22-v6mr7144179lji.43.1531984943790; 
	Thu, 19 Jul 2018 00:22:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 00:22:22
	-0700 (PDT)
In-Reply-To: <CAJ86T=WMJ8zE3ciNdwkSaThdYHBwC9QytGWHKXiVVbue+6kVXg@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
	<CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
	<CAJ86T=WMJ8zE3ciNdwkSaThdYHBwC9QytGWHKXiVVbue+6kVXg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Jul 2018 09:22:22 +0200
Message-ID: <CAGAf8LxZcL-8fyDCJ2+0e2GgUmCGufY91aAHUepb60FUfuW=7A@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Thu, 19 Jul 2018 07:22:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Andre,

Thank you for the tips.

Tried what you have suggested. I had some errors, again in
do_install(), then I read .log, and fixed the paths.

This is my recipe, important part of it, as of now:
_______

S = "${WORKDIR}/git"

inherit pkgconfig cmake
inherit systemd

EXTRA_OECMAKE += "-DCMAKE_BUILD_TYPE=Release"

INSANE_SKIP_${PN} = "ldflags"
INHIBIT_PACKAGE_STRIP = "1"
INHIBIT_SYSROOT_STRIP = "1"
SOLIBS = ".so"
FILES_SOLIBSDEV = ""

do_install () {
    install -d ${D}${libdir}
    install -m 0755 cannelloni ${D}${bindir}
    install -m 0755 ${WORKDIR}/build/libcannelloni-common.so ${D}${libdir}
}
_______

Where I modified install directories. ${libdir} is /usr/lib (instead
/usr/local/lib), all cool with this one as well.

(I guess, I could use LOCAL_LIB =  "/usr/local/lib", and then change
${libdir} with ${LOCAL_LIB})

I went further with bitbake. Now I am failing in do_package()
(inherited from default), with the following ERRORs:

ERROR: cannelloni-1.0-r0 do_package: QA Issue: cannelloni:
Files/directories were installed but not shipped in any package:
  /usr/bin
Please set FILES such that these items are packaged. Alternatively if
they are unneeded, avoid installing them or delete them within
do_install.
cannelloni: 1 installed and not shipped files. [installed-vs-shipped]
ERROR: cannelloni-1.0-r0 do_package: Fatal QA errors found, failing task.
ERROR: cannelloni-1.0-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in:
/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package.3501
ERROR: Task (/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:do_package)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 535 tasks of which 524 didn't need to
be rerun and 1 failed.

Any take on that?
_______

Mirza,

Actually, the recipe I am showing here is the GENIVI (the same you
pointed to), but heavily modified. :-)

And, yes, I am using latest sumo.

Thank you all,
Zoran
_______

On Wed, Jul 18, 2018 at 7:06 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Wed, Jul 18, 2018 at 7:04 AM, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>> Yep. Did it. Some symlink is missing (I guess, symlink to
>> /usr/local/lib/libcannelloni-common.so???
>>
>> Initialising tasks: 100%
>> |#############################################################################################################################################################|
>> Time: 0:00:00
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: cannelloni rdepends on
>> cannelloni-dev [dev-deps]
>> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: -dev package contains
>> non-symlink .so: cannelloni-dev path
>> '/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni-dev/usr/lib/libcannelloni-common.so'
>> [dev-elf]
>> ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Please
>> consider fixing them.
>> ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>> /home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.7896
>> ERROR: Task
>> (/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:do_package_qa)
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 539 tasks of which 532 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>> /home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:do_package_qa
>> Summary: There were 2 WARNING messages shown.
>> Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
>>
>> How I can add this symlink (!) to this recipe?
>
> The error says "-dev package contains non-symlink .so".
>
> Simply adding a symlink somewhere will not help. The fix is to ensure
> that libcannelloni-common.so gets packaged in the main run-time
> package (and not in the -dev package).
>
> Reading the section about non-versioned shared libraries here might help:
>
>   https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries

