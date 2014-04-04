Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC14CE00C22
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 11:01:01 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id ld13so3316184vcb.5
	for <yocto@yoctoproject.org>; Fri, 04 Apr 2014 11:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=A1FOrGKe5QCmPc0NKyN2biHrC5yat3rSqyG4v7G/I68=;
	b=X662vTxpVeFS9IKJWCNhSLacuKcwNBfw6bL8x8O9sHGrsvPUo2ZQIRHm7/5SLCx0d1
	OIEgxB7UnYujUnFpqeUnEVT4Lh7lmd4XJkDUSiA8YEYisgjSNpaMwX24xyleJQF1K9Iw
	r943F/3C1UGOYWyv4UIRmrZU6r0p+t+zuE24vyLLCGEiV31N1NisD9GvFNGm+TWHfjLG
	FgcmIiZyXby61i80bJa5Wr6ZXClLLNb081kIJ7HekKt7Vmu1z7s6S6s1FUCRgouLmUw8
	SUjxThJWP4Cw13fnlmoV/WmlY6tF8nVSLR97DZudug156CDNDAqvF5LHsqCZ8gMntqBs
	YFtg==
X-Gm-Message-State: ALoCoQmNVyuLkA3TQ1eWft1GkIUWeEJvtzewPAnY5AWskud27G8cYmDTzU3aOWAv1f+XaxjwKLDS
MIME-Version: 1.0
X-Received: by 10.52.240.207 with SMTP id wc15mr12098651vdc.14.1396634460437; 
	Fri, 04 Apr 2014 11:01:00 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Fri, 4 Apr 2014 11:01:00 -0700 (PDT)
Date: Fri, 4 Apr 2014 11:01:00 -0700
Message-ID: <CAPhnLPBoePDTvfv+SgW+EOdMDNg6jqL6D5RnF4g-WYPizA4Z+Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.4.3 (dylan 9.0.3) Released
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
X-List-Received-Date: Fri, 04 Apr 2014 18:01:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

The latest point release of the Yocto Project, 1.4.3 (dylan 9.0.3) is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.3/poky-dylan-9.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.3/poky-dylan-9.0.3.tar.gz

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.3/RELEASENOTES.txt

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>


--------------------
yocto-1.4.3 Errata
--------------------

Release Name: poky-dylan-9.0.3
Branch:  dylan
Tag:  dylan-9.0.3
Hash:  6ef08331868c694ce7c3b31eeaac84e6aa8d660b
md5:  0ce3883fa12a21d9c6cc735a5be9ad37
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.3/poky-dylan-9.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.3/poky-dylan-9.0.3.tar.bz2

Release Name: eclipse-poky-juno-dylan-9.0.3
Branch:  dylan
Tag:  dylan-9.0.3
Hash:  dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
md5:  1e27a640a1496c880ef512147ded610d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.3/eclipse-poky-juno-dylan-9.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.3/eclipse-poky-juno-dylan-9.0.3.tar.bz2

Release Name: meta-qt3-dylan-9.0.3
Branch:  dylan
Tag:  dylan-9.0.3
Hash:  4c27cce6688aa39852f3cba5e7b80ec279019605
md5:  b53c8a80196e3daab0c955c0ec538e33
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.3/meta-qt3-dylan-9.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.3/meta-qt3-dylan-9.0.3.tar.bz2

--------------------
Security Fixes
--------------------
-gnutls: CVE-2014-0092
-gnutls: CVE-2014-1959
-libtiff: CVE-2013-4243
-libtiff: CVE-2013-4232
-libtiff: CVE-2013-1960
-gst-ffmpeg: CVE-2013-3674
-python: CVE-2011-4944
-python: CVE-2013-4238
-perl: CVE-2012-6329
-perl: CVE-2013-1667

--------------------
Changelog
--------------------
-rpm: Enable compatibility with older RPM packages that have invalid platforms
-lsbtest: fix comparison bashism
-init-install-efi.sh: Remove unnecessary udev rules file to avoid errors
-gnutls: fix failure during do_compile
-gnutls: Fixed bug that prevented the rejection of v1 intermediate CA
certificates.
-gnutls: CVE-2014-0092 correct return codes
-subversion: fix build problem when sysroot contains '-D' or '-I'
-guile: fix the depends for target recipes
-guile: fix build with Texinfo 5.0
-grep: Add patch for texinfo 5.1
-Fixes for tar 1.27 on the build host
-findutils_4.2.31: backport fixes for doc build errors
-elfutils-native: Fix build on distros with gcc 4.8
-libx11: backport _XEatDataWords API to fix QEMU startup failures on
modern distros
-runqemu: Use correct kvm CPU options for qemux86* with kvm
-cmake: set system name correctly
-libsoup-2.4: add intltool-native to DEPENDS
-packagegroup-self-hosted: add missing python modules for build appliance
-python: Add missing python-ctypes dependency to python-multiprocessing
-libtiff: CVE-2013-4243
-libtiff: CVE-2013-4232
-libtiff: fix CVE-2013-1960
-gst-ffmpeg: fix CVE-2013-3674
-image-mklibs: ensure sysroot is correctly set when calling gcc
-package.bbclass: ensure license excluded files aren't packaged
-license.bbclass: include all licenses in the manifest
-license.bbclass: fix missing of license files on ubuntu build host
-metadata_scm: Avoid crashing on new svn version layouts
-meta-toolchain-qt: put QT_CONF_PATH in environment script
-nativesdk-qt4-tools: create qt.conf file
-dropbear: pass SFTPSERVER_PATH explicitly
-elfutils-native: Update the patch to include the missing pieces
needed for tests
-busybox: configure system user id to range from 100 to 999
-sstate: Drop 'SafeDep' code from setscene validation to fix some
sstate tasks not being executed
-bitbake: perforce: Fix path subdirectory issues
-bitbake: fetch/hg: Improve user/password handling
-bitbake: fetch2/svn.py: use log instead of info to retrieve revision
-bitbake: fetch2: Don't allow '/' in user:pass, fix branch containing '@'
-bitbake: bitbake: lib/bb/cache.py: Change debugging note to a debug message
-bitbake: hob/hoblistmodel: check if vals of packages/recipes names are not None
-bitbake: methodpool: Retire it, remove global method scope
-rpm: fix typo in PACKAGECONFIG
-Fix "bitbake package-index" for RPM
-kernel.bbclass: Correct post(inst|rm) package association
-python: Backport 2 CVE from upstream (CVE-2011-4944 / CVE-2013-4238)
-perl: Backport 2 CVE Patches (CVE-2012-6329 / CVE-2013-1667)
-libxml2: remove erroneous patch for CVE-2012-2871 (issue not present
in this version)
-sysvinit-inittab: ensure unique label for SERIAL_CONSOLES entries
-ncurses: Fix problems expanding ncurses-libtinfo when in IMAGE_INSTALL
-db: Fix build with high PARALLEL_MAKE
-boost: fix build when PARALLEL_MAKE is not set
-mc: Don't remove libdir and split helpers into packages
-kern-tools: use dylan branch

