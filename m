Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 291F8C25B76
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 09:04:06 +0000 (UTC)
Received: from esa12.hc1455-7.c3s2.iphmx.com (esa12.hc1455-7.c3s2.iphmx.com [139.138.37.100])
 by mx.groups.io with SMTP id smtpd.web10.78809.1717405442815818194
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 02:04:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=hTOTvg+U;
 spf=pass (domain: fujitsu.com, ip: 139.138.37.100, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1717405442; x=1748941442;
  h=from:to:cc:subject:date:message-id;
  bh=9apwLWB+1W79vqbXthR/3ZBBYznrN2WuafaqpP1vtoQ=;
  b=hTOTvg+U3a1jVWg3tfvDKXE5pM6J0tMCn1CXIa1uzlQdbrOp9xVVLAie
   z5nvao6hlKuDysuQRTtAKZ6dHeHMfwBdhahKEe8xKCVwUsQOOau+vGmrt
   8OQ4JhzrFvMR5V1peWcXaNxVQqOL8LcQHSPI0ewHuRMSqd3PTZeMyPg6U
   7XGmffichatzxS94Lu2CAuSJMys7rrEfZiWoO6o6LapsKKsjTFdkNYBg6
   j74Rj4B/nMP4Gja7lftys6uYIdy8Xsjqf4XCmuwdpwRaioZJbvbFby537
   aYYJ+GTzXl3dmY3arJgGAwi/8unNDJtORg4VJywkqIPt72PUTQAd0gly8
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="140589532"
X-IronPort-AV: E=Sophos;i="6.08,211,1712588400"; 
   d="scan'208";a="140589532"
Received: from unknown (HELO yto-r4.gw.nic.fujitsu.com) ([218.44.52.220])
  by esa12.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2024 18:03:59 +0900
Received: from yto-m3.gw.nic.fujitsu.com (yto-nat-yto-m3.gw.nic.fujitsu.com [192.168.83.66])
	by yto-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 833B7D9F33
	for <yocto@lists.yoctoproject.org>; Mon,  3 Jun 2024 18:03:57 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 88BB9F76D
	for <yocto@lists.yoctoproject.org>; Mon,  3 Jun 2024 18:03:56 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id D7DBD6B5D8
	for <yocto@lists.yoctoproject.org>; Mon,  3 Jun 2024 18:03:55 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 75B321A000A;
	Mon,  3 Jun 2024 17:03:55 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH] recipes: Start WORKDIR ->  UNPACKDIR transition
