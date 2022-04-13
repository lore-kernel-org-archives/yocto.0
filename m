Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39270C35294
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 16:03:53 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web12.2198.1649875004036199889
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Apr 2022 11:36:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: joe.slater@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 23DIaeQb028534
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 11:36:41 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Apr 2022 11:36:39 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Wed, 13 Apr 2022 11:36:39 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <joe.slater@windriver.com>
Subject: [meta-security][PATCH 1/1] LICENSE: update to SPDX standard names
Date: Wed, 13 Apr 2022 11:36:39 -0700
Message-ID: <20220413183639.13819-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.wrs.com id
 23DIaeQb028534
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 16:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56765

Use convert-spdx-licenses.py to update LICENSE in recipes.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb  | 2 +-
 meta-security-compliance/recipes-openscap/openscap/openscap.inc | 2 +-
 .../scap-security-guide/scap-security-guide.inc                 | 2 +-
 .../recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb  | 2 +-
 meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb               | 2 +-
 recipes-ids/aide/aide_0.17.3.bb                                 | 2 +-
 recipes-ids/ossec/ossec-hids_3.6.0.bb                           | 2 +-
 recipes-ids/tripwire/tripwire_2.4.3.7.bb                        | 2 +-
 recipes-mac/AppArmor/apparmor_3.0.4.bb                          | 2 +-
 recipes-mac/ccs-tools/ccs-tools_1.8.4.bb                        | 2 +-
 recipes-mac/smack/smack_1.3.1.bb                                | 2 +-
 recipes-perl/perl/lib-perl_0.63.bb                              | 2 +-
 recipes-scanners/buck-security/buck-security_0.7.bb             | 2 +-
 recipes-scanners/checksecurity/checksecurity_2.0.15.bb          | 2 +-
 recipes-security/aircrack-ng/aircrack-ng_1.6.bb                 | 2 +-
 recipes-security/chipsec/chipsec_git.bb                         | 2 +-
 recipes-security/libmspack/libmspack_1.9.1.bb                   | 2 +-
 recipes-security/ncrack/ncrack_0.7.bb                           | 2 +-
 recipes-security/paxctl/paxctl_0.9.bb                           | 2 +-
 recipes-security/redhat-security/redhat-security_1.0.bb         | 2 +-
 20 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.=
bb b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
index 947c27e..f665e29 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
@@ -3,7 +3,7 @@
=20
 SUMMARY =3D "Lynis is a free and open source security and auditing tool.=
"
 HOMEDIR =3D "https://cisofy.com/"
-LICENSE =3D "GPL-3.0"
+LICENSE =3D "GPL-3.0-only"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3edd6782854304fd11da4975ab979=
9c1"
=20
 SRC_URI =3D "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.=
inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index c236641..4babcf9 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -4,7 +4,7 @@
 SUMARRY =3D "NIST Certified SCAP 1.2 toolkit"
 HOME_URL =3D "https://www.open-scap.org/tools/openscap-base/"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dfbc093901857fcd118f065f900982=
c24"
-LICENSE =3D "LGPL-2.1"
+LICENSE =3D "LGPL-2.1-only"
=20
 DEPENDS =3D "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt =
libcap swig"
 DEPENDS:class-native =3D "pkgconfig-native swig-native curl-native libxm=
l2-native libxslt-native libcap-native"
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guid=
e/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/sca=
p-security-guide/scap-security-guide.inc
index 0c651f1..6f29eda 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-=
security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-=
security-guide.inc
@@ -4,7 +4,7 @@
 SUMARRY =3D "SCAP content for various platforms"
 HOME_URL =3D "https://www.open-scap.org/security-policies/scap-security-=
guide/"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D97662e4486d9a1d09f358851d9f41=
a1a"
-LICENSE =3D "LGPL-2.1"
+LICENSE =3D "LGPL-2.1-only"
=20
 DEPENDS =3D "openscap-native python3 python3-pyyaml-native python3-jinja=
