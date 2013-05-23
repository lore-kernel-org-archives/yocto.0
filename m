Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50C72E0129D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 16:20:53 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id m1so2967851ves.30
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 16:20:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=sr1RL3nRue/6DvCOzc6paG7tPtG3ehDGPqHuQoIlKnM=;
	b=IEPQM9MtfC1AMoxfy5CKnk6WAfh8mUFVTk+Xgh9wGl/PYVetrmvkyco5HUhrsDSeub
	h4S0ecvRVehwsTH6JRzfj9bk979/sM7d0k7eWynUK5+S3ZR8q2EI+A2lnGeJYt7HgucE
	vjw/5pElYdIrHh6sPcDcFiS3bh4hSwsf8nfsvpc08odv/AaaOFeIO3m1updBdMm8KkdW
	7dQu/nc/YHQNA8ZHBEZi1G/c+DRc2d+9cgnddUngbSW+cGOrlHs+gXuRIfXY3z6WCVit
	KTBC099F52iQSRUyGEnwOalr0UKT8kQauiC6yK/8V24FPhZOXFfa9xokTqInL3bC7mDK
	UlVA==
MIME-Version: 1.0
X-Received: by 10.52.0.102 with SMTP id 6mr6149325vdd.9.1369351252324; Thu, 23
	May 2013 16:20:52 -0700 (PDT)
Received: by 10.52.38.7 with HTTP; Thu, 23 May 2013 16:20:52 -0700 (PDT)
Date: Thu, 23 May 2013 16:20:52 -0700
Message-ID: <CAPhnLPCHLDQ_OP8uOmk9eB4n9q+0xA6fA0GVcWZ_d-dwX-yoTQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQmGMzaNjECHDOgtRVdqH4OjWZ24EhprSN6PYJ8FSCzEPDLrPz932/+2kt3+P/CEGalMC+kR
Subject: [ANNOUNCEMENT] Yocto Project 1.3.2 "danny" released.
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
X-List-Received-Date: Thu, 23 May 2013 23:20:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

The latest point release of the Yocto Project danny release, 1.3.2, is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.3.2/poky-danny-8.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.3.2/poky-danny-8.0.2.tar.gz

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

--------------------
yocto-1.3.2 Errata
--------------------

Release Name: poky-danny-8.0.2
Branch:  danny
Tag:  danny-8.0.2
Hash:  e52a74755b72038def2f093d18212d033d3d862d
md5: 9fd0cdda96b9927958371ff2762bf293
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.3.2/poky-danny-8.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.3.2/poky-danny-8.0.2.tar.gz

Release Name: meta-intel-danny-8.0.2
Branch:  danny
Tag:  danny-8.0.2
Hash:  d44f005338012cc7111190122b2ab08a29c0e0e7
md5: 8073ec8d84bb626a4c55e8c4d763dd09
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.3.2/meta-intel-danny-8.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.3.2/meta-intel-danny-8.0.2.tar.gz

Release Name: eclipse-poky-danny-8.0.2
Branch:  danny
Tag:  danny-8.0.2
Hash:  ae28375759e6c9a6eef64f74b61d95e1cb00783d
md5: 120cb5215f073905e02e44e079c5d78c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.3.2/eclipse-poky-danny-8.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.3.2/eclipse-poky-danny-8.0.2.tar.gz

Release Name: meta-qt3-danny-8.0.2
Branch:  danny
Tag:  danny-8.0.2
Hash:  c86fb1727ae09526c442ec29fffde3f010aa70eb
md5: 466c7fce61c655d274b0e0e1d2b8483d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.3.2/meta-qt3-danny-8.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.3.2/meta-qt3-danny-8.0.2.tar.gz

--------------------
Notable Fixes
--------------------
- Improved reliability in sanity testing
- Improved multilib support
- Numerous toolchain and sdk packaging fixes

--------------------
Security fixes
--------------------
CVE-2012-6085 (gupnp)
CVE-2010-5107 (openssh)
CVE-2012-6329 (perl)
CVE-2013-1667 (perl)

--------------------
Known Issues
--------------------
- Depending on configuration and existing sstate, images may try to
install both lttng-ust and lttng2-ust into an image, which will fail.
To work around this, bitbake -ccleansstate all of the lttng recipes.

--------------------
Bug Fixes
--------------------
2918: lib64-core-image-sato-sdk fails due to do_rootfs issue
3069: perl File::Glob module is broken.
3100: autoreconf run failed on x86-64 gmae-toolchain
3325: nativesdk-ncurses 5.9: files were installed but not shipped
3338: iptables-1.4.15: autoreconf run failed on gmae-toolchain
3389: bitbake lib64-core-image-sato fails due to "nothing PROVIDES" errors
3401: standalone toolchain should notify the user if the target
      install dir of SDK is one already used
3640: sanity.bbclass sometimes failing to find saved_tmpdir when
      tmp-eglibc was deleted
3745: [Test Case 169] Bitbake remake/remake-native check
3839: [Test Case 378] Relocatable SDK - C - build Hello World GTK C
      Autotols Project
3935: beagleboard/routerstation/mpc8315e: abnormal filesystem-related
      messages in dmesg when plugging a usb stick
3951: perf doesn't build with core-image-minimal
3983: [danny 1.3.1] Invalid symbolic link file in adt_installer.tar.bz2
3984: iptables-1.4.15: autoreconf run fails on 1.3.1
4010: bitbake ignores PRservice error
4014: Regarding Licensing of "mbsalign.c" available in util-linux-2.21.2
      version (Yocto-1.3-Danny)
4470: Powertop fails do_compile on nightly-x86-lsb


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

