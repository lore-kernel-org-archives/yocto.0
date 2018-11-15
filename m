Return-Path: <ste.lendl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC3D3E00901; Thu, 15 Nov 2018 06:14:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ste.lendl[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57EB0E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:14:08 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id j10so7167940wru.4
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=9P92Adi/BtIq2xjHT8cT3EJC+R1XPPuW4ccnGkHIfVA=;
	b=o1ltzKINuxrc8lCiJENqqy+vJLz1w1irAYsqVB9z1o3/KQtlBj0/WsSxZULc+x867d
	fhQpeXG4wLziZuQaI9VYvS0KdwGkyp9MHf4vbszBC4YrY2UOhxm+8Ha84LVojThd/lDA
	VynxQTwJ9dk9KlUYTqnkKiFfWyz+pNY2mnar/kI665XGgIfk4N4t2LkMI8YAsjj8ZNQ7
	mtsNpsWjiI1iL6iXKdh/aEqPEOtgczUsyxaqeQ22lzrAwQ3zzBdD+4FFwRYsBNKkt2Yd
	NK24o+9krO63rcpZShZzXfo8mLR6DFMRzmkttV5CVhsMlSqczYjLuvcZ3sBnecn53/aZ
	9zog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9P92Adi/BtIq2xjHT8cT3EJC+R1XPPuW4ccnGkHIfVA=;
	b=jrM90rKerntuSCc7kjnx2+J+4whE0dhFsKKWTRpE/gsYrLJgafpaJUFmKw5sPBflTM
	K+FN5uPKCofGSyPuTDs3f8GO+dUOURnM6+mxbysrsboWqfvvijCmJmEXIlrPYF5BqiyT
	CGmb139t9n/BvJBGl8ClyhvhSyMdqCOg0N8V+tbJcGP68aKwWiHAnwE3jxjsRxNmukca
	MyK/ehJfG8PuoyeKczQuvQu3PaDzR++NXBA7L8tH8smkqOFlfXm0dUO+NOIsmPezrPT2
	Owja+W8lnAg9LP+tyipVXM6jJK9E2EgfJlfSXnyF6GeVtCVB5LwJs4sUHwr6ARDhLVHb
	WJpA==
X-Gm-Message-State: AGRZ1gJ4N/7NlhovwFrfaekE2eYCTD+Wo5UBfAdV4xkChmq3hGynvlJ7
	9ztZHR+0cadmMGnVsS+VNFDMtWR0FH0=
X-Google-Smtp-Source: AJdET5d2HGxDBrNG/MIHD522LDWuZDws/CJ8kM4HaoBT48UVaZ4ZUBmsDHtqavZlwU6aH3GMSZhs8g==
X-Received: by 2002:adf:8444:: with SMTP id
	62-v6mr6030265wrf.251.1542291245351; 
	Thu, 15 Nov 2018 06:14:05 -0800 (PST)
Received: from localhost ([212.69.186.40]) by smtp.gmail.com with ESMTPSA id
	y83-v6sm19427361wmb.20.2018.11.15.06.14.02
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Nov 2018 06:14:02 -0800 (PST)
From: Stefan Lendl <ste.lendl@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Nov 2018 15:13:59 +0100
Message-Id: <20181115141359.31763-1-ste.lendl@gmail.com>
X-Mailer: git-send-email 2.14.5
X-Mailman-Approved-At: Thu, 15 Nov 2018 06:28:55 -0800
Cc: Stefan Lendl <ste.lendl@gmail.com>
Subject: [PATCH] Use lynis download link from github releases
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
X-List-Received-Date: Thu, 15 Nov 2018 14:14:09 -0000

Unlike the official download page, it also works for older releases

Signed-off-by: Stefan Lendl <ste.lendl@gmail.com>
---
 meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
index c25b804..1ee71ef 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
@@ -6,12 +6,12 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
+SRC_URI = "https://github.com/CISOfy/lynis/archive/${PV}.tar.gz"
 
-SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
-SRC_URI[sha256sum] = "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
+SRC_URI[md5sum] = "f91840acc0801b77844363fc55c5d688"
+SRC_URI[sha256sum] = "e143eaefec3222f98a0f74dd6dcb3818aa348dea3d0379bd3a45455911b6ee2a"
 
-S = "${WORKDIR}/${BPN}"
+S = "${WORKDIR}/${BPN}-${PV}"
 
 inherit autotools-brokensep
 
-- 
2.14.5


