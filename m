Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 975B1E008A4; Sat,  4 Jun 2016 08:27:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 485C8E008A4
	for <yocto@yoctoproject.org>; Sat,  4 Jun 2016 08:27:07 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id xk1so22639844pac.2
	for <yocto@yoctoproject.org>; Sat, 04 Jun 2016 08:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=8xySbJ072crYnuqLt700UJL21YsUViXqzjQzfS2C/6g=;
	b=1h152TVp5Q0Y4hn2GQZS8lFoTZfLuaXGR13bn7iJVZO2xdlfK06UFs1D2hGDrYbu5h
	8e7G1ffnY+AnY0aB01UQaDNOBTdUuR7gwp0qcS+gsxDc5ZvE5oYvwh0G1dJbkNVNZLq5
	xAXmkKNOzNmIbToX5mMuMnLkiaHMvoGtikfDGvqeOSuhmm14jiFMbSThBSGoo4JTUbpm
	gjy1tvlPsK5ZjyojmX6pwh3sWO61s04L0IyNddKVDDMwg30xhyg35ciuNv01HTscFoaR
	G/NsbpEFm0AsnUMZ8WnqJNIF5tY7ENSwhlrXyWdHtxfJ7SnO76p4gvscYKlLS1lZ2wP0
	Qbiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=8xySbJ072crYnuqLt700UJL21YsUViXqzjQzfS2C/6g=;
	b=NxSJ9rzVFHK9dVqXlKWAX0vPTgIOuui5cSvOWK5YozyP9fKdvTSkST62yY++pwNY59
	wq7xWf0RY4o33fqHArHPz0n15bka9vB5Te52RSwNMkQbKd4GlhzxO4mmbaRPjW5/O7x4
	PqjrZeC3W4JmClDKZVQPGWWiXhXurjEknzS2nRfGEE+usBR7obAUbgyQSVzUk9oTosTJ
	eExPvoh7K+0HF4+xDEIhgucJQxVnre5gIfJgdgGAwTVeLc1y8Hn21NI0QVS6vOJzhk5i
	XcdqsCWQc4JCkm1AXYLngc32Q+Cfk0pPxgvVknpQEQ1gJs16KdDO1mI380c2wZe3jRxK
	Lf1Q==
X-Gm-Message-State: ALyK8tKdCQwJiKTyTnrOM8swtBqWvDFmVNVTEh6VLiDtVLfrK25BRi9plmAMe+HGLHY/gy2G
X-Received: by 10.66.131.75 with SMTP id ok11mr12432813pab.87.1465054026562;
	Sat, 04 Jun 2016 08:27:06 -0700 (PDT)
Received: from [10.5.7.87] ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	xt1sm13704163pac.7.2016.06.04.08.27.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Jun 2016 08:27:05 -0700 (PDT)
To: Tracy Graydon <tracy.graydon@intel.com>, yocto-announce@yoctoproject.org, 
	yocto@yoctoproject.org
References: <57522A72.1010705@intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <5752F344.5050807@mvista.com>
Date: Sat, 4 Jun 2016 08:27:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <57522A72.1010705@intel.com>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.0.2 (Jethro 14.0.2) Released
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
X-List-Received-Date: Sat, 04 Jun 2016 15:27:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 06/03/2016 06:10 PM, Tracy Graydon wrote:
> Hello,,
Tracy,

>
> The latest release of the Yocto Project 2.0.2 (jethro-14.0.2) is now available
> for download at:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/poky-jethro-14.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.0.2/poky-fido-14.0.2.tar.bz2
>
> A gpg signed version of these release notes is available at:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/RELEASENOTES
>
> Full pass test report is available at:
>
> https://wiki.yoctoproject.org/wiki/WW23_-_2016-05-24_-_Full_Pass_2.0.2.rc1
is there an easy way to find the test results from the previous update 
releases and the initial version release?

>
> Thanks to everyone for all their hard work on this release!
+1

