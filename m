Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 121D2E00BAD; Sun, 30 Jun 2019 12:11:54 -0700 (PDT)
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
	*      [209.85.210.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3595BE0090C
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 12:11:52 -0700 (PDT)
Received: by mail-pf1-f182.google.com with SMTP id p184so5421806pfp.7
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 12:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=f0JRSVxcASaID0IbFcP6kzQxVWYbOLBeNe3ZmhT+eQs=;
	b=kZ3QNKywnYQgY9PBDtgFoYUZiCmZReMoOzxSV10shOQj4sjD8qX1RDklwNjjeLqW8D
	vyY/gr7/xPM1pJ9ntJG9XWW45mZRElbg9V1zh3Ee6Ll68fpKfx8s1X1FSqAeFqHEawuF
	kJMGGoKrWBAJn0F1P8SONTBPvL9kgd569GgxWsFSnDuvZhtirOCjie030umprM3OrDOO
	zdF/4JPQd7h7+GEos4g7efOD9Z+PZY9nf782oQPDFj4f84UuwxqF9cnQLfidZgt0nMHl
	gs3mb5dpcL8T6RjGr+gOotE6kga99ffhd55JPgFi8EIOo4n0vJZakulpmFaZc8KIpR5J
	HoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=f0JRSVxcASaID0IbFcP6kzQxVWYbOLBeNe3ZmhT+eQs=;
	b=kX+Es8CA6YNlk522S9fvK6Xyx1vUFx8eDr/p9fC0PXnDzs5e6cxdCAHYoFSDehvEhb
	rVHjG105pFh1vxxJOHHAe05LQFtCjouW3jjcNdw/sqCI34d8f5LO1EZmVaHy5ShZ2Fs6
	XaWmHBjYKJF8Igdxq2MTDqlh5cN/TDu8p/NIUN9sj/4BgDSMDZdODU5fdc3E240T8Nfx
	AKv9uZh8JDQSQSWKpdlz3t2lFY7OUHoV5KH8NOh79v3uzXBbXkqUxbPoUy52OA8LbYrk
	EuEA2IJn6w3d1cIJg/QauuN3a9j+FD2oETG9xll4J3e4OBuWaPXBstyscnIYP8X362Wd
	TUPg==
X-Gm-Message-State: APjAAAXAtzmANPEixYKfhi5K3fdIPD6J7k+SxMcIwWXiIKbs+YL9LfgW
	kQ9OhJYD1x/BKgSsjCB1y2kkMwvHjkk=
X-Google-Smtp-Source: APXvYqx7e3buwyc68BH07RfY55FH+oNcVKfMdFi/sVXS/sY0/LFmORTfkhFBXmBztbPzBry3bMl5uw==
X-Received: by 2002:a65:458d:: with SMTP id o13mr6863017pgq.34.1561921911049; 
	Sun, 30 Jun 2019 12:11:51 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y16sm8304698pjj.25.2019.06.30.12.11.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 30 Jun 2019 12:11:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 30 Jun 2019 12:11:47 -0700
Message-Id: <20190630191148.30104-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security-compliance][PATCH 1/2] lynis: update to 2.7.5
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
X-List-Received-Date: Sun, 30 Jun 2019 19:11:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-auditors/lynis/{lynis_2.7.2.bb => lynis_2.7.5.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-security-compliance/recipes-auditors/lynis/{lynis_2.7.2.bb => lynis_2.7.5.bb} (89%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.2.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
similarity index 89%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_2.7.2.bb
rename to meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
index 3ba82f9..21e4517 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.2.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
@@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
 SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "3422cee3b12fc33338fcde003d65e234"
-SRC_URI[sha256sum] = "fde6ccf8d6ec0ae1e9c9f4a6d640cddcde4bf7a92f8437d47d16a5477e21bfda"
+SRC_URI[md5sum] = "fb527b6976e70a6bcd57036c9cddc242"
+SRC_URI[sha256sum] = "3d27ade73a5c1248925ad9c060024940ce5d2029f40aaa901f43314888fe324d"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.17.1


