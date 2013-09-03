Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFB1BE00715
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 12:15:36 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e13so4229503vbg.17
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 12:15:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=N7ZyDTHoMQZRZKHF01Q1MfTsGc5VkQGe+9A8hJP3mGI=;
	b=gYsCPWUznvBQx8lF/3Sn+rt5uPPS0CqUSmvGeBEC6yVNyFB+laC9Hn+lDoJZIDpQSi
	W+kMmIQaoWRLjHsDzRtd7CiUP7ujhwEogxGM+251eFgs6a0LtRiVEmLKeYvb5UCAtnWo
	kUpRH7oWnGPA6Fmjhv0d+F8NURA6cvMhcUEQ5QCebFEgGS2asn6mvxZSxIWZItSSnI1J
	H8C5sqTlCDUbRjrRzxJC2fOpizMYCcWUkXycUB2HRd+bt/30uJ5g1lzTBAlstTELIAv/
	sIKfs8LKeOKw9exqUPiTXynL6yyu+Ix+YSQJ1w/htSUqDB3YwtDDZXHSsB2rkVnk8ZyB
	Bz3w==
X-Gm-Message-State: ALoCoQmJY4e4ZMHOodIIwXJzFinQAWBFJo457S1MTNnq+vilCXXorOUvERWV8lVI5RaBPLEpeNRz
MIME-Version: 1.0
X-Received: by 10.58.73.202 with SMTP id n10mr30008540vev.7.1378235735589;
	Tue, 03 Sep 2013 12:15:35 -0700 (PDT)
Received: by 10.52.28.109 with HTTP; Tue, 3 Sep 2013 12:15:35 -0700 (PDT)
Date: Tue, 3 Sep 2013 12:15:35 -0700
Message-ID: <CAPhnLPDM-9Kw-0Ooftm+wAfhzN1iRGbaagWRBvozeRYUvsWMDA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [Announcement] Yocto Project 1.4.2 (Dylan 9.0.2) Released
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
X-List-Received-Date: Tue, 03 Sep 2013 19:15:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

The latest point release of the Yocto Project, 1.4.2 (dylan 9.0.2) is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/poky-dylan-9.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.2/poky-dylan-9.0.2.tar.gz

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/RELEASENOTES

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>


--------------------
yocto-1.4.2 Errata
--------------------

Release Name: poky-dylan-9.0.2
Branch:  dylan
Tag:  dylan-9.0.2
Hash:  d734ab491a30078d43dee5440c03acce2d251425
md5: a8cfa7440bdef4e5f8de68ac9bc256c9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/poky-dylan-9.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.2/poky-dylan-9.0.2.tar.bz2

Release Name: eclipse-poky-juno-dylan-9.0.2
Branch:  dylan
Tag:  dylan-9.0.2
Hash:  dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
md5: eaf8eda342051e0530ff80d7ae015ecc
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/eclipse-poky-juno-dylan-9.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.2/eclipse-poky-juno-dylan-9.0.2.tar.bz2

Release Name: meta-qt3-dylan-9.0.2
Branch:  dylan
Tag:  dylan-9.0.2
Hash:  4c27cce6688aa39852f3cba5e7b80ec279019605
md5: 97b0bfaace7d5534530e7b56faa99aac
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/meta-qt3-dylan-9.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.2/meta-qt3-dylan-9.0.2.tar.bz2

Release Name: meta-intel-dylan-9.0.2
Branch:  dylan
Tag:  dylan-9.0.2
Hash:  048def7bae8e3e1a11c91f5071f99bdcf8e6dd16
md5: 69253e666f73dd74d309ae922bb0f091
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/meta-intel-dylan-9.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.2/meta-intel-dylan-9.0.2.tar.bz2

Release Name: meta-minnow-dylan-9.0.2
Branch:  dylan
Tag:  dylan-9.0.2
Hash:  bde2e79fdb35851ee1f855a41a536fe741d6294d
md5: b4d0131c5e087d0fa6dbb58ffee79b9b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.2/meta-minnow-dylan-9.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.2/meta-minnow-dylan-9.0.2.tar.bz2


--------------------
Notable Fixes
--------------------
- A large number of build-time deterministic dependency fixes
- A couple of fixes for build problems on Fedora 19 and other newer host
  distributions (although some issues may still be present)
- Several fixes for ADT / SDK installer runtime failures
- Correctly mark the current version of groff as GPLv3, and add a GPLv2
  version


--------------------
Security fixes
--------------------
bind: fix for CVE-2012-5166, CVE-2011-4313, CVE-2012-1667, CVE-2012-3817,
CVE-2013-2266, CVE-2012-4244
grep: fix for CVE-2012-5667
libpam: fix for CVE-2010-4708
logrotate: fix for CVE-2011-1548
gnutls: fix for CVE-2013-1619 (upgraded to 2.12.23)


--------------------
Known Issues
--------------------
The following known issues are present in this release:
* runqemu sometimes fails on Fedora 19 due to build-time configuration issue
* (bug #5040)
* Intermittent error when building packages in Hob (bug #5053)

The following have fixes in master which will be integrated for the
next 1.4 point release:
* "ERROR: Nothing RPROVIDES 'ncurses-libtinfo'" when ncurses is being
* installed from Hob


--------------------
Bug Fixes
--------------------
349: qt4: add eglibc-gconv-utf-16 to QtCore RRECOMMENDS when using glibc to
fix runtime warnings
4225: Ensure finalised data is displayed in build banner to fix incorrect
display of TUNE_FEATURES
4474: bind: use /var/run/named instead of /var/run/bind/run to fix error on
startup
4746: systemd-udevd: fix invoking init script failed
4630: archiver.bbclass: check if package contains a copyleft license
4372: sstate.bbclass: make hard links for staging files to save disk space
4632: only use devtmpfs for udev
4550: adt_installer_internal: fix perl module relocation failure on older
distributions
4758: adt_installer_internal: fix perl lib version mismatch
4760: adt_installer_internal: add sudo when permission deny on installation
directory
4735: yocto-bsp: filter out 'layer' from arch list
4743: yocto-kernel: enforce exact match for BBLAYERS
4488: populate_sdk_base, adt_installer: abort install if path contains spaces
4853: populate_sdk_base.bbclass: use new perm option for find
4815: tar: remove an erroneous patch
4385: remake: fix insufficient gettext dependency
4627: bitbake: data_smart: Ensure variable flags are accounted for in config
data hash
4908: external-sourcery: add missing providers
4439: devshell fails to open a new tmux session
4997: grub_0.97: Fix to correctly ship files under /usr/lib

Fixes without associated bug numbers:
openssl: fix documentation build errors with Perl 5.18 pod2man
openssl: Add fix for cipher des-ede3-cfb1
linux-yocto: Fix SRCREVs in linux-yocto_3.2 kernel
mesa: fix EGL compilation without X11 headers
directfb: avoid build failures by not patching pkg-config files
packagegroup-core-tools-testapps: exclude X11 dependent tools when x11 is not
in DISTRO_FEATURES
dpkg-native: fix include header causing compile error with gcc 4.8

