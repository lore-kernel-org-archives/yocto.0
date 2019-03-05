Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAA99E00994; Tue,  5 Mar 2019 08:46:10 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.179 listed in list.dnswl.org]
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E42FE007B3
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:10 -0800 (PST)
Received: by mail-pg1-f179.google.com with SMTP id l11so6000107pgq.10
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=CNIPHCoQsVwgZK50ANfrRJnTZpGHxswJx49bY/MM3Sk=;
	b=sq/YV4QhFiHCz7CSD4neAISx3We+SKC2FkTiD/KCZubAmQP7+T6jlFmowKhQAKoqsW
	0WAcr9fejUAaZ33ffPa9EEs+HhUSBbrh0tfMZU0VlLRPNz/f+/5Oazuas3b4KOls3CEj
	0Jrm47w+2Ys3NR4rWFPxQpiWBrfcKRiAsFR1WjHFsYNye5p2CcOfOVdClkJEFI/pe6AQ
	GtGpl4RwdOrD+ynUP08KOeZZmwT0CuMfwGEneJHMQNSnFuP8yDIYfKeMSIadrPRCB8JE
	Z11FQVz8Vypnf51VdROrhsbi0OS/FtR9PuP1Dk8rV6JNJQlLJxpd6THft3SbePrJOirP
	njbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=CNIPHCoQsVwgZK50ANfrRJnTZpGHxswJx49bY/MM3Sk=;
	b=eTuPp91fNzUmPTcDlvyNUZWUvNOmPxKTlTcxQgjJo0KN7Ax/ajDU23tGoEjPjyPlOD
	mT80bzw/m5ISrWUF4wE6h1EjEEztObum8gqDlIpzEXHCINLtGfsISKV7JKkUwnbIUuVA
	VnpfEGnR6F27FFQtWQs8Jb4gqOgrrfqSQaywXnnDYtcBrcr+OWzqrCpvnHMTQi44Q/fS
	aGADCaeSoFogLvV0CvN8VOTvSlByp9+Do7xy/X3CFluU/MsnZTGaTjD/+2Z520X4BFkb
	HKeJ7cPk0nb1+x4f+i/lAzCLf+vDtgYpnsguqt90PNGs3aRlL/ja3cSVh/YtO7INGggF
	VRSA==
X-Gm-Message-State: APjAAAVFd0cN9GiRsNzayrQW0e1ZBvffzQrmAck9zpeXhaqMnbGhknGd
	VAMz02zEQ6ecF/pokZ441380UsAd
X-Google-Smtp-Source: APXvYqzRYtj6XZwDHIY1cQZqBnJ1Us8kQN1KK/ZUoaY4OtcHIjBU0uF0RCoMNaMywsjDMw/8FJ5hZQ==
X-Received: by 2002:a63:6b45:: with SMTP id g66mr2190449pgc.301.1551804369846; 
	Tue, 05 Mar 2019 08:46:09 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:09 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:02 -0800
Message-Id: <20190305164608.12211-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/7] suricata: update to 4.0.6
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:11 -0000

includes: SMTP crash issue was fixed: CVE-2018-18956

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../suricata/{libhtp_0.5.27.bb => libhtp_0.5.28.bb}         | 0
 recipes-security/suricata/suricata.inc                      | 6 +++---
 .../suricata/{suricata_4.0.5.bb => suricata_4.0.6.bb}       | 0
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.27.bb => libhtp_0.5.28.bb} (100%)
 rename recipes-security/suricata/{suricata_4.0.5.bb => suricata_4.0.6.bb} (100%)

diff --git a/recipes-security/suricata/libhtp_0.5.27.bb b/recipes-security/suricata/libhtp_0.5.28.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.27.bb
rename to recipes-security/suricata/libhtp_0.5.28.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 1f42121..368b2e0 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.0.5"
+VER = "4.0.6"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "ea0cb823d6a86568152f75ade6de442f"
-SRC_URI[sha256sum] = "74dacb4359d57fbd3452e384eeeb1dd77b6ae00f02e9994ad5a7b461d5f4c6c2"
+SRC_URI[md5sum] = "e8e9a401fef3b3ca1027c268c38c8f4b"
+SRC_URI[sha256sum] = "cbab847b33fc625b7a92241fdce2e1ca47b8bb415c9114de70819394229679a4"
diff --git a/recipes-security/suricata/suricata_4.0.5.bb b/recipes-security/suricata/suricata_4.0.6.bb
similarity index 100%
rename from recipes-security/suricata/suricata_4.0.5.bb
rename to recipes-security/suricata/suricata_4.0.6.bb
-- 
2.17.1


