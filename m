Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EA0AE00922; Fri,  5 Dec 2014 00:05:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	UC_GIBBERISH_OBFU autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 3.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E971E00916
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 00:05:36 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id hq12so75027vcb.27
	for <yocto@yoctoproject.org>; Fri, 05 Dec 2014 00:05:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=d2y7Ir5vZ4tl0ithNEq2rAJF7aZQ5Q9BQr6rsD7w5iQ=;
	b=ewIs8JRWIN56ev40oShHncZhpsBaa7tFggHFrHw5AnPD39STTZ7a1kVVeZOXw9VIgc
	OcMkPAnIe1twnYSvTXLzoNxjpB1A8JW/pYbTHViJxpedJl/quGrRh/McPuraWGV0lwsh
	8DuQjVebNlXs56hMPRiTgbN5ivIMMZASv0bWFXQ8wbIafhByYtUV/kMV2P9+5EUtfJIo
	XsCu2Z5YvIP0OXyFpoGcHpi7dxogBiozhitdm5G1+ez7S2JfWlFn5YmNpQ7Mr3ddAhJa
	X87N23HnQmweQKh58DZ1t6nI0/HrFTok4OUbF2rg26vEpTAcw3Cklbu3PRf8nEliafS+
	aRnw==
X-Gm-Message-State: ALoCoQkQgWWYMtVod9VCFO/e1PL7F9+kRyoBZVcIaXVmj59iFNeGbFF/TDi4wB+2tx1r7ZcXUKh1
MIME-Version: 1.0
X-Received: by 10.220.74.9 with SMTP id s9mr7694594vcj.74.1417766735473; Fri,
	05 Dec 2014 00:05:35 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Fri, 5 Dec 2014 00:05:35 -0800 (PST)
Date: Fri, 5 Dec 2014 08:05:35 +0000
Message-ID: <CAPhnLPB3uF=XKsh2PN1OZyAkMYE-N107S7GKPS5rxFhxymsDLQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.6.2 (daisy) now available.
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
X-List-Received-Date: Fri, 05 Dec 2014 08:05:45 -0000
Content-Type: text/plain; charset=UTF-8

All,

We are pleased to release the second point release for the Yocto
Project's "daisy" release. This release has fixes for 25 CVEs
including CVE-2014-3566.

Several fixes for CVE-2014-3566 (the SSL Poodle vulnerability) have
been applied to OpenSSL in this release; however, due to the nature of
the vulnerability you will need to ensure that SSL 3.0 support is
either disabled, or alternatively that TLS_FALLBACK_SCSV is
implemented in both clients and servers that use TLS/SSL.

For more information, check with the upstream provider of TLS/SSL
client / server software that you are using.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-3566
https://www.us-cert.gov/ncas/alerts/TA14-290A

Downloads are available at:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.2/poky-daisy-11.0.2.tar.bz2


Release Name: poky-daisy-11.0.2
Branch: daisy
Tag: daisy-11.0.2
Hash: e3dd621197548b4cf64988e757e9bc926082db73
md5sum: d0fec76994622bf668ce13779ac73f43
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.2/poky-daisy-11.0.2.tar.bz2

Release Name: meta-qt3-daisy-11.0.2
Branch: daisy
Tag: daisy-11.0.2
Hash: 3016129d90b7ac8517a5227d819f10ad417b5b45
md5sum: 139394eca6575b9ab31d2f79f7830f2a
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.2/meta-qt3-daisy-11.0.2.tar.bz2

Release Name: eclipse-poky-juno-daisy-11.0.2
Branch: daisy
Tag: daisy-11.0.2
Hash: 26bfc407781aa185f244a47ba63120343cee4a37
md5sum: bce7d1644d6bf4ea528db9a511124bba
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.2/eclipse-poky-juno-daisy-11.0.2.tar.bz2

Release Name: eclipse-poky-kepler-daisy-11.0.2
Branch: daisy
Tag: daisy-11.0.2
Hash: 932891014ea068e196fcf1f9efedb8a672fb81a0
md5sum: f85546bfd1da67d72c0b743780146220
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.2/eclipse-poky-kepler-daisy-11.0.2.tar.bz2

