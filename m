Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 177FCE00B3E; Mon, 19 Aug 2019 16:58:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEB0AE00935
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 16:58:05 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id m2so3017917qki.12
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 16:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=85OzlnTjPMYQAoPN2KubGddMcismjD1eAbYyaWMS8J0=;
	b=kHk9fuKijOdiSL1BS5bWbOsD5KGIwCr7sV27GXg2Hhn3vvCdkIDn7lBH69UbcQh4KI
	T3vou7e9ytIZ9G4NS26skXJVHtQovP7eHw9Of9JUgLjPpfz6a/pwwidYCwTEo8uOUEsw
	sSnOH1GmIuc27c9Oj93W4FOBoeDyI0RjVGJC6DlN3aehMKynpYOqLIBxzrp90zGr6ZFy
	O7eNZpQL8uyvydQfyktzRCIw5aWF8PS37npqOKEU1Mn4r9rcaMsS4hj6f1G36p0+A7GD
	LawYLficJxsbmVOXLKk2vnWFNUw3vGpxTm4a2KOcbwPC0FOzUZ48qubBnSUBFK8xyzj1
	8g7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=85OzlnTjPMYQAoPN2KubGddMcismjD1eAbYyaWMS8J0=;
	b=nvdJUwTEjjSWIcW+adIfuw7Jxfqcp5ig3NDCAyd/xgm/zbNB0ZY3FbAWDN4oEtpGjJ
	NH9ITjT3VVBPWBjRJfGFL9w9lbmiPz0E/wxl+dA4V5shGQDW8ShmigjzWfr+rF4Q5Usy
	q09a/US5i/FnaHooMvXaBRi3BjZQ/oRTpa34j7yI3seR8NtlN7JugDQnhksMFGBLzksL
	fL2+BdCU6wFhBzVDfuqoFVGt/SOMB8TniLvlyqbzVqQIvWzZmcrZHlW6i5iCVwbUA7Zr
	xNoE6x+FUX2pf2pBm2M585AdxCBhsIxldD4kfVEI0LqzcYS9LHNaZex7qBg96W3KXOAr
	lI2w==
X-Gm-Message-State: APjAAAWayrNjgA3YZ7YcmG8zy9+fWouUKppBVZr2d2k1q27yo7W+D8fu
	d486XxjHv8YZaRscLf3jKzhiCpTaoRmPO0e4KNE=
X-Google-Smtp-Source: APXvYqxyoIrdzjz6XHMFAMPvfSPkcw/3sH4MGAmTurE5akkgjkrCD/nq5Jjdckg/roC/VO4L5vfv8ryON4e8flWmodo=
X-Received: by 2002:a37:b245:: with SMTP id b66mr16281353qkf.337.1566259084942;
	Mon, 19 Aug 2019 16:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <CALqK1hxos-zw_cFOUFn+EVOVg=eYHQGvY3d1-y8qwUdeLWQTcw@mail.gmail.com>
In-Reply-To: <CALqK1hxos-zw_cFOUFn+EVOVg=eYHQGvY3d1-y8qwUdeLWQTcw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Aug 2019 16:57:39 -0700
Message-ID: <CAMKF1sr7MZ=hbiJJiR70TT+UzhotOYu9WLWYBA6hYS7BRCgkEw@mail.gmail.com>
To: Pushpendra singh <pushpendrasingh1801@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: quilt-native-0.64-r0 do_install: oe_runmake failed
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
X-List-Received-Date: Mon, 19 Aug 2019 23:58:07 -0000
Content-Type: text/plain; charset="UTF-8"

error return code 126 means  Command invoked cannot execute so my
guess is the script is not marked executable. so may be try something
like

do_install_prepend() {
  chmod +x config/install-sh
}

On Mon, Aug 19, 2019 at 2:37 AM Pushpendra singh
<pushpendrasingh1801@gmail.com> wrote:
>
> Hi,
>
> I am using Ubantu - 16.04 as an host machine
>
> Xilinx SDK Version : 2017.3
>
> Command : bitbake petalinux-image-minimal
>
> Getting below error
>
> Parsing recipes: 100% |#######################################################################################################################################################| Time: 0:09:00
> Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3256 targets, 229 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION = "1.32.0"
> BUILD_SYS = "x86_64-linux"
> NATIVELSBSTRING = "universal"
> TARGET_SYS = "aarch64-poky-linux"
> MACHINE = "zcu102-zynqmp"
> DISTRO = "poky"
> DISTRO_VERSION = "2.2.2"
> TUNE_FEATURES = "aarch64"
> TARGET_FPU = ""
> meta
> meta-poky = "rel-v2017.3:8506cec55de8950e89a4d3e786860f1086782587"
> meta-perl
> meta-systemd
> meta-gpe
> meta-python
> meta-efl
> meta-ruby
> meta-filesystems
> meta-gnome
> meta-multimedia
> meta-networking
> meta-webserver
> meta-xfce
> meta-initramfs
> meta-oe = "rel-v2017.3:a9887ac249b81fcac3007244d0c807c71b73acef"
> meta-linaro-toolchain = "rel-v2017.3:39860f6c7af0858981cc004bbe4f4c421f6be607"
> meta-qt5 = "rel-v2017.3:eec778bfb9a0b5494d593a2d7bb02c027b641835"
> meta-xilinx = "rel-v2017.3:04a45809e0bc42b35c88f8a08305d82fd25e97cf"
> meta-xilinx-tools = "rel-v2017.3:37eff634934efac72d3e2eabb7c4f8d0c8a36fbb"
> meta-petalinux = "rel-v2017.3:d74ceaef26e606c2761edfc3446d0ad3c3cc8b8e"
> meta-virtualization = "rel-v2017.3:cbfd4376d5e9d229f857151ffdfb57fbc6c0c40d"
> meta-openamp = "rel-v2017.3:cfeca8988418e4967f0d6df828d23a1540ae25a0"
>
> Initialising tasks: 100% |####################################################################################################################################################| Time: 0:00:21
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: quilt-native-0.64-r0 do_install: oe_runmake failed
> ERROR: quilt-native-0.64-r0 do_install: Function failed: do_install (log file is located at /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)
> ERROR: Logfile of failure stored in: /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836
> Log data follows:
> | DEBUG: Executing shell function do_install
> | NOTE: make -j 2 BUILD_ROOT=/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image install
> | ERROR: oe_runmake failed
> | config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/bin
> | rm -rf /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
> | /bin/bash: config/install-sh: Permission denied
> | Makefile:305: recipe for target 'install-main' failed
> | make: *** [install-main] Error 126
> | make: *** Waiting for unfinished jobs....
> | config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
> | /bin/bash: config/install-sh: Permission denied
> | Makefile:346: recipe for target 'install-compat1' failed
> | make: *** [install-compat1] Error 126
> | WARNING: /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/run.do_install.15836:1 exit 1 from 'exit 1'
> | ERROR: Function failed: do_install (log file is located at /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)
> ERROR: Task (/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 15 tasks of which 13 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