2-native libxml2-native expat-native"
=20
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0=
.5.0.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.=
0.bb
index 2b969ed..e3e643e 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
@@ -2,7 +2,7 @@ DESCRIPTION =3D "OpenSSL secure engine based on TPM hardw=
are"
 HOMEPAGE =3D "https://github.com/mgerstner/openssl_tpm_engine"
 SECTION =3D "security/tpm"
=20
-LICENSE =3D "openssl"
+LICENSE =3D "OpenSSL"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D11f0ee3af475c85b907426e285c9b=
b52"
=20
 DEPENDS +=3D "openssl trousers"
diff --git a/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb b/meta-tpm=
/recipes-tpm/pcr-extend/pcr-extend_git.bb
index 77f65ae..45da416 100644
--- a/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
+++ b/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
@@ -1,7 +1,7 @@
 SUMMARY =3D "Command line utility to extend hash of arbitrary data into =
a TPMs PCR."
 HOMEPAGE =3D "https://github.com/flihp/pcr-extend"
 SECTION =3D "security/tpm"
-LICENSE =3D "GPLv2"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4=
263"
=20
 DEPENDS =3D "libtspi"
diff --git a/recipes-ids/aide/aide_0.17.3.bb b/recipes-ids/aide/aide_0.17=
.3.bb
index fbfa8a7..b1fb58d 100644
--- a/recipes-ids/aide/aide_0.17.3.bb
+++ b/recipes-ids/aide/aide_0.17.3.bb
@@ -1,7 +1,7 @@
 SUMMARY =3D "Advanced Intrusion Detection Environment"
 HOMEPAGE =3D "https://aide.github.io"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4=
263"
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
=20
 DEPENDS =3D "bison-native libpcre"
=20
diff --git a/recipes-ids/ossec/ossec-hids_3.6.0.bb b/recipes-ids/ossec/os=
sec-hids_3.6.0.bb
index 853facf..b0759b1 100644
--- a/recipes-ids/ossec/ossec-hids_3.6.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.6.0.bb
@@ -1,5 +1,5 @@
 SUMMARY =3D "A full platform to monitor and control your systems"
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dd625d1520b5e38faefb81cf9772ba=
dc9"
=20
=20
diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripw=
ire/tripwire_2.4.3.7.bb
index 5bb0e3e..9149e89 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -3,7 +3,7 @@ DESCRIPTION =3D "Open Source Tripwire=C2=AE software is a=
 security and data \
 integrity tool useful for monitoring and alerting on specific file chang=
e(s) on a range of systems"
 HOMEPAGE=3D"http://sourceforge.net/projects/tripwire"
 SECTION =3D "security Monitor/Admin"
-LICENSE =3D "GPLv2"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D1c069be8dbbe48e89b580ab4ed86c=
127"
=20
 SRCREV =3D "6e64a9e5b70a909ec439bc5a099e3fcf38c614b0"
diff --git a/recipes-mac/AppArmor/apparmor_3.0.4.bb b/recipes-mac/AppArmo=
r/apparmor_3.0.4.bb
index 8ad3c76..046a3a0 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.4.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.4.bb
@@ -8,7 +8,7 @@ DESCRIPTION =3D "user-space parser utility for AppArmor \
 HOMEAPAGE =3D "http://apparmor.net/"
 SECTION =3D "admin"
=20
-LICENSE =3D "GPLv2 & GPLv2+ & BSD-3-Clause & LGPLv2.1+"
+LICENSE =3D "GPL-2.0-only & GPL-2.0-or-later & BSD-3-Clause & LGPL-2.1-o=
r-later"
 LIC_FILES_CHKSUM =3D "file://${S}/LICENSE;md5=3Dfd57a4b0bc782d7b80fd431f=
10bbf9d0"
=20
 DEPENDS =3D "bison-native apr gettext-native coreutils-native swig-nativ=
e"
diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-t=
ools/ccs-tools_1.8.4.bb
index 08da24a..8d148bb 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "Tomoyo"
 DESCRIPTION =3D "TOMOYO Linux is a Mandatory Access Control (MAC) implem=