- armin
>
> Sincerely,
>
> Tracy Graydon
> Yocto Project
> Build and Release
>
> ------------------
> yocto-2.0.2 Errata
> --------------------
>
> Release Name: eclipse-poky-kepler-jethro-14.0.2
> Branch: kepler/jethro
> Tag: kepler/jethro-14.0.2
> Hash: cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
> md5: 1a542aecf32a80e546689a435bf53d11
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/eclipse-poky-kepler-jethro-14.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.0.2/eclipse-poky-kepler-jethro-14.0.2.tar.bz2
>
> Release Name: eclipse-poky-luna-jethro-14.0.2
> Branch: luna/jethro
> Tag: luna/jethro-14.0.2
> Hash: 45aa5c77523bdf051d548fff4305382942db2ebb
> md5: e8c251d3e469d260b6beea00b00dc614
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/eclipse-poky-luna-jethro-14.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.0.2/eclipse-poky-luna-jethro-14.0.2.tar.bz2
>
> Release Name: eclipse-poky-mars-jethro-14.0.2
> Branch: mars/jethro
> Tag: mars/jethro-14.0.2
> Hash: 1d179ddcbd1983bf7bcfe98efdcbb186bdccca4f
> md5: 14e7528f8b13bb9b31fdb2be3da0a3f1
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/eclipse-poky-mars-jethro-14.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.0.2/eclipse-poky-mars-jethro-14.0.2.tar.bz2
>
> Release Name: meta-qt3-jethro-14.0.2
> Branch: jethro
> Tag: jethro-14.0.2
> Hash: b08996efbfb3b26e62b608f34ebf5e671b36ec61
> md5: ffb7af0fef8e3c1f04e0a595848a102e
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/meta-qt3-jethro-14.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.0.2/meta-qt3-jethro-14.0.2.tar.bz2
>
> Release Name: poky-jethro-14.0.2
> Branch: jethro
> Tag: jethro-14.0.2
> Hash: dade0e68c645473d94e1b05020b064df40677e81
> md5: 854586669612e553f9cb59bf8c329a65
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.0.2/poky-jethro-14.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.0.2/poky-jethro-14.0.2.tar.bz2
>
>
> ---------------
>   Known Issues
> ---------------
> n/a
>
> ---------------
> Security Fixes
> ---------------
> gcc: Security Fix CVE-2016-4490
> gcc: Security fix CVE-2016-2226
> gcc: Security fix CVE-2016-4489
> gcc: Security fix CVE-2016-4488
> openssh: Security Fix CVE-2016-3115
> busybox: Security fix CVE-2016-2147
> busybox: Security Fix CVE-2016-2148
> libtiff: Security fix CVE-2015-8664 and 8683
> openssl: 1.0.2d -> 1.0.2h (mainly for CVEs)
> glibc: Fix CVE-2015-8778
> bind: CVE-2016-1285 CVE-2016-1286
> dhcp: CVE-2015-8605
> openssl: Security fix CVE-2016-0800
> wpa-supplicant: Fix CVE-2015-8041
>
> ---------------
> Fixes
> ---------------
> wic: insert local Python paths at front
> build-appliance-image: Update to jethro head revision
> poky.conf: Bump version for 2.0.2 jethro release
> build-appliance-image: Update to jethro head revision
> gdb: Backport patch to changes with AVX and MPX
> yocto-bsp: Set correct default branches and branches base for i386, qemu and x86_64 archs
> yocto-bsp: fix default kernel for x86_64 arch
> conf/distro/poky.conf: use example.com for connectivity check
> openssl: prevent ABI break from earlier jethro releases
> Revert "kernel/kernel-arch: Explicitly mapping between, i386/x86_64 and x86 for kernel ARCH"
> glew: Correct version in autotooling patches
> gdb: fix QA warning (uClibc)
> binutils: backport bug fix to the 2.25 branch for jethro
> boot-directdisk.bbclass: remove HDDIMG before create
> opkg: backport fix for double remove of packges
> license.bbclass: fix warnings when run in unprivileged "container" env
> tzdata: update to 2016d
> tzcode: update to 2016d
> tzcode: update to 2016c
> tzdata: update to 2016c
> tzcode: update to 2016b
> tzdata: update to 2016b
> yocto-project-qs: Updated the minnowboard example.
> poky.ent: Added lower-case distro name variable.
> lttng-tools: fix regression tests hang
> ncurses: update SRC_URI
> python3: fix building nativesdk-python3
> systemd-serialgetty: allow baud rate overriding
> boost: ensure boost to remain an empty metapackage
> systemd: chown hwdb.bin to root:root for do_rootfs
> cdrtools: update SRC_URI
> gcc-cross-canadian.inc: add INSANE_SKIP_ to avoid build warning
> systemd: fix segfault on shutdown
> nfs-utils: bugfix: adjust name of statd service unit
> busybox_git: Fix SRCREV
> busybox-1.23: Backport patch to fix zcip false-conflict
> bluez5: allow D-Bus to spawn obexd in systems without systemd
> ruby-native: Depend on openssl-native
> devtool: extract: update SRCTREECOVEREDTASKS for kernel
> devtool: extract: copy kernel config to srctree
> lib/oe/patch: Make GitApplyTree._applypatch() support read-only .git/hooks
> tune-corei7.inc: Fix PACKAGE_EXTRA_ARCHS for corei7-32
> license.bbclass: fix host contamination warnings for license files
> make 4.1: fix segfault when ttyname fails
> xorg-lib: allow native building without x11 DISTRO_FEATURES
> base: check for existing prefix when expanding names in PACKAGECONFIG
> documentation: Final bits to support a 2.0.1 doc release
> conf/local.conf.sample: comment out ASSUME_PROVIDED=libsdl-native
> os-release: put double-quotes around variable contents
> image_types_uboot: add cpio.gz.uboot to supported IMAGE_TYPES
> libsdl: expand PACKAGECONFIG and enable native builds
> image_types.bbclass: Rebuild when WICVARS change
> image_types: improve wks path specification
> wic: rawcopy: Copy source file to build folder
> ref-manual: Corrected Note for CentOS package requirements
> ref-manual: Updated the S variable description with feedback
> ref-manual: Updated the staging.bbclass description
> ref-manual: Updated the S variable description.
> dev-manual, ref-manual: Updated licensing text information.
> ref-manual: Added order information for conf file parsing.