Bug Fixes
---------
adt-installer: fix sed input file error
bash: Fix for exported function namespace change
binutils: Add fix for recent patch on older gcc
binutils: Apply the proper fix for PR 16428
bitbake: codeparser: don't interact with the cache for subshells
bitbake: codeparser: Fix to better catch all getVar references
build-appliance-image: Update to daisy head revision
build-appliance-image: Update to daisy head revision
cairo: explicitly disable LTO support by backporting patch which removes it
crosssdk: Clear MACHINEOVERRIDES
dev-manual: Updated the "Making Images More Secure" section.
documentation: Added "November 2014" to manual history lists.
documentation: Updated manual history tables to support 1.6.2
kernel: don't copy .so.dbg files into kernel source install
kernelshark: Remove trace-cmd from the kernelshark package
layer.conf: Add in useradd dependencies as ABISAFE dependencies
layer.conf: Mark opkg-utils as ABISAFE for update-alternatives usage
libarchive: avoid dependency on e2fsprogs
libxml2: fix python packaging for nativesdk
ltp: Added zip-native as a DEPENDS
lttng-modules: Update to version 2.4.2
mega-manual.sed: Updates to support links to BB manual
native/nativesdk: Clear MACHINEOVERRIDES
openssh: avoid screen sessions being killed on disconnect with systemd
openssl: upgrade to 1.0.1j
openssl: Upgrade to 1.0.1j
perf: add slang to the dependencies
perf: explicitly disable libunwind
perf: fix broken shell comparsion in do_install
perf: split packging
poky.conf: Bump DISTRO_VERISON for 1.6.2
poky-ent: Updated the YOCTO_RELEASE_NOTES variable.
poky.ent: Updated variables to support a 1.6.2 release.
populate_sdk_base: Fix grep command usage on old hosts
populate_sdk_deb: Fix non x86_64 SDK builds
profile-manual: Updates to the LTTng Documentation section.
pseudo*.bb: update to pseudo 1.6.2
pseudo.inc: Clean up backport of version update to 1.6.2
python: force off_t size to 8 to enable large file support
qemu: Explicitly disable libiscsi, its not in DEPENDS
qt4: Fix Qt 4.8.5 source to new location
readline: Patch for readline multikey dispatch issue
ref-manual: Updated note in the "CentOS Packages" section.
ref-manual, yocto-project-qs: Fixed some references to BitBake Manual.
shadow-securetty: add freescale lpuart
udev-cache.default: set PROBE_PLATFORM_BUS to "yes" by default
udev: update init script for conditional probing of platform bus
update-rc.d/systemd: Remove OVERRIDES dependency
useradd-staticids.bbclass: Fix for Bug 6633
wic: Fix bad directory name in bootimg-efi
wic: Remove fstype from mkefidisk canned wks

Security Fixes
--------------
bash: Fix CVE-2014-6271
bash: Fix CVE-2014-7169
bash: Fix for CVE-2014-6277
bash: Fix-for-CVE-2014-6278
bash: Fix for CVE-2014-7186 and CVE-2014-7187
curl: Security Advisory - curl - CVE-2014-3613
curl: Security Advisory - curl - CVE-2014-3620
dpkg: Security Advisory - CVE-2014-0471
dpkg: Security Advisory - CVE-2014-3127
eglibc: CVE-2014-5119 fix
gnupg: CVE-2013-4242
gst-ffmpeg: Add CVE patches
gst-ffmpeg: Security Advisory - ffmpeg - CVE-2013-0869
gst-ffmpeg: Security Advisory - ffmpeg - CVE-2013-4358
libpam: Security Advisory - CVE-2014-2583
libtiff: fix CVE-2013-1961
libtiff: Security Advisory - CVE-2012-4564
nspr: Fix for CVE-2014-1545
nss-3.15.1: fix CVE-2013-1739
nss: CVE-2013-5606
nss: CVE-2014-1544
perl: fix for CVE-2010-4777
pulseaudio: fix CVE-2014-3970
readline: Security Advisory - readline - CVE-2014-2524
wget: Fix for CVE-2014-4887

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

