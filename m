Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 073EAE00736; Tue, 22 Dec 2015 17:41:24 -0800 (PST)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB58E00736
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 17:41:22 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id q63so8612782pfb.0
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 17:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=gfR7lbAy/tXyqdZB7tTDfoxkMN0qeWLZ/+l1PeKcVy4=;
	b=DlBaXsLZO/byyRU0aR0TgYfX6g0Ci/ZG6LW2TFv88o75GKSboO0n4I/Fl2DPKsBn8x
	106lvgQ2cUKeeoX2LueLUqUVad/eSVSAB0G1e+3gGtiWufBxp80VMT6b3XFCFvcw7mld
	tGvh6coWIYbCv/p5K1VSkAAmcXHcTxgmfc35q6iepR8386ErtpfGR8VYgVrkxGqIVAIk
	qkkV+tQ8ayMMsIagTbEjkWfEBE+JQdQEhGaMV71DvvhfCCpvqfLqgqR31MDnSsU05mJu
	OzbDkWOytTicG4RhFjy5Wals0MxPANBYahgYOhTPCSyMinzvuDmTwEUq6BkVDzzXd2To
	vpIA==
X-Received: by 10.98.79.66 with SMTP id d63mr40491766pfb.34.1450834882342;
	Tue, 22 Dec 2015 17:41:22 -0800 (PST)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	l80sm18441716pfi.76.2015.12.22.17.41.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 22 Dec 2015 17:41:20 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Dec 2015 17:41:15 -0800
Message-Id: <1450834875-4520-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1450834875-4520-1-git-send-email-akuster808@gmail.com>
References: <1450834875-4520-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] suricata: package update to 2.0.11
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
X-List-Received-Date: Wed, 23 Dec 2015 01:41:24 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata.inc                             | 7 +++----
 .../suricata/{suricata_2.0.9.bb => suricata_2.0.11.bb}             | 0
 2 files changed, 3 insertions(+), 4 deletions(-)
 rename recipes-security/suricata/{suricata_2.0.9.bb => suricata_2.0.11.bb} (100%)

diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 6618739..5684386 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,9 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "2.0.9"
+VER = "2.0.11"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "cc0c32071c6b6733b13380ef276c5af5"
-SRC_URI[sha256sum] = "4a19214d7673f9c0eba2e4e5ac78152309464186d16df48944b8f5644faa802d"
-
+SRC_URI[md5sum] = "4c05eebfb87c3c1ff51460f4e6318b9a"
+SRC_URI[sha256sum] = "c607f1e18e5636830f42a83f7c67e1466f07db82853f3a9dba4ab8c6c3bc656e"
diff --git a/recipes-security/suricata/suricata_2.0.9.bb b/recipes-security/suricata/suricata_2.0.11.bb
similarity index 100%
rename from recipes-security/suricata/suricata_2.0.9.bb
rename to recipes-security/suricata/suricata_2.0.11.bb
-- 
2.3.5