Date: Mon,  3 Jun 2024 17:03:47 +0800
Message-Id: <1717405427-21118-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28428.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28428.006
X-TMASE-Result: 10--11.922100-10.000000
X-TMASE-MatchedRID: IAz7A8n5dotAJjQFQUSfYQPZZctd3P4BRzUPAqhCjthWIjPHgtaVHN4Z
	YZx9K0RF4iklOQCWq9IPzir4M+HQqTBF7stuNMMxVtOGv6/35SVzNCdGumZsSRZa9JpYZmw7Yu7
	5t2CT32uq1cHFkFbXYbXYdqC9vAOOL/tBTZzO5Q3vVbHa5Rs8t4KMU5VqphqVyPRAwD/3abYFIf
	B8jECDrZZt8RTRxx4gMu72AZBHRENQnxx7VTzjDUhwlOfYeSqxfrTt+hmA5bLmtxaXlcsGbboUM
	MoJRGQvwai6ZcdQP8PRS7KDEcIl9Mw0vFrEHGWzs0T0PE+KHuUIKj6WwO7KdVjH3z6RfJRwcLji
	KdfvhjdYzJcD0gVKShNRcSq4Vj+Af0iF5TZPPO9ZNYSHk3Zr0QK0ZgbTOeKU7x2zVUgFuaCbA4c
	XFiryZ5fzUkBpc0729rm+L2YNiKyR9GF2J2xqMxRFJJyf5BJeXqkpjF9F0imZafmwCSMyA1cppC
	zPq+1UOwBXM346/+wVVVgwADjXUYPaod4O5H5ItLXIET4q45OH9xIskq/yaZ39wZZWZoUn
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 09:04:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63258

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../recipes-scanners/checksecurity/checksecurity_2.0.16.bb    | 2 +-
 .../meta-perl/recipes-security/bastille/bastille_3.2.1.bb     | 2 +-
 .../meta-perl/recipes-security/nikto/nikto_2.1.6.bb           | 2 +-
 .../recipes-security/fail2ban/python3-fail2ban_1.0.2.bb       | 2 +-
 meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb                   | 2 +-
 meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb                     | 2 +-
 meta-tpm/recipes-tpm1/hoth/libhoth_git.bb                     | 2 +-
 .../openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb            | 2 +-
 meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb            | 2 +-
 .../recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb     | 2 +-
 meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb          | 2 +-
 meta-tpm/recipes-tpm1/trousers/trousers_git.bb                | 2 +-
 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb   | 2 +-
 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb          | 2 +-
 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb  | 2 +-
 meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb            | 2 +-
 recipes-compliance/lynis/lynis_3.1.1.bb                       | 2 +-
 recipes-compliance/openscap/openscap_1.3.9.bb                 | 2 +-
 .../scap-security-guide/scap-security-guide_0.1.71.bb         | 2 +-
 recipes-ids/crowdsec/crowdsec_1.1.1.bb                        | 2 +-
 recipes-ids/ossec/ossec-hids_3.7.0.bb                         | 2 +-
 recipes-ids/samhain/samhain.inc                               | 2 +-
 recipes-ids/suricata/libhtp_0.5.45.bb                         | 4 ++--
 recipes-ids/tripwire/tripwire_2.4.3.7.bb                      | 2 +-
 recipes-kernel/lkrg/lkrg-module_0.9.7.bb                      | 2 +-
 recipes-mac/AppArmor/apparmor_3.1.3.bb                        | 2 +-
 recipes-mac/ccs-tools/ccs-tools_1.8.9.bb                      | 2 +-
 recipes-mac/smack/mmap-smack-test_1.0.bb                      | 2 +-
 recipes-mac/smack/smack-test_1.0.bb                           | 2 +-
 recipes-mac/smack/smack_1.3.1.bb                              | 2 +-
 recipes-mac/smack/tcp-smack-test_1.0.bb                       | 2 +-
 recipes-mac/smack/udp-smack-test_1.0.bb                       | 2 +-
 recipes-perl/perl/lib-perl_0.63.bb                            | 2 +-
 recipes-perl/perl/libwhisker2-perl_2.5.bb                     | 2 +-
 recipes-scanners/buck-security/buck-security_0.7.bb           | 2 +-
 recipes-scanners/checksec/checksec_2.6.0.bb                   | 2 +-
 recipes-scanners/clamav/clamav_0.104.4.bb                     | 2 +-
 recipes-security/Firejail/firejail_0.9.72.bb                  | 2 +-
 recipes-security/chipsec/chipsec_1.9.1.bb                     | 2 +-
 recipes-security/fscrypt/fscrypt_1.1.0.bb                     | 2 +-
 recipes-security/fscryptctl/fscryptctl_1.1.0.bb               | 2 +-
 recipes-security/glome/glome_git.bb                           | 2 +-
 .../google-authenticator-libpam_1.09.bb                       | 2 +-
 recipes-security/krill/krill_0.12.3.bb                        | 2 +-
 recipes-security/libest/libest_3.2.0.bb                       | 2 +-
 recipes-security/libmhash/libmhash_0.9.9.9.bb                 | 2 +-
 recipes-security/libmspack/libmspack_1.11.bb                  | 2 +-
 recipes-security/ncrack/ncrack_0.7.bb                         | 2 +-
 recipes-security/redhat-security/redhat-security_1.0.bb       | 2 +-
 49 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
index 8006c9f..7bd796f 100644
--- a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
+++ b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
@@ -10,7 +10,7 @@ SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecuri
 
 SRC_URI[sha256sum] = "9803b3760e9ec48e06ebaf48cec081db48c6fe72254a476224e4c5c55ed97fb0"
 
-S = "${WORKDIR}/checksecurity-${PV}+nmu1"
+S = "${UNPACKDIR}/checksecurity-${PV}+nmu1"
 
 
 # allow for anylocal, no need to patch
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
index f2ef335..1c3610c 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
@@ -35,7 +35,7 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
 SRC_URI[sha256sum] = "0ea25191b1dc1c8f91e1b6f8cb5436a3aa1e57418809ef902293448efed5021a"
 