entation for Linux that can be used to increase the security of a system,=
 while also being useful purely as a system analysis tool. \nTo start via=
 command line add: \nsecurity=3Dtomoyo TOMOYO_trigger=3D/usr/lib/systemd/=
systemd \nTo initialize: \n/usr/lib/ccs/init_policy"
=20
 SECTION =3D "security"
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://COPYING.ccs;md5=3D751419260aa954499f7abaaba=
a882bbe"
=20
 DEPENDS =3D "ncurses"
diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1=
.3.1.bb
index 7a8ca78..6c52392 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -1,7 +1,7 @@
 DESCRIPTION =3D "Selection of tools for developers working with Smack"
 HOMEPAGE =3D "https://github.com/smack-team/smack"
 SECTION =3D "Security/Access Control"
-LICENSE =3D "LGPL-2.1"
+LICENSE =3D "LGPL-2.1-only"
=20
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D4fbd65380cdd255951079008b3645=
16c"
=20
diff --git a/recipes-perl/perl/lib-perl_0.63.bb b/recipes-perl/perl/lib-p=
erl_0.63.bb
index 7895864..4c964d5 100644
--- a/recipes-perl/perl/lib-perl_0.63.bb
+++ b/recipes-perl/perl/lib-perl_0.63.bb
@@ -4,7 +4,7 @@ directories to Perl's search path so that later 'use' or =
'require' statements \
 will find modules which are not located in the default search path."
=20
 SECTION =3D "libs"
-LICENSE =3D "Artistic-1.0 | GPL-1.0+"
+LICENSE =3D "Artistic-1.0 | GPL-1.0-or-later"
 PR =3D "r0"
=20
 LIC_FILES_CHKSUM =3D "file://README;beginline=3D26;endline=3D30;md5=3D94=
b119f1a7b8d611efc89b5d562a1a50"
diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipe=
s-scanners/buck-security/buck-security_0.7.bb
index 63e4d7a..881c2a3 100644
--- a/recipes-scanners/buck-security/buck-security_0.7.bb
+++ b/recipes-scanners/buck-security/buck-security_0.7.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "Linux security scanner"
 DESCRIPTION =3D "Buck-Security is a security scanner for Debian and Ubun=
tu Linux. It runs a couple of important checks and helps you to harden yo=
ur Linux \
 system. This enables you to quickly overview the security status of your=
 Linux system."
 SECTION =3D "security"
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=3D80=
1f80980d171dd6425610833a22dbe6"
=20
 SRC_URI =3D "http://sourceforge.net/projects/buck-security/files/buck-se=
curity/buck-security_${PV}/${BPN}_${PV}.tar.gz"
diff --git a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb b/rec=
ipes-scanners/checksecurity/checksecurity_2.0.15.bb
index 9a1d77a..e053a15 100644
--- a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
@@ -1,7 +1,7 @@
 SUMMARY =3D "basic system security checks"
 DESCRIPTION =3D "checksecurity is a simple package which will scan your =
system for several simple security holes."
 SECTION =3D "security"
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=3D80=
1f80980d171dd6425610833a22dbe6"
=20
 SRC_URI =3D "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/c=
hecksecurity_${PV}.tar.gz \
diff --git a/recipes-security/aircrack-ng/aircrack-ng_1.6.bb b/recipes-se=
curity/aircrack-ng/aircrack-ng_1.6.bb
index f76f1df..d3722c0 100644
--- a/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
+++ b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
@@ -1,7 +1,7 @@
 SUMMARY =3D "Aircrack-ng is a set of tools for auditing wireless network=
s"
 DESCRIPTION =3D "Aircrack-ng is an 802.11 WEP and WPA-PSK keys cracking =
program that can recover keys once enough data packets have been captured=
. It implements the standard FMS attack along with some optimizations lik=
e KoreK attacks, as well as the PTW attack, thus making the attack much f=
aster compared to other WEP cracking tools."
 SECTION =3D "security"
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
=20
 LIC_FILES_CHKSUM =3D "file://LICENSE;beginline=3D1;endline=3D2;md5=3D1fb=
