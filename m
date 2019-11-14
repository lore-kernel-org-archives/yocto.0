Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59B9DE00E3B; Thu, 14 Nov 2019 06:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9044E00DF1
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 06:43:39 -0800 (PST)
Received: by mail-il1-f194.google.com with SMTP id s75so5555468ilc.3
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 06:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=s3MOg/WddwDEqj3XbzQu63O1VBth8v4xCOgtlDF0R64=;
	b=pJUB532TP5qMpiIQLuE3VDWzQ8mhBX7OqgQs6aiF+INUVbNjbdhu5SBkUFtJvQcuha
	feqxKLj9C9JncroijetYZ97OK+KPFUmMvv2gb1jb2AUEYKar+WZzaLdFMDkU2HVR9OSy
	BhcAkAbrSP1UBcoxAnFEloO1x5xd4Il5bgEV/42CubO5DFLJivBVUISk5PPDWcViuC6M
	fX7v8lQrSIgAzqK7FTkplYN6TdP1lqIzRTMECZfovCC9ZKBNn/yL07CNQ2ydbwWrN91H
	QIxXsvs727b5DRcOpOKPRlTMd9jfVlYvxEuqWr4sKaaBxjNaf6S1ErqbwAGy4EZHJg2u
	qZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=s3MOg/WddwDEqj3XbzQu63O1VBth8v4xCOgtlDF0R64=;
	b=bUGfcOCvp8li5kpRtzwfZd2IuVFqRVOu2/WezZx0OBxJz1by+ddOc04xo3WcImOzKX
	KCzeao495Bs/WHcjAcpcTZ3TRtOzHatQ5syvbtE3OFEYd0vinn56SDh19+Z7NT0cb8MS
	ZIw02Etm1TJ9oz5fVRjgsbpuuBOlopYVouej23Lq12nbmwpdKhiuN3fYA+bbMdkbJyBQ
	Saxzw2NdSbsDjkfjtwdKKKkIFyhz1UaxmOfjWnSus65Rmx9xJ+zqC2DndwzcKweyCDWR
	XqpwsQMmG/C1GgH5OJOzF87ZPeFuoewmOC02VwEhF6MPb95aDO/3UDTKVexgHVtE57x5
	mudg==
X-Gm-Message-State: APjAAAXISpU4GPiRf4M4QLCc/hLFoZo+wGw4mjoyQtlwd/4AeMH0fEHo
	JtFmU1W13H9Slm6y6/UZK42T0/2M/zI=
X-Google-Smtp-Source: APXvYqz+Hw4gxaj1+eyhsPe2uExEn12+s/1WJCoQuNF7Wnt/FthIvdnV2mzZ5QqItgpiumLCRigSrw==
X-Received: by 2002:a92:3b9a:: with SMTP id n26mr10909950ilh.82.1573742618853; 
	Thu, 14 Nov 2019 06:43:38 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id s25sm558010ioc.49.2019.11.14.06.43.37
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 14 Nov 2019 06:43:38 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Nov 2019 08:43:29 -0600
Message-Id: <20191114144329.2147302-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [yocto-autobuilder-helper][PATCH] config.json: Build MinGW SDK test image
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
X-List-Received-Date: Thu, 14 Nov 2019 14:43:43 -0000
Content-Transfer-Encoding: 8bit

Switches the MinGW SDK test to use the core-image-mingw-sdktest image.
This image includes additional host tools to validate that they build
for MinGW.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 1493ab5..6c09ced 100644
--- a/config.json
+++ b/config.json
@@ -706,7 +706,7 @@
         "meta-mingw" : {
             "NEEDREPOS" : ["poky", "meta-mingw"],
             "MACHINE" : "qemux86",
-            "BBTARGETS" : "core-image-minimal:do_populate_sdk",
+            "BBTARGETS" : "core-image-mingw-sdktest:do_populate_sdk",
             "ADDLAYER" : ["${BUILDDIR}/../meta-mingw"],
             "step1" : {
                 "SDKMACHINE" : "i686-mingw32"
-- 
2.23.0


