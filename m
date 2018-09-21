Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00379E00874; Fri, 21 Sep 2018 08:40:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C15E0080F
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 08:40:01 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id h79-v6so6149552pfk.8
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 08:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=SPzxkqdNSuJt0mklHiXrQg9OVPYJsDRs8JeAHH5QLxw=;
	b=Gekk2CeO97mqa6n8qHRWIXoZuPNI1joK6P+nLT4ixwbGEE1fTr5Q1oSFXAPrdAfox5
	1h2jLT9dlRhXnoy6eVmjKW8G+TSln+UC7rx9XRy0MT6tXEvn9eDx7VAdPwOxojnjf80b
	VvkY7cX5KuJS7KYBdvS6E5+hmztVJZImesaft6ZPFy9QufeLuXWdi2N9j+4ucG+Xm692
	OYxlZXs9URMdYMiw5Um5kFsXOFwo9Y21hUSmN+vpTLxBc3D/tDDwaWjypqYEDrx5P7yT
	qNb2Lw4onD2za9FnxGyJuoFmMvBn3UNKBtqW4IrCpHSMe3YpBQYZy+b7H94dC2d1OlBb
	WBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=SPzxkqdNSuJt0mklHiXrQg9OVPYJsDRs8JeAHH5QLxw=;
	b=HuKMXiM1jfjNBisrAXqENKyUxjGuag+vALwlAAYgwwUSJDVCnr2zUs+O/IOPplIUls
	3c6tBt80x3TCtitiDGtH9OHQ6mUpkJsGhbxpc73P44qjX6PpexNtTnwe8jIv/7yOphvw
	AviVoz6NKo6mD9Hey1b/QXwRkNL2p0MUTAOFUq/VVqyzKgn2hBuJEX7+QW19bn3gsIuc
	3DbN2hS4jpvTDSyKuTB1KPk3vxxnKTqes/kTOSKS0su/qOtegzJylq8kT9QKwjaqbqyY
	FEkxpy/KNZE0aqY1NxQlPghJunsH5drxx0cumm7wFFQtkhVHkhghjJKEV4SyP432MnfZ
	Kiiw==
X-Gm-Message-State: APzg51B5nSiAt7cQpkCSfdBUYqPwVSnDCnIacxahBwjnb4HTelW6RAc3
	Y83qGf9ZLVSQ/BFsb7KBAciJGBPG
X-Google-Smtp-Source: ANB0VdZM9A80Ovp6gmi1yaSC+NUgjPVIraXCnr5uOGSD99eAV8rmeYbKoP5xKlHz3MjCLU+TBFgPfg==
X-Received: by 2002:a62:a216:: with SMTP id
	m22-v6mr46571875pff.163.1537544401565; 
	Fri, 21 Sep 2018 08:40:01 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f184-v6sm47020971pfc.88.2018.09.21.08.40.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Sep 2018 08:40:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 21 Sep 2018 08:39:59 -0700
Message-Id: <20180921153959.23801-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] samhain: update to 4.3.0
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
X-List-Received-Date: Fri, 21 Sep 2018 15:40:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{samhain-client_4.2.4.bb => samhain-client_4.3.0.bb}      | 0
 .../{samhain-server_4.2.4.bb => samhain-server_4.3.0.bb}      | 0
 ...amhain-standalone_4.2.4.bb => samhain-standalone_4.3.0.bb} | 0
 recipes-security/samhain/samhain.inc                          | 4 ++--
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.2.4.bb => samhain-client_4.3.0.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.2.4.bb => samhain-server_4.3.0.bb} (100%)
 rename recipes-security/samhain/{samhain-standalone_4.2.4.bb => samhain-standalone_4.3.0.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.2.4.bb b/recipes-security/samhain/samhain-client_4.3.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.2.4.bb
rename to recipes-security/samhain/samhain-client_4.3.0.bb
diff --git a/recipes-security/samhain/samhain-server_4.2.4.bb b/recipes-security/samhain/samhain-server_4.3.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.2.4.bb
rename to recipes-security/samhain/samhain-server_4.3.0.bb
diff --git a/recipes-security/samhain/samhain-standalone_4.2.4.bb b/recipes-security/samhain/samhain-standalone_4.3.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-standalone_4.2.4.bb
rename to recipes-security/samhain/samhain-standalone_4.3.0.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index e127e91..944bf0d 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -19,8 +19,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain.service \
            "
 
-SRC_URI[md5sum] = "08863fad583acc7293ef29b4528c837e"
-SRC_URI[sha256sum] = "0cd779b3666264e1f370f7ec37891f680b4caa04895fab8c5aa9a52e41ec885d"
+SRC_URI[md5sum] = "a00e99375675fc6e50cca3e208f5207e"
+SRC_URI[sha256sum] = "8551dc3b0851889a2b979097e9c02309b40d48b4659f02efe7fe525ce8361a0d"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.17.1


