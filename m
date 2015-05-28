Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14855E009CC; Thu, 28 May 2015 07:30:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vn0-f43.google.com (mail-vn0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB170E009EC
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 07:30:49 -0700 (PDT)
Received: by vnbf190 with SMTP id f190so4778765vnb.0
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 07:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=alOUHI+nbSixWca3VcUeXY825ce9OcYF06t8jYny9vw=;
	b=CZbVK0uhY4LfFSOROoaQGnzOxLnLOSjI4etlSKOPmveMfm4WRNxIZ+xz//A8nUZJlF
	OlJ0WFCF5hz5/EEi5+pUHjVHPPIYMmrpoiLXAM8WM2TwRXJC0icAJEuMy6B83pYg3nWi
	XqgNptI+f0wJlSmX2wrA4QckECmaeG3wqieXRWG2+fSutcZe+d1dE9fjz4wvOqiXCclp
	y+3gzFAwQvKRaHju/x2IkWgnePPMOiQyXa7crXp36kDsZFUCUC9iEL0Ni6QzNvT9h84R
	VU19BOzlMs1XtDjTi6WY4M96NqSNBPV/uDTmDo3GAROr+BTddJtGEyqbRJN2iBquYcYv
	3LHA==
X-Gm-Message-State: ALoCoQk6gSgb2FHcWHt46UXW/bvpuRyjyJD1P62tkZfpRrbmsOXRuxONfVxHA6nM41WB8mP7KKDY
MIME-Version: 1.0
X-Received: by 10.52.142.115 with SMTP id rv19mr2576349vdb.78.1432823449044;
	Thu, 28 May 2015 07:30:49 -0700 (PDT)
Received: by 10.52.233.105 with HTTP; Thu, 28 May 2015 07:30:48 -0700 (PDT)
Date: Thu, 28 May 2015 15:30:48 +0100
Message-ID: <CAPhnLPAeAN1jDGbRs82=bvV270Kg4g4KDjNQEW7uz+7BN+_WZg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.6.3 (daisy 11.0.3) released
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
X-List-Received-Date: Thu, 28 May 2015 14:30:54 -0000
Content-Type: text/plain; charset=UTF-8

All,

We are pleased to announce the third point release for Yocto Project
"daisy" 1.6.3.

This release contains 39 patches including 10 patches for known CVEs.

This release is available for download at:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.3/poky-daisy-11.0.3.tar.bz2

or

http://mirrors.kernel.org/yocto/yocto/yocto-1.6.3/poky-daisy-11.0.3.tar.bz2

Thanks to everyone for all your work and contributions.

Elizabeth Flanagan
Yocto Project
Release Engineering

--------------------
yocto-1.6.3 Errata
--------------------

Release Name: poky-daisy-11.0.3
Branch: daisy
Tag: daisy-11.0.3
Hash: b2ba41b57550aa912da93b4aef789ff562a67fce
md5sum: 64f0ab2f5110203e9e33eb879fe0d6df
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.3/poky-daisy-11.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.3/poky-daisy-11.0.3.tar.bz2

Release Name: eclipse-poky-juno-daisy-11.0.3
Branch: daisy
Tag: daisy-11.0.3
Hash: f5e33fc79a3f77b0013c005019b72430d8998e8b
md5sum: 57eda33458c89db951ac818cb85bc83f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.3/eclipse-poky-juno-daisy-11.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.3/eclipse-poky-juno-daisy-11.0.3.tar.bz2

Release Name: eclipse-poky-kepler-daisy-11.0.3
Branch: daisy
Tag: daisy-11.0.3
Hash: 0ee2b82c0e8ce355bca0601aa63a0d8758aaf199
md5sum: f5379af02f04d6a1a871b139fa428f76
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.3/eclipse-poky-kepler-daisy-11.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.3/eclipse-poky-kepler-daisy-11.0.3.tar.bz2

Release Name: meta-qt3-daisy-11.0.3
Branch: daisy
Tag: daisy-11.0.3
Hash: 3016129d90b7ac8517a5227d819f10ad417b5b45
md5sum: 832691ad5cfeef2be6e037eb4ca70343
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.3/meta-qt3-daisy-11.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.3/meta-qt3-daisy-11.0.3.tar.bz2

--------------
Features
--------------
* security_flags: Fix typo for cups
* powertop: Fix build for !uclibc
* systemd: fix /var/log/journal ownership
* eglibc: fix two security issues.
* documentation: Updated manual revision table to new date
* bitbake: lib/bb/utils: add safeguard against recursively deleting
things we shouldn't
* bitbake: fetch/git: Remove a possible trailing '/' in subpath
* openssl: Fix x32 openssl patch which was not building
* bitbake: data.py: fixes bad substitution when running devshell
* ref-manual: Corrected the "package_rpm.bbclass" section.
* openssl: Upgrade to 1.0.1m
* utils.bbclass: fix create_cmdline_wrapper
* qt4: add patch for BMP denial-of-service vulnerability
* binutils: several security fixes
* documentation: Prepared for YP 1.6.3 doc release.
* lib/oe/package_manager: support exclusion from complementary glob
process by regex
* ref-manual: Fixed icecc example code
* documentation: Reverted back to the 1.76.1 XSL stylesheet
* yocto-bsp: Add branch to SRC_URI for custom kernels
* btrfs: create an empty file to build the fs in
* update-rc.d: Allow to use different initscripts provider
* python: Disables SSLv3
* systemd: backport patch to fix reading journal backwards
* openssh: move setting LD to allow for correct override
* resolvconf: add fixes for busybox and make it work
* beaglebone: enable the nowayout option for the watchdog
* linux-yocto-rt/3.14: update to 3.14-rt5
* linux-yocto/3.14: update to v3.14.4
* linux-yocto/3.14: update to v3.14.2

--------------
Security Fixes
--------------
* e2fsprogs: CVE-2015-0247
* elfutils: CVE-2014-9447
* coreutils: parse-datetime: CVE-2014-9471
* libpng16: CVE-2015-0973
* qemu: CVE-2014-2894
* python: CVE-2014-7185
* bind: fix for CVE-2014-8500
* file: CVE-2014-9620 and CVE-2014-9621
* cpio: fix bug CVE-2014-9112 for cpio-2.8
* cpio: fix bug CVE-2014-9112 for cpio-2.11

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

