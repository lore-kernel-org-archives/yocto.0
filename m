Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1476E00754; Fri, 13 Mar 2015 14:25:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7673AE003A8
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 14:25:14 -0700 (PDT)
Received: by padfa1 with SMTP id fa1so32376307pad.9
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 14:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=27Gvc8YLUvTdJOv5oOsrmtUu2ItH/m70OQkoaQGGTrE=;
	b=x1DESeAOMxLKq4sB1/pNv7nea19z0TZKDS9nTWqojMNx4ivvyVQSGG9JklV3xEXZx5
	W58J/Rfuztt2NBicJQSMGH5wvQ2/kuYzXyslK8X6LiNScLevfOBCymVzDaZFzQGigHck
	T15Mq8ZoNxO4FGoAfP5xlqGhmFILo2hBzMnzPMvLjvxr3irFUykZm53uyuz/QsQl4YQO
	+6CTctU4ibdCiBRYLX6X6Pji5yQ2fEGKzOmUGColY91r2hrbr1TThqTOG3PapzMJlSbP
	PLjTzGEedADodObq4xwzQDSzDhOA84nAqF6SOHMpzHrFGa1e8F1bN79SF393nXSrRjOQ
	5UYA==
X-Received: by 10.66.167.232 with SMTP id zr8mr78497760pab.23.1426281914339;
	Fri, 13 Mar 2015 14:25:14 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id i6sm5018034pdm.4.2015.03.13.14.25.12
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Mar 2015 14:25:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Mar 2015 14:25:10 -0700
Message-Id: <1426281910-1533-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] suricata: update to 2.0.7
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
X-List-Received-Date: Fri, 13 Mar 2015 21:25:18 -0000

this includes CVE-2015-0928

moved patches and files to more generic dir name

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../suricata/{suricata-2.0.6 => files}/no_libhtp_build.patch        | 0
 .../suricata/{suricata-2.0.6 => files}/no_pcap_pkgconf_check.patch  | 0
 recipes-security/suricata/{suricata-2.0.6 => files}/suricata.yaml   | 0
 .../suricata/{suricata-2.0.6 => files}/volatiles.03_suricata        | 0
 recipes-security/suricata/{libhtp_0.5.16.bb => libhtp_0.5.17.bb}    | 4 +++-
 recipes-security/suricata/suricata.inc                              | 6 +++---
 recipes-security/suricata/{suricata_2.0.6.bb => suricata_2.0.7.bb}  | 0
 7 files changed, 6 insertions(+), 4 deletions(-)
 rename recipes-security/suricata/{suricata-2.0.6 => files}/no_libhtp_build.patch (100%)
 rename recipes-security/suricata/{suricata-2.0.6 => files}/no_pcap_pkgconf_check.patch (100%)
 rename recipes-security/suricata/{suricata-2.0.6 => files}/suricata.yaml (100%)
 rename recipes-security/suricata/{suricata-2.0.6 => files}/volatiles.03_suricata (100%)
 rename recipes-security/suricata/{libhtp_0.5.16.bb => libhtp_0.5.17.bb} (84%)
 rename recipes-security/suricata/{suricata_2.0.6.bb => suricata_2.0.7.bb} (100%)

diff --git a/recipes-security/suricata/suricata-2.0.6/no_libhtp_build.patch b/recipes-security/suricata/files/no_libhtp_build.patch
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.6/no_libhtp_build.patch
rename to recipes-security/suricata/files/no_libhtp_build.patch
diff --git a/recipes-security/suricata/suricata-2.0.6/no_pcap_pkgconf_check.patch b/recipes-security/suricata/files/no_pcap_pkgconf_check.patch
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.6/no_pcap_pkgconf_check.patch
rename to recipes-security/suricata/files/no_pcap_pkgconf_check.patch
diff --git a/recipes-security/suricata/suricata-2.0.6/suricata.yaml b/recipes-security/suricata/files/suricata.yaml
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.6/suricata.yaml
rename to recipes-security/suricata/files/suricata.yaml
diff --git a/recipes-security/suricata/suricata-2.0.6/volatiles.03_suricata b/recipes-security/suricata/files/volatiles.03_suricata
similarity index 100%
rename from recipes-security/suricata/suricata-2.0.6/volatiles.03_suricata
rename to recipes-security/suricata/files/volatiles.03_suricata
diff --git a/recipes-security/suricata/libhtp_0.5.16.bb b/recipes-security/suricata/libhtp_0.5.17.bb
similarity index 84%
rename from recipes-security/suricata/libhtp_0.5.16.bb
rename to recipes-security/suricata/libhtp_0.5.17.bb
index 9d07133..7390e20 100644
--- a/recipes-security/suricata/libhtp_0.5.16.bb
+++ b/recipes-security/suricata/libhtp_0.5.17.bb
@@ -4,10 +4,12 @@ require suricata.inc
 
 LIC_FILES_CHKSUM = "file://../LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
 
+DEPENDS = "zlib"
+
 inherit autotools pkgconfig
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
-S = "${WORKDIR}/suricata-2.0.6/${BPN}"
+S = "${WORKDIR}/suricata-2.0.7/${BPN}"
 
 RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index a7f95b1..79622dc 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,7 +2,7 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-2.0.6.tar.gz"
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-2.0.7.tar.gz"
 
-SRC_URI[md5sum] = "14bfb3adc184d4da321c93ed9abae500"
-SRC_URI[sha256sum] = "e833e35ea3b6029bbdef81660af22e8f563494eac85d97618d761ce1b69c78ec"
+SRC_URI[md5sum] = "43cd7dd958d434c580426020079914d7"
+SRC_URI[sha256sum] = "c5c3ccebeecbace39df0ff2d50ec4515b541103ffaa5e33cd1dc79d4955c0dfd"
diff --git a/recipes-security/suricata/suricata_2.0.6.bb b/recipes-security/suricata/suricata_2.0.7.bb
similarity index 100%
rename from recipes-security/suricata/suricata_2.0.6.bb
rename to recipes-security/suricata/suricata_2.0.7.bb
-- 
1.9.1