-S = "${WORKDIR}/Bastille"
+S = "${UNPACKDIR}/Bastille"
 
 do_install () {
 	install -d ${D}${sbindir}
diff --git a/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb b/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
index 8c21b30..4e882fa 100644
--- a/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
+++ b/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
@@ -10,7 +10,7 @@ SRCREV = "f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79"
 SRC_URI = "git://github.com/sullo/nikto.git;branch=master;protocol=https \
            file://location.patch"
 
-S = "${WORKDIR}/git/program"
+S = "${UNPACKDIR}/git/program"
 
 do_install() {
     install -d ${D}${bindir}
diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
index bf5f87d..0ee3206 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
@@ -24,7 +24,7 @@ inherit systemd
 
 SYSTEMD_SERVICE:${PN} = "fail2ban.service"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_compile () {
     cd ${S}
diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
index a860319..e409529 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.6.bb
@@ -7,7 +7,7 @@ SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.9;protocol=
 
 PE = "1"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 inherit autotools-brokensep pkgconfig perlnative
 
 PACKAGECONFIG ?= "openssl"
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
index 7a538da..967009c 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
@@ -10,7 +10,7 @@ SRCREV = "d2849a9f5ced70438d67036693438344b47b4161"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.8;protocol=https"
 PE = "1"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 PARALLEL_MAKE = ""
 inherit autotools pkgconfig perlnative
diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
index df1dc04..434bec7 100644
--- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
+++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
@@ -11,7 +11,7 @@ SRCREV = "e4827163741e0804f12ac96c81b8e97649be6795"
 
 DEPENDS += "libusb1"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit pkgconfig meson
 
diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
index e3e643e..79a7402 100644
--- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
+++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
@@ -17,7 +17,7 @@ SRC_URI = "\
 "
 SRCREV = "b28de5065e6eb9aa5d5afe2276904f7624c2cbaf"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit autotools-brokensep pkgconfig
 
diff --git a/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb b/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
index 45da416..2e38d5c 100644
--- a/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
+++ b/meta-tpm/recipes-tpm1/pcr-extend/pcr-extend_git.bb
@@ -14,7 +14,7 @@ SRC_URI = "git://github.com/flihp/pcr-extend.git;branch=master;protocol=https \
 
 inherit autotools
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_compile() {
     oe_runmake -C ${S}/src
diff --git a/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb b/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
index 4672bba..383dec1 100644
--- a/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
+++ b/meta-tpm/recipes-tpm1/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
@@ -18,5 +18,5 @@ DEPENDS = "libtspi tpm-tools"
 SRC_URI = "git://git.code.sf.net/p/tpmquotetools/tpm-quote-tools;branch=master"
 SRCREV = "4511874d5c9b4504bb96e94f8a14bd6c39a36295"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 inherit autotools
diff --git a/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb b/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
index b47d53a..39851f3 100644
--- a/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
+++ b/meta-tpm/recipes-tpm1/tpm-tools/tpm-tools_1.3.9.2.bb
@@ -22,7 +22,7 @@ SRC_URI = " \
 
 inherit autotools-brokensep gettext
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_configure:prepend () {
 	mkdir -p po
diff --git a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
index 192c66c..ba20d74 100644
--- a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
@@ -18,7 +18,7 @@ SRC_URI = " \
         file://0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch \
     	"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit autotools pkgconfig useradd update-rc.d ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb
index 7ed9569..c15fad3 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_183-2024-03-27.bb
@@ -23,7 +23,7 @@ SRCREV = "c37c74438429e1d5fe465232e7bf894b239a2cd4"
 
 UPSTREAM_CHECK_GITTAGREGEX = "rev(?P<pver>\d+(\-\d+)+)"
 
-S = "${WORKDIR}/git/src"
+S = "${UNPACKDIR}/git/src"
 
 CFLAGS += "-Wno-error=maybe-uninitialized"
 
diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb
index 8e941d1..c86a889 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_2.2.0.bb
@@ -26,4 +26,4 @@ UPSTREAM_CHECK_GITTAGREGEX = "v(?P<pver>\d+(\.\d+)+)"
 
 EXTRA_OECONF = "--disable-tpm-1.2"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 9c60e2b..c5bbca0 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -14,7 +14,7 @@ SRCREV = "0241b08f069f0fdb3612f5c1b938144dbe9be811"
 
 UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit autotools pkgconfig
 
diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
index d324e33..a8a7b20 100644
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.3.0.bb
@@ -14,4 +14,4 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=master;protocol=h
 
 inherit autotools-brokensep pkgconfig
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
diff --git a/recipes-compliance/lynis/lynis_3.1.1.bb b/recipes-compliance/lynis/lynis_3.1.1.bb
index b69f4df..f6fddd0 100644
--- a/recipes-compliance/lynis/lynis_3.1.1.bb
+++ b/recipes-compliance/lynis/lynis_3.1.1.bb
@@ -12,7 +12,7 @@ SRC_URI[sha256sum] = "d72f4ee7325816bb8dbfcf31eb104207b9fe58a2493c2a875373746a71
 
 #UPSTREAM_CHECK = "https://downloads.cisofy.com/lynis"
 
-S = "${WORKDIR}/${BPN}"
+S = "${UNPACKDIR}/${BPN}"
 
 inherit autotools-brokensep
 
diff --git a/recipes-compliance/openscap/openscap_1.3.9.bb b/recipes-compliance/openscap/openscap_1.3.9.bb
index b35ce9f..e000779 100644
--- a/recipes-compliance/openscap/openscap_1.3.9.bb
+++ b/recipes-compliance/openscap/openscap_1.3.9.bb
@@ -13,7 +13,7 @@ DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native
 SRCREV = "0e7f654570971c1acee6dd3f34b17121372d6152"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https "
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit cmake pkgconfig python3native python3targetconfig perlnative systemd
 
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
index 5e45332..100ee85 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
@@ -15,7 +15,7 @@ SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=stable;protocol=
 
 DEPENDS = "openscap-native python3-pyyaml-native python3-jinja2-native libxml2-native expat-native coreutils-native"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 B = "${S}/build"
 
 inherit cmake pkgconfig python3native python3targetconfig ptest
diff --git a/recipes-ids/crowdsec/crowdsec_1.1.1.bb b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
index 81f2b8f..deccecf 100644
--- a/recipes-ids/crowdsec/crowdsec_1.1.1.bb
+++ b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
@@ -12,7 +12,7 @@ GO_IMPORT = "import"
 
 inherit go
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_compile() {
     export GOARCH="${TARGET_GOARCH}"
diff --git a/recipes-ids/ossec/ossec-hids_3.7.0.bb b/recipes-ids/ossec/ossec-hids_3.7.0.bb
index 829715b..fbd1294 100644
--- a/recipes-ids/ossec/ossec-hids_3.7.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.7.0.bb
@@ -15,7 +15,7 @@ UPSTREAM_CHECK_COMMITS = "1"
 
 inherit autotools-brokensep  useradd
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 
 OSSEC_DIR="/var/ossec"
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index f5bea1d..1bbe7f4 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -26,7 +26,7 @@ SRC_URI[sha256sum] = "ae6ee8eff3cb111b7fc14a57bcc258443dd0bcf1bfacfdf229935ed053
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
 
-S = "${WORKDIR}/samhain-${PV}"
+S = "${UNPACKDIR}/samhain-${PV}"
 
 inherit autotools-brokensep update-rc.d pkgconfig systemd
 
diff --git a/recipes-ids/suricata/libhtp_0.5.45.bb b/recipes-ids/suricata/libhtp_0.5.45.bb
index cc8285c..4273e78 100644
--- a/recipes-ids/suricata/libhtp_0.5.45.bb
+++ b/recipes-ids/suricata/libhtp_0.5.45.bb
@@ -13,9 +13,9 @@ inherit autotools-brokensep pkgconfig
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
-#S = "${WORKDIR}/suricata-${VER}/${BPN}"
+#S = "${UNPACKDIR}/suricata-${VER}/${BPN}"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_configure () {
     cd ${S}
diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index 9149e89..fcb65f6 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -19,7 +19,7 @@ SRC_URI = "\
 	file://run-ptest \
        "
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit autotools-brokensep update-rc.d ptest
 
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.7.bb b/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
index 020c3a1..751c045 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
@@ -13,7 +13,7 @@ SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main"
 
 SRCREV = "5dc5cfea1f4dc8febdd5274d99e277c17df06acc"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit module kernel-module-split
 
diff --git a/recipes-mac/AppArmor/apparmor_3.1.3.bb b/recipes-mac/AppArmor/apparmor_3.1.3.bb
index fd649e4..27c518c 100644
--- a/recipes-mac/AppArmor/apparmor_3.1.3.bb
+++ b/recipes-mac/AppArmor/apparmor_3.1.3.bb
@@ -22,7 +22,7 @@ SRC_URI = " \
     "
 
 SRCREV = "e69cb5047946818e6a9df326851483bb075a5cfe"
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 PARALLEL_MAKE = ""
 
diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
index 8185e51..a746c56 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
@@ -12,7 +12,7 @@ SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
 
 SRC_URI[sha256sum] = "7900126cf2dd8706c42c2c1ef7a37fd8b50f1505abd7d9c3d653dc390fb4d620"
 
-S = "${WORKDIR}/${BPN}"
+S = "${UNPACKDIR}/${BPN}"
 
 inherit features_check
 
diff --git a/recipes-mac/smack/mmap-smack-test_1.0.bb b/recipes-mac/smack/mmap-smack-test_1.0.bb
index 9d11509..da96032 100644
--- a/recipes-mac/smack/mmap-smack-test_1.0.bb
+++ b/recipes-mac/smack/mmap-smack-test_1.0.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 
 SRC_URI = "file://mmap.c" 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 do_compile() {
     ${CC} mmap.c ${LDFLAGS} -o mmap_test
 }
diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index 3ab57c6..68155ec 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -10,7 +10,7 @@ SRC_URI = " \
            file://test_smack_onlycap.sh \
 " 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 
 inherit features_check
 
diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index 6c52392..4333477 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -25,7 +25,7 @@ inherit features_check
 REQUIRED_DISTRO_FEATURES = "smack"
 
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
diff --git a/recipes-mac/smack/tcp-smack-test_1.0.bb b/recipes-mac/smack/tcp-smack-test_1.0.bb
index d2b3f6b..4d65b23 100644
--- a/recipes-mac/smack/tcp-smack-test_1.0.bb
+++ b/recipes-mac/smack/tcp-smack-test_1.0.bb
@@ -8,7 +8,7 @@ SRC_URI = "file://tcp_server.c \
            file://test_smack_tcp_sockets.sh \
 " 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 
 do_compile() {
     ${CC} tcp_client.c ${LDFLAGS} -o tcp_client
diff --git a/recipes-mac/smack/udp-smack-test_1.0.bb b/recipes-mac/smack/udp-smack-test_1.0.bb
index 9193f89..b277b27 100644
--- a/recipes-mac/smack/udp-smack-test_1.0.bb
+++ b/recipes-mac/smack/udp-smack-test_1.0.bb
@@ -8,7 +8,7 @@ SRC_URI = "file://udp_server.c \
            file://test_smack_udp_sockets.sh \
 " 
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 do_compile() {
     ${CC} udp_client.c ${LDFLAGS} -o udp_client
     ${CC} udp_server.c ${LDFLAGS} -o udp_server
diff --git a/recipes-perl/perl/lib-perl_0.63.bb b/recipes-perl/perl/lib-perl_0.63.bb
index 25d0890..6fc44e4 100644
--- a/recipes-perl/perl/lib-perl_0.63.bb
+++ b/recipes-perl/perl/lib-perl_0.63.bb
@@ -16,7 +16,7 @@ SRC_URI = "http://www.cpan.org/authors/id/S/SM/SMUELLER/lib-${PV}.tar.gz"
 SRC_URI[md5sum] = "8607ac4e0d9d43585ec28312f52df67c"
 SRC_URI[sha256sum] = "72f63db9220098e834d7a38231626bd0c9b802c1ec54a628e2df35f3818e5a00"
 
-S = "${WORKDIR}/lib-${PV}"
+S = "${UNPACKDIR}/lib-${PV}"
 
 EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
 
diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
index c58d883..2c32bfc 100644
--- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
+++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
@@ -11,7 +11,7 @@ SRC_URI = "http://sourceforge.net/projects/whisker/files/libwhisker/${PV}/libwhi
 SRC_URI[md5sum] = "7cc1718dddde8f9a439d5622ae2f37eb"
 SRC_URI[sha256sum] = "f45a1cf2ad2637b29dd1b13d7221ea12e3923ea09d107ced446400f19070a42f"
 
-S = "${WORKDIR}/libwhisker2-2.5"
+S = "${UNPACKDIR}/libwhisker2-2.5"
 
 inherit cpan-base
 
diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipes-scanners/buck-security/buck-security_0.7.bb
index 85884a7..5d4de10 100644
--- a/recipes-scanners/buck-security/buck-security_0.7.bb
+++ b/recipes-scanners/buck-security/buck-security_0.7.bb
@@ -10,7 +10,7 @@ SRC_URI = "http://sourceforge.net/projects/buck-security/files/buck-security/buc
 SRC_URI[md5sum] = "611a3e9bb7ed8a8270aa15216c321c53"
 SRC_URI[sha256sum] = "c533c6631ec3554dd8d39d2d1c3ed44badbbf50810ebb75469c74639fa294b01"
 
-S = "${WORKDIR}/${BPN}_${PV}"
+S = "${UNPACKDIR}/${BPN}_${PV}"
 
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
diff --git a/recipes-scanners/checksec/checksec_2.6.0.bb b/recipes-scanners/checksec/checksec_2.6.0.bb
index 1ba3721..3712e68 100644
--- a/recipes-scanners/checksec/checksec_2.6.0.bb
+++ b/recipes-scanners/checksec/checksec_2.6.0.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=879b2147c754bc040c29e9c3b84da836"
 SRCREV = "2753ebb89fcdc96433ae8a4c4e5a49214a845be2"
 SRC_URI = "git://github.com/slimm609/checksec.sh;branch=main;protocol=https"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_install() {
     install -d ${D}${bindir}
diff --git a/recipes-scanners/clamav/clamav_0.104.4.bb b/recipes-scanners/clamav/clamav_0.104.4.bb
index 102f267..86412ad 100644
--- a/recipes-scanners/clamav/clamav_0.104.4.bb
+++ b/recipes-scanners/clamav/clamav_0.104.4.bb
@@ -21,7 +21,7 @@ SRC_URI = "git://github.com/Cisco-Talos/clamav;branch=rel/0.104;protocol=https \
     file://headers_fixup.patch \
     file://oe_cmake_fixup.patch \
 "
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 LEAD_SONAME = "libclamav.so"
 SO_VER = "9.6.0"
diff --git a/recipes-security/Firejail/firejail_0.9.72.bb b/recipes-security/Firejail/firejail_0.9.72.bb
index 5713f46..10023c1 100644
--- a/recipes-security/Firejail/firejail_0.9.72.bb
+++ b/recipes-security/Firejail/firejail_0.9.72.bb
@@ -16,7 +16,7 @@ SRC_URI = "git://github.com/netblue30/firejail.git;protocol=https;branch=master
 
 DEPENDS = "libseccomp"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit autotools-brokensep pkgconfig bash-completion features_check
 
diff --git a/recipes-security/chipsec/chipsec_1.9.1.bb b/recipes-security/chipsec/chipsec_1.9.1.bb
index 9fbdaa7..24451f8 100644
--- a/recipes-security/chipsec/chipsec_1.9.1.bb
+++ b/recipes-security/chipsec/chipsec_1.9.1.bb
@@ -12,7 +12,7 @@ DEPENDS = "virtual/kernel nasm-native"
 SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
 SRCREV = "d8c2a606bf440c32196c6289a7a458f3ae3107cc"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit module setuptools3
 
diff --git a/recipes-security/fscrypt/fscrypt_1.1.0.bb b/recipes-security/fscrypt/fscrypt_1.1.0.bb
index ea9593b..b50c119 100644
--- a/recipes-security/fscrypt/fscrypt_1.1.0.bb
+++ b/recipes-security/fscrypt/fscrypt_1.1.0.bb
@@ -20,7 +20,7 @@ inherit go goarch features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_compile() {
 	export GOARCH=${TARGET_GOARCH}
diff --git a/recipes-security/fscryptctl/fscryptctl_1.1.0.bb b/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
index 3de2bfa..cf03a18 100644
--- a/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
+++ b/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
@@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 SRCREV = "7c80c73c084ce9ea49a03b814dac7a82fd7b4c23"
 SRC_URI = "git://github.com/google/fscryptctl.git;branch=master;protocol=https"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 do_compile:prepend() {
     sed -i 's/fscryptctl\.1//g' ${S}/Makefile
diff --git a/recipes-security/glome/glome_git.bb b/recipes-security/glome/glome_git.bb
index 8787ddc..b99239e 100644
--- a/recipes-security/glome/glome_git.bb
+++ b/recipes-security/glome/glome_git.bb
@@ -10,7 +10,7 @@ inherit meson pkgconfig
 
 DEPENDS += "openssl"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 SRC_URI = "git://github.com/google/glome.git;branch=master;protocol=https"
 SRCREV = "48d28f82bd51ae4bccc84fbbee93c375b026596b"
 
diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
index 8a0b1ee..ba0531c 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
@@ -8,7 +8,7 @@ SRCREV = "962f353aac6cfc7b804547319db40f8b804f0b6c"
 
 DEPENDS = "libpam"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 inherit autotools features_check
 
diff --git a/recipes-security/krill/krill_0.12.3.bb b/recipes-security/krill/krill_0.12.3.bb
index ee959c2..2e200dd 100644
--- a/recipes-security/krill/krill_0.12.3.bb
+++ b/recipes-security/krill/krill_0.12.3.bb
@@ -15,7 +15,7 @@ include krill-crates.inc
 UPSTREAM_CHECK_URI = "https://github.com/NLnetLabs/${BPN}/releases"
 UPSTREAM_CHECK_GITTAGREGEX = "v(?P<pver>\d+(\.\d+)+)"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 CARGO_SRC_DIR = ""
 
 inherit pkgconfig useradd systemd cargo cargo-update-recipe-crates
diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index b4c6165..04bfcee 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -20,7 +20,7 @@ EXTRA_OECONF = "--disable-pthreads --with-ssl-dir=${STAGING_LIBDIR}"
 CFLAGS += "-fcommon"
 LDFLAGS:append:libc-musl = " -lexecinfo"
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
 
diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 49139d2..2f50e2d 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -10,7 +10,7 @@ HOMEPAGE = "http://mhash.sourceforge.net/"
 LICENSE = "LGPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
-S = "${WORKDIR}/mhash-${PV}"
+S = "${UNPACKDIR}/mhash-${PV}"
 
 SECTION = "libs"
 
diff --git a/recipes-security/libmspack/libmspack_1.11.bb b/recipes-security/libmspack/libmspack_1.11.bb
index 59df84b..338701e 100644
--- a/recipes-security/libmspack/libmspack_1.11.bb
+++ b/recipes-security/libmspack/libmspack_1.11.bb
@@ -11,6 +11,6 @@ SRC_URI = "git://github.com/kyz/libmspack.git;branch=master;protocol=https"
 
 inherit autotools
 
-S = "${WORKDIR}/git/${BPN}"
+S = "${UNPACKDIR}/git/${BPN}"
 
 inherit autotools
diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncrack/ncrack_0.7.bb
index 8e6b444..881ee38 100644
--- a/recipes-security/ncrack/ncrack_0.7.bb
+++ b/recipes-security/ncrack/ncrack_0.7.bb
@@ -13,6 +13,6 @@ DEPENDS = "openssl zlib"
 
 inherit autotools-brokensep
 
-S = "${WORKDIR}/git"
+S = "${UNPACKDIR}/git"
 
 INSANE_SKIP:${PN} = "already-stripped"
diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/recipes-security/redhat-security/redhat-security_1.0.bb
index c47688f..b4f1970 100644
--- a/recipes-security/redhat-security/redhat-security_1.0.bb
+++ b/recipes-security/redhat-security/redhat-security_1.0.bb
@@ -18,7 +18,7 @@ SRC_URI = "file://find-chroot-py.sh \
            file://selinux-check-devices.sh \
            file://selinux-ls-unconfined.sh"
 
-S = "${WORKDIR}"
+S = "${UNPACKDIR}"
 
 do_install() {
 	install -d ${D}${bindir}
-- 
2.34.1


