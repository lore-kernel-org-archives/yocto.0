Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE685E00D97; Mon, 30 Oct 2017 02:51:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48DAAE00D8F
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 02:51:10 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id m72so14580863wmc.1
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 02:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=5KlZyhYx2VWcdD0+3e8Itkr5aeB1e86UDwLyy3CYN4E=;
	b=B4McykcUV250sdiNJ8FFYYvJNeyofHPVnJWO6432gRpl/ZIEEidst+z7L7/cPr6EAy
	UTWAtk/UCG0NJGdNkT0l0lrvEAIL1iJ8JRV7fvCEpT7Pgq7eezydAsTNh6G8lB66CSR8
	flmJ0Fa+0svUNWg3wNwroJWh/IjBmx3hpdNmnEmMYCGd4fwg9STERrwfpzcKL5A4LYG7
	L0+gEe+Zk9YnDWIr3lfQUDi3Bl4DlElzzEg/PxnyBvOMLRveRVEylQAedSn7wSTKUxEv
	FAwKFff//9cD4t4vkF6LVel/9TH9oRzVM7DAGVTU8QdY1LABwnAm6fj+7BeXiRYg78qm
	J02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=5KlZyhYx2VWcdD0+3e8Itkr5aeB1e86UDwLyy3CYN4E=;
	b=dmp4z4iRGxryGbEWJ0cHNnmd9qZ41kmrpJ97+ARshGHmfJ+UMoeZWOUhur2p64I+A8
	HebCw5CkIbJxsBhkIUsqVBzWTbGPFFgZwN5+JH0fMtdVLakRX1YxE9nOGq78FtOw4vzl
	AovFNSy0y/XtjC4D9sa0CL+JlRJRVhbwhIm7wiH9uwpZGj/LlBA7kZgjSfw9V2/nUcYi
	oHFSPOD6677h/P9lcSmVTrswDl2LupiWJTbErdpPEeX8F0PUmXOE6oVxrJrRggQOanmP
	oV2qYHbeqORAtrBEsH4Ukm+Aqj7ZWXBZC9zjR8u5ssXpBihKH3lmjsCKnPppk2ZyQc0q
	9dlg==
X-Gm-Message-State: AMCzsaX30sHUcJGwSvNZ9hHH2barGaJaB6Dg+lwdX23BUWZpvy9PJqYc
	8X1KizjepC9W749AA0dqdcVwoxGE
X-Google-Smtp-Source: ABhQp+TlfM6+2lYdc++uo/aQnNm5encYpK37FwSpvKhqH6PDuOqpBS8HJ1rm9hzJOz0EmF1WjPcAJA==
X-Received: by 10.28.178.205 with SMTP id b196mr3164951wmf.103.1509357069716; 
	Mon, 30 Oct 2017 02:51:09 -0700 (PDT)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id
	v35sm21922222wrc.13.2017.10.30.02.51.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Oct 2017 02:51:09 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	maxin.john@intel.com
Date: Mon, 30 Oct 2017 10:32:43 +0100
Message-Id: <1509355964-18527-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
References: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
Subject: [meta-oracle-java][PATCH V2 1/2] On headless arm, do_package() complains about missing libX11.so.6 provider.
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
X-List-Received-Date: Mon, 30 Oct 2017 09:51:11 -0000

Full JRE created by jrecreate contains awt/swing dynamic libraries linked to libX11.
We patch binaries to remove libX11 dependencies

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index d7a4b33..114a7dc 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -11,7 +11,7 @@ DESCRIPTION = "This is the proprietary JRE from Sun/Oracle, with the Hotspot JVM
 JDK_JRE = "ejre"
 require oracle-jse.inc
 
-DEPENDS = "virtual/java-native"
+DEPENDS = "virtual/java-native patchelf-native"
 
 LIC_FILES_CHKSUM = "\
 	file://${LICENSE_DIR}/COPYRIGHT;md5=3dc1bfbd5bed75d650ad0506a0df5930 \
@@ -22,4 +22,16 @@ do_compile() {
 	DEST=${S}/${JDK_JRE}${PV}_${PV_UPDATE}
 	rm -rf ${DEST}
 	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
+
+	PATCHELF_DIR=${STAGING_DIR_NATIVE}/usr/bin
+	${PATCHELF_DIR}/patchelf --remove-needed libX11.so.6 ${DEST}/bin/policytool
+
+	${PATCHELF_DIR}/patchelf --remove-needed libX11.so.6 \
+                                 --remove-needed libXext.so.6 ${DEST}/lib/arm/libsplashscreen.so
+
+	${PATCHELF_DIR}/patchelf --remove-needed libX11.so.6 \
+                                 --remove-needed libXrender.so.1 \
+                                 --remove-needed libXtst.so.6 \
+                                 --remove-needed libXi.so.6 \
+                                 --remove-needed libXext.so.6 ${DEST}/lib/arm/libawt_xawt.so
 }
-- 
2.7.4


