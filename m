Return-Path: <earwigz32@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79061E00CE2; Thu,  9 Nov 2017 22:35:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (earwigz32[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D9C2E00C45
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 22:35:36 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id s11so1262140pgc.5
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 22:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=aty7d7+V9jSStkqWQTuLLSqgWGMqEOVAqIhjtLg8Eqc=;
	b=XM5ysoMQJjkdL6itnx0hPUIm6pj9xTHmt1RcZGzTURhTSDDuA6x8eWi2cq0YAhQcWu
	sbsrU4ASNNyifdGM2haJyEE5TCOqdUQk99tWxUQfuJDqi67C8nf4dxRjNmq7dBET+QTx
	ahFCVBBIvdzBaB9NI4Ghs14xiSKDOrD4pzu6ImRsdFw6/GpDH5mjEs9U6g258Eg/Q6yf
	bhR9qxMxjpDiN7yD4NgC4HyqRQA8KbxPRcMXD1OqFymUbBZQs5AbEbey7uJrmDG4Pjrn
	NXevQOT58z262GD2D09VUTT5Min6+LaFz7p53Ll/wbohK33pA+EXoA4YF1WRYWyRhLcH
	VIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aty7d7+V9jSStkqWQTuLLSqgWGMqEOVAqIhjtLg8Eqc=;
	b=hwskxYVG9djjX5o1Q8v3r4civeKkq+AQHz8cYjVLgrY58GjfJhubDBP4sYU+dELKTM
	dcr/e/fHPELuo4Vj5p21O/flacmuJiXOalMu1NRg8RlsIiJ6GUsXEkmTZDDx8/gjJXSt
	AAz90xzO2rx3BNdTTI48eZreMXNZzbjD1r1nnIe/H89WO4O80cSmFFG86ZZTl50zE+MH
	oM5cxdmqE6dR/uBNAcL1aytbaDfn7IimIcL38QkPRRojS+G3hlsit37IPvdwWg1JawHx
	K0yRJ1LoNcvO1JqnjnBN/edETg4gYnDoWXGYhW05PcrRjJXQ60/12jq40Hjdb9DtmxU6
	6mHA==
X-Gm-Message-State: AJaThX4+ixp20tkasVYxD6bdyPukD/sBGepukrwVTMaX0RR516sxrQ/0
	HHCnBnnj2iGQHPlyqviEejfI/pVn
X-Google-Smtp-Source: ABhQp+RESQL6PnvG0s8vRIC+xdrmo3Zul2Woal7J8lsjPDnQX+PmSyaThMmU2j7YrGlQb5QLmf1XbQ==
X-Received: by 10.101.82.8 with SMTP id o8mr3141619pgp.422.1510295735942;
	Thu, 09 Nov 2017 22:35:35 -0800 (PST)
Received: from localhost.localdomain ([61.107.31.52])
	by smtp.gmail.com with ESMTPSA id
	n12sm16703653pfb.149.2017.11.09.22.35.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Nov 2017 22:35:35 -0800 (PST)
From: youngseokyoon <earwigz32@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Nov 2017 15:33:30 +0900
Message-Id: <1510295610-17228-1-git-send-email-earwigz32@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 13 Nov 2017 08:02:24 -0800
Cc: youngseok <earwigz32@gmail.com>
Subject: [PATCH] libpng: Upgrade 1.6.31 -> 1.6.32
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
X-List-Received-Date: Fri, 10 Nov 2017 06:35:38 -0000

From: youngseok <earwigz32@gmail.com>

License file changes are due to updates in Version and Copyright date

(From OE-Core rev: 44676c90863c3864182c088ca51bec3bdc8dce29)

Change-Id: I34b40f7b0cbf66feeb944c71a32643b75ed324e8
Signed-off-by: youngseokyoon <earwigz32@gmail.com>
Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../libpng/{libpng_1.6.31.bb => libpng_1.6.32.bb}                 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-multimedia/libpng/{libpng_1.6.31.bb => libpng_1.6.32.bb} (72%)

diff --git a/meta/recipes-multimedia/libpng/libpng_1.6.31.bb b/meta/recipes-multimedia/libpng/libpng_1.6.32.bb
similarity index 72%
rename from meta/recipes-multimedia/libpng/libpng_1.6.31.bb
rename to meta/recipes-multimedia/libpng/libpng_1.6.32.bb
index c96ea14..d93e72c 100644
--- a/meta/recipes-multimedia/libpng/libpng_1.6.31.bb
+++ b/meta/recipes-multimedia/libpng/libpng_1.6.32.bb
@@ -2,15 +2,15 @@ SUMMARY = "PNG image format decoding library"
 HOMEPAGE = "http://www.libpng.org/"
 SECTION = "libs"
 LICENSE = "Libpng"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=6f21e4e1f795810b5ea491b333bc6ea1 \
-                    file://png.h;endline=144;md5=af300c419a45c53a8d2daa0b7d167a66"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=53f2df0e62ce82307cd1389a9f41e4cf \
+                    file://png.h;endline=144;md5=591cf1f8d84a757af46e43c2b9b5ddd9"
 DEPENDS = "zlib"
 
 LIBV = "16"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}${LIBV}/${PV}/${BP}.tar.xz"
-SRC_URI[md5sum] = "1b34eab440263e32cfa39d19413fad54"
-SRC_URI[sha256sum] = "232a602de04916b2b5ce6f901829caf419519e6a16cc9cd7c1c91187d3ee8b41"
+SRC_URI[md5sum] = "e01be057a9369183c959b793a685ad15"
+SRC_URI[sha256sum] = "c918c3113de74a692f0a1526ce881dc26067763eb3915c57ef3a0f7b6886f59b"
 
 MIRRORS += "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}${LIBV}/${PV}/ ${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}${LIBV}/older-releases/${PV}/"
 
-- 
2.7.4


