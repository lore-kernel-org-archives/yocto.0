Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96F91E00916; Thu,  1 Jan 2015 10:31:05 -0800 (PST)
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
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E7F7E006EF
	for <yocto@yoctoproject.org>; Thu,  1 Jan 2015 10:31:00 -0800 (PST)
Received: by mail-pd0-f177.google.com with SMTP id ft15so22461563pdb.22
	for <yocto@yoctoproject.org>; Thu, 01 Jan 2015 10:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=JsP4R0IhPSw9KAh3hfb7TvAiwAjnn6Rf01M30jCdVFg=;
	b=OdRJwJhaX0cyw9Qnlofe9mpodMCcQhoV28weyEMMXZwypBA/3Feh7kabDA4iNuafvk
	jtFpjK5maxrH8V9735bdz8K6+y70WToOeLFOhxix/sccsC8cspXpD5tRY+dRMtyxMU3+
	2YYFUS8zgdDSqDTUBZFR1rEIiBrAh0hd8q/mlgS5ftZ2eXHNeKj1sIl7zfuVLlxcB6Z0
	Qm68C76pNdLbv0FPQuOJmsid+8aF72kPAnRRT89jT3Ja6mGdFrnDJDcm8g6uH2flj387
	ls1MCCrHS385Ti2Fa+KCMpIg1sNKFcuoh6Zr2V/aCJx6QBnDaAhcruGiJiRTNhJIe5VZ
	5ycg==
X-Received: by 10.66.184.144 with SMTP id eu16mr75206762pac.18.1420137060101; 
	Thu, 01 Jan 2015 10:31:00 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	oa8sm44422492pdb.84.2015.01.01.10.30.57 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 01 Jan 2015 10:30:58 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Jan 2015 10:30:43 -0800
Message-Id: <1420137044-32723-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/2] libhtp: add support lib for suricata
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
X-List-Received-Date: Thu, 01 Jan 2015 18:31:05 -0000

include common inc file

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/libhtp_0.5.16.bb | 13 +++++++++++++
 recipes-security/suricata/suricata.inc     |  7 +++++++
 2 files changed, 20 insertions(+)
 create mode 100644 recipes-security/suricata/libhtp_0.5.16.bb
 create mode 100644 recipes-security/suricata/suricata.inc

diff --git a/recipes-security/suricata/libhtp_0.5.16.bb b/recipes-security/suricata/libhtp_0.5.16.bb
new file mode 100644
index 0000000..ede9022
--- /dev/null
+++ b/recipes-security/suricata/libhtp_0.5.16.bb
@@ -0,0 +1,13 @@
+SUMMARY = "LibHTP is a security-aware parser for the HTTP protocol and the related bits and pieces."
+
+require suricata.inc
+
+LIC_FILES_CHKSUM = "file://../LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
+
+inherit autotools pkgconfig
+
+CFLAGS += "-D_DEFAULT_SOURCE"
+
+S = "${WORKDIR}/suricata-2.0.5/${BPN}"
+
+RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
new file mode 100644
index 0000000..1dcffcd
--- /dev/null
+++ b/recipes-security/suricata/suricata.inc
@@ -0,0 +1,7 @@
+SECTION = "security Monitor/Admin"
+LICENSE = "GPLv2"
+
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-2.0.5.tar.gz"
+
+SRC_URI[md5sum] = "2ff10b929bf7d5fd4d345b0fd8f268a1"
+SRC_URI[sha256sum] = "57b1120e91bd4e348e1a4cee9eb7b197d05fc25169e062f1a11f5dd4b9322c60"
-- 
1.9.1


