Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4378E00ADB; Sat,  4 Mar 2017 00:55:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 597C6E00ACD
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 00:55:34 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id j5so12172749pfb.3
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 00:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=J/Ml7bcARANTwqRSjF0fXiExKJ5FG4AyUczf/5uNov0=;
	b=MRTkD8EXNrTQ7aApxSFj2NqaEoh9UkEiy3eFTKu3qg8nLqtm1cNOySK5TDizSuAcFc
	QnggFiH+A/LLr7G5pL7kzBvWBriOMykRU7vR/OtQYzIU99N1bzj+u/Zni0uPNgQe7A7d
	XxtIzqFgBZJ89CQ80hqoMpiP9Bq1gC7la1zcxd3TYXmzK7FD9zkfaBykNRTPpdWA0YSc
	9GJxTHe9p/Mkp1mEwrryuquJlUOx92QYGAOSLh4sIwK80dS5fLZP/oHyicJTtRU6S6bu
	vI5Cgb89w3+h4q3Enf3Gob6+hA+2SBHfFu14d6/GD6+1jLfje72TQvBmq58teiLates4
	aPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=J/Ml7bcARANTwqRSjF0fXiExKJ5FG4AyUczf/5uNov0=;
	b=CFDN+rv2frUPx4J89Tbox1G6af8EBW5r0vkkIhoviqRAmMYv5CHwCiea8TpV+W+6j9
	5dCRMZoLkpojA3l0hbaLoB+M9HTyZz6iqzEMOCM15YH8mgMDoLd0DOFnzVo55Jsfqbvl
	uVetIX7hdt1hHmHZzfS0hq67sR8das8jnvOk9IqgurMKy02uj2oVw5UJ0OIKW6tatV+n
	Hx+/W/xxDbhiYNe4pJtRVB1ifNAxR2Q3aE8oeuBKPVboXGiYadUxMN0f5yJWjxNt8SQx
	xLQpjicquzEgzlXKpg4c0Tx1Pu/8MZcxzBpxdDjh/MRiPp9saW84iXeo3tq0uODzKr0q
	R2Vg==
X-Gm-Message-State: AMke39nYM9IWevkAoEVfJrucGlzkn7jUxcUoKg9hfVaxZzQO4JymoxvuqdRikw6EuO+png==
X-Received: by 10.98.192.25 with SMTP id x25mr8573581pff.158.1488617734550;
	Sat, 04 Mar 2017 00:55:34 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t133sm28065892pgc.24.2017.03.04.00.55.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 Mar 2017 00:55:34 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Mar 2017 00:55:24 -0800
Message-Id: <20170304085524.17066-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <20170304085524.17066-1-raj.khem@gmail.com>
References: <20170304085524.17066-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] firmware: Update to 20170215 release
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
X-List-Received-Date: Sat, 04 Mar 2017 08:55:37 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 8aea628..7487b49 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20161215"
+RPIFW_DATE ?= "20170215"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "ddd7645988360d7ef267b48c32293ad7"
-SRC_URI[sha256sum] = "bda18f2affb50053940fd88c3f3bec5af9a4b4ced753d01107a2b106cfb02d13"
+SRC_URI[md5sum] = "e0ce7be125ee567f7e804897e5eeff72"
+SRC_URI[sha256sum] = "98970367e26b7b618baf9feb1aafdd29a59e63145f5cae4e9a6596c71773cb04"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.12.0


