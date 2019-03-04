Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22CF5E00CB7; Sun,  3 Mar 2019 21:34:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8D3AE00994
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2019 21:34:28 -0800 (PST)
Received: by mail-pg1-f195.google.com with SMTP id h11so2234571pgl.0
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2019 21:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=lF8xRNdDbdEPIxzQrpoT8YImhkjVqbjF8HbpTb3h8G4=;
	b=VS7YqI1W60fLVW7BACHgZfc+BRglzAHCCCitRTMT/wDPmkm6zTZDZBzryAH6HKshRU
	NW+tWnBiiX2j2Wq4ZIITTrAFz/wC87sEoQmrItZ9RXHwTNp0vEUYnrvkaeuqbvmhjJJN
	45SY5l4jlhphCuMfKczkwnKFoz6evWLYcyXb9AP8r1WS+v3mqTo1w0C8MJcr3hqf4f+m
	ZH2/pITE/VFWR+/ZSnLHQB5ytyMLMmgG0d7q1IBxlf+bpDGZAWEipOSB8YZQ+x7ud3jE
	aukJWHhnzDb8Ri+vb2b6lrzbnpVeLjqkY/RIJqbLALpPpqPjqfwLkETsoEFpBB1EBWk3
	Vg3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=lF8xRNdDbdEPIxzQrpoT8YImhkjVqbjF8HbpTb3h8G4=;
	b=FYFW4oxffQZz1jJb2TEn7DVB7Z5KAwnNNWThXLu5FGhhAu3TgC9X5tCFB5M60UeWXy
	6EWPGFZmzGS7WUetnq94cXB6EaWrLIE+Rgq/UUIHM48Ub2pOHrGHRFO3/mBJ+RNY/WGY
	xgcO6zGE1GuO45IIPi0jkbynwQrQhTfO3DonNWk632Jgc1P2Ahhflz38SHOLESQSeU55
	JeOxdfSTCnf1Yyhhiw3rAwFd0KXy3l1YOYpz2tWcRa2/LE7GyKfk9NQDZHUxiia/oREI
	h8G4k4TCA/QgMuybAWq1s9o/m3m8YlF9JEIksVDa7n4lFZeKhYSxO0b0jJrPFNr8Ot1r
	AOcw==
X-Gm-Message-State: AHQUAuZUYypn2KCXOwxAFjj3/TYzA1Q5iHLf/BDo9vIhNM3wEiOs1ilY
	fyfKsDcfhTkR4gIWZ2av+fnn0ACT
X-Google-Smtp-Source: APXvYqxQ807+LgcLXrZDVSFztyxHw2GTkeePVBY05f3mvX1Ar6Wgj9HbVVuFFi5plLETZY1wAewvAw==
X-Received: by 2002:a62:1ace:: with SMTP id a197mr18528515pfa.78.1551677667929;
	Sun, 03 Mar 2019 21:34:27 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j14sm6780474pfn.77.2019.03.03.21.34.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Mar 2019 21:34:27 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  3 Mar 2019 21:34:22 -0800
Message-Id: <20190304053425.13810-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/4] samhain: update to 4.3.2
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
X-List-Received-Date: Mon, 04 Mar 2019 05:34:30 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{samhain-client_4.3.0.bb => samhain-client_4.3.2.bb}      | 0
 .../{samhain-server_4.3.0.bb => samhain-server_4.3.2.bb}      | 0
 ...amhain-standalone_4.3.0.bb => samhain-standalone_4.3.2.bb} | 0
 recipes-security/samhain/samhain.inc                          | 4 ++--
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.3.0.bb => samhain-client_4.3.2.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.3.0.bb => samhain-server_4.3.2.bb} (100%)
 rename recipes-security/samhain/{samhain-standalone_4.3.0.bb => samhain-standalone_4.3.2.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.3.0.bb b/recipes-security/samhain/samhain-client_4.3.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.3.0.bb
rename to recipes-security/samhain/samhain-client_4.3.2.bb
diff --git a/recipes-security/samhain/samhain-server_4.3.0.bb b/recipes-security/samhain/samhain-server_4.3.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.3.0.bb
rename to recipes-security/samhain/samhain-server_4.3.2.bb
diff --git a/recipes-security/samhain/samhain-standalone_4.3.0.bb b/recipes-security/samhain/samhain-standalone_4.3.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-standalone_4.3.0.bb
rename to recipes-security/samhain/samhain-standalone_4.3.2.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 944bf0d..dcd72b9 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -19,8 +19,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain.service \
            "
 
-SRC_URI[md5sum] = "a00e99375675fc6e50cca3e208f5207e"
-SRC_URI[sha256sum] = "8551dc3b0851889a2b979097e9c02309b40d48b4659f02efe7fe525ce8361a0d"
+SRC_URI[md5sum] = "eae4674164d7c78f5bb39c72b7029c8b"
+SRC_URI[sha256sum] = "0582864ef56ab796031e8e611ed66c48adeb3a30ec34e1a8d0088572442035fc"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.17.1