d81241fe252ec0f5658a521ab7dd8"
=20
diff --git a/recipes-security/chipsec/chipsec_git.bb b/recipes-security/c=
hipsec/chipsec_git.bb
index 156be09..d6c3ff2 100644
--- a/recipes-security/chipsec/chipsec_git.bb
+++ b/recipes-security/chipsec/chipsec_git.bb
@@ -4,7 +4,7 @@ DESCRIPTION =3D "CHIPSEC is a framework for analyzing the=
 security \
                of PC platforms including hardware, system firmware \
                (BIOS/UEFI), and platform components."
=20
-LICENSE =3D "GPLv2"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbc2d1f9b427be5fb63f6af9da56f7=
c5d"
=20
 SRC_URI =3D "git://github.com/chipsec/chipsec.git;branch=3Dmaster;protoc=
ol=3Dhttps \
diff --git a/recipes-security/libmspack/libmspack_1.9.1.bb b/recipes-secu=
rity/libmspack/libmspack_1.9.1.bb
index 65db10f..1b91f46 100644
--- a/recipes-security/libmspack/libmspack_1.9.1.bb
+++ b/recipes-security/libmspack/libmspack_1.9.1.bb
@@ -1,7 +1,7 @@
 SUMMARY =3D "A library for Microsoft compression formats"
 HOMEPAGE =3D "http://www.cabextract.org.uk/libmspack/"
 SECTION =3D "lib"
-LICENSE =3D "LGPL-2.1"
+LICENSE =3D "LGPL-2.1-only"
 DEPENDS =3D ""
=20
 LIC_FILES_CHKSUM =3D "file://COPYING.LIB;beginline=3D1;endline=3D2;md5=3D=
5b1fd1f66ef926b3c8a5bb00a72a28dd"
diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncr=
ack/ncrack_0.7.bb
index f151e4e..8e6b444 100644
--- a/recipes-security/ncrack/ncrack_0.7.bb
+++ b/recipes-security/ncrack/ncrack_0.7.bb
@@ -3,7 +3,7 @@ DESCRIPTION =3D "Ncrack is designed for high-speed parall=
el testing of network dev
 HOMEPAGE =3D "https://nmap.org/ncrack"
 SECTION =3D "security"
=20
-LICENSE =3D "GPL-2.0"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://COPYING;beginline=3D7;endline=3D12;md5=3D66=
938a7e5b4c118eda78271de14874c2"
=20
 SRCREV =3D "dc570e7e3cec1fb176c0168eaedc723084bd0426"
diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/pax=
ctl/paxctl_0.9.bb
index 55a0dca..5c9aff1 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -3,7 +3,7 @@ DESCRIPTION =3D "paxctl  is  a tool that allows PaX flags=
 to be modified on a \
                kernel  patches  and secure distributions, such as \
                GrSecurity or Adamantix and Hardened Gen-too, respectivel=
y."
 HOMEPAGE =3D "https://pax.grsecurity.net/"	      =20
-LICENSE =3D "GPLv2"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://paxctl.c;beginline=3D1;endline=3D5;md5=3D0d=
dd065c61020dda79729e6bedaed2c7 \
                     file://paxctl-elf.c;beginline=3D1;endline=3D5;md5=3D=
99f453ce7f6d1687ee808982e2924813 \
 		   "
diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/re=
cipes-security/redhat-security/redhat-security_1.0.bb
index d6d4cea..c47688f 100644
--- a/recipes-security/redhat-security/redhat-security_1.0.bb
+++ b/recipes-security/redhat-security/redhat-security_1.0.bb
@@ -1,7 +1,7 @@
 SUMMARY =3D "redhat security tools"
 DESCRIPTION =3D "Tools used by redhat linux distribution for security ch=
ecks"
 SECTION =3D "security"
-LICENSE =3D "GPLv2"
+LICENSE =3D "GPL-2.0-only"
 LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=3D80=
1f80980d171dd6425610833a22dbe6"
=20
 SRC_URI =3D "file://find-chroot-py.sh \
--=20
2.35.1


