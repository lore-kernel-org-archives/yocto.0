Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADDBFE0044D
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 17:31:36 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 30 Apr 2012 17:31:26 -0700
Received: by lahi5 with SMTP id i5so1965121lah.25
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 17:31:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=SMeaAIebsiBBSzjO5FXhBFdixbnLlzt47fFWO3NEguE=;
	b=XF7llxDlCi0FnpWiUqPXF/9vHjrc6j7oZFkh98Zq7XcISwrklo7rkeRMEuNR+ZhAF+
	r6oDRnwLQ34rGVAGXsgY5AuuTUPnA3G/G5DVsmC31184c+tPX40VHmkCXBWGqW3g/Yrn
	m6F2kBst3fkebr4ajHk9bbJ5DnVMDnbAs839ukBIC0CRjDc4EH7ftucmEoV3/K5knfBB
	gPZMUrVmH0zMX6mSWRSieQW9pyOMDdm/EOHubkt9b37yaYyja1oHt7NEF9Lpb3Iq/BIq
	2dQPnRE6lKTPK/miecD1ByDnvcWsC4ss8hRmnzOwxFjN2AKwX7orWpYQSUjWe8TmV8sk
	obaQ==
MIME-Version: 1.0
Received: by 10.112.86.101 with SMTP id o5mr10865254lbz.1.1335832284609; Mon,
	30 Apr 2012 17:31:24 -0700 (PDT)
Received: by 10.112.107.137 with HTTP; Mon, 30 Apr 2012 17:31:24 -0700 (PDT)
Date: Mon, 30 Apr 2012 17:31:24 -0700
Message-ID: <CAPhnLPDfTpRYW2PZL0ftoeHsDdQeHAqtPoO=10Ohnbo4GPBZVg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQnhjcNTT4awOWCm1JTiwzvYMyl1kq5IhlboB1Bzcg16n7YgVRdCNUr2w2iHmCvgJktUDiL9
Subject: [ANNOUNCEMENT] Yocto 1.2 released.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 May 2012 00:31:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

All,

The major release of yocto-1.2 "denzil" has been tagged, generated and is now
available for download. This release is available at:

 http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2
 or
 http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/poky-denzil-7.0.tar.bz2

Git tags gpg key information is available at:

 http://pgp.mit.edu:11371/pks/lookup?op=vindex&search=0x4C8AF84FCC12440F

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

- --------------------
denzil-7.0 Errata
- --------------------

Release Name: eclipse-poky-denzil-7.0
Branch:  denzil
Tag:  denzil-7.0
Hash:  1d05505e0653aa70f7e38239951b4e19ce0438e1
md5:  355a11e4e8df4ae9213769451c63fe05
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/eclipse-poky-denzil-7.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2/eclipse-poky-denzil-7.0.tar.bz2

Release Name: meta-qt3-denzil-7.0
Branch:  denzil
Tag:  denzil-7.0
Hash:  f8475d5c5935695d4d1dfff1d7be30f49e162094
md5:  b57b5575c2f703e7bfa08eca72c43df4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/meta-qt3-denzil-7.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2/meta-qt3-denzil-7.0.tar.bz2

Release Name: poky-denzil-7.0
Branch:  denzil
Tag:  denzil-7.0
Hash:  d20a24310eb43fed9a3f3e75752c9ad45a18cbe4
md5:  dd6ce5bffadd8b8965191aca54b19b83
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2

- --------------------
Features
- --------------------

 - HOB redesigned with new user interface and work flow. HOB is a GUI based
   tool for users to customize and build an embedded Linux image in a more
   intuitive and easier way.
 - Build appliance, which is a set of changes and enhancements to enable
   users to build a virtual machine image running Linux built with the Yocto
   Project. Within the Linux running on the virtual machine, users can
   customize and build their own customized embedded Linux images.
 - Error message handling improvement, making error message more efficient,
   useful and accurate to users.
 - New kernel update to Linux 3.2.11.
 - Kernel usability scripts, BSP tools to make building BSP's easier.
 - Package history data collection and analysis tools.
 - Incremental image generation after customization of an existing image built
   previously.
 - Package history data collection and analysis tools.
 - Implementation of the MSG (Magic Smoke Generator) which enables the on board
   generation of "magic smoke" to enhance the longevity of embedded device
   components.
 - Enhancement to Bitbake commander Eclipse plugin, Disk space monitoring,
   multilib improvement, etc.
 - Improvements to FLOSS compliance tools which allow more granularity of
   license definitions, the generation of image manifests/license manifests
   and the implementation of source archiving functionality.

- --------------------
Known Issues
- --------------------

 - Bug 2256 - kernel menuconfig confusion with sstate.

   If you change the config during a build, bitbake may not detect the change
   and will not rebuild the kernel. After changing the config, be sure to
   force a kernel recompile:

      $ bitbake virtual/kernel -c menuconfig

      $ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel

 - Bug 1858 - Rootfs creation broken when using package_deb as primary
              PACKAGE_CLASSES with non Debian-OS build system.

   This is a known issue that rootfs  creation is broken when using package_deb
   as primary PACKAGE_CLASSES with non Debian-OS build system.  The work around
   is to use a Debian system to create the rootfs if you need to using
package_deb
   as primary PACKAGE_CLASSES.   But for package generation e.g. for
package feed,
   etc. it works fine on both Debian-OS or non Debian-OS.

 - Due to production processes, the Yocto Project documentation
extracted from the
   Yocto Project 1.2 Release tarball is not as up-to-date as the documentation
   cloned from the poky source Git repository and the Yocto Project's
Documentation
   website.  If you want the most up-to-date documentation for the
Yocto Project 1.2
   Release, do one of the following:

    * git clone git://git.yoctoproject.org/poky
    * Use the current set of documents from
http://www.yoctoproject.org/documentation

- --
Elizabeth Flanagan
Yocto Project
Build and Release

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.16 (GNU/Linux)

iQEcBAEBAgAGBQJPnymBAAoJEEyK+E/MEkQPwKsH/ioUGaEKNIyr1Y9DbdgYiVOJ
mRAFfjVj2dWJ71tRmFYG+VfXZE1qOC8AfIMnpnilAK2D09AwN4ZDUGXRJCON+oUH
wgkBZfnZdOr4IC1194LP3VlSBLTJ22TvkCDeFf4eGfYLMZe6MxUt+1tWJW/u1+/e
YJ6NU2tFHw6Tg8KGlIOouPiBV5FsGqvsQueRHGdWe0XKz61uBuTDOVi3h5iI7HPe
POM/0CCUDtlwDz0pNWed9hFEOjSTLcghhHZl4zl3uadAW+neKJsse3cGBcxsoC2q
EtohjTXOmCCUzpF4388ABDHBS/fRBVKO0PfYctDHcd5yrI63NBRber1nElc3gAY=
=nXwb
-----END PGP SIGNATURE-----

