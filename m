Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AFEDE0089B; Mon, 31 Oct 2016 09:52:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D646E00724
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:20 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y68so3319530pfb.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=HZXJyKRPHK6cmFaxz6nYuK1Bl+naYyN12H7q4LqXsbg=;
	b=RDBRTgdr08ERpD/E3oV95v48XXQuDc/qO+tU77hBcM9XPnNTXWoGEAUls63isejhW0
	MBFXlipXA5279gvEezuYP5JsM5kctORyErEiSsgpn0+Eaiy/0GLC09vz24hRdEPIL/hH
	TMXyApGgMd44bD1/sHI0rs3Ho70bN+BsN9zm2PN6jdp+UC+S7MTktOxU0Z73jJzfg3Xq
	tT1aLhfViFLn6YEMxR+viydEdsBzq+mdG1aBv01W1o5lVwVCaee3Mjs8AEC53vk+VR+G
	Ax4qQGqByK0pYq5oKdwiwplZV0YB1r+h6/n0eTKejWULNj9ywE4QxHAfAXUw0bshtLiI
	sCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=HZXJyKRPHK6cmFaxz6nYuK1Bl+naYyN12H7q4LqXsbg=;
	b=B4BPGT2A6ob62cfXpOU+9iCwcezdpFw0O0GE2ghse1h1p97zajSAW+N26UfJWVBqPv
	/zQpW6atb7ojSJBvVGh4/gV9AotbmKiUBO15H6uBtuJ5KM3A2Dlvfp1T2ceCosFB4G1p
	V92cYMOpUbtQTb8z8ftW3/xr5pDTCI0V2/S/zEXk5jpG2zPtXvjwYk4uPCugo6PROdvc
	h9CiGv0IRr5UBcXcEnATLwUJJ057CRymrP7PXMF5Ck5djzB1+2Nss4oQo2Ww6GESAuFB
	fMUC013H4/huDK86jCP/nSaN8Ovc3ngAWW2GpCGp9DzmK/PjI3+PZ2YOuoVLihHWOSy2
	jOSg==
X-Gm-Message-State: ABUngvcbhoY/Xw3YEnp+KfrsQ+7Z/OMatpM3pyRUbEjOWh3KMePPrvZLmFv2thf0Peq3yg==
X-Received: by 10.99.124.20 with SMTP id x20mr23402187pgc.60.1477932739888;
	Mon, 31 Oct 2016 09:52:19 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r2sm14653100pfi.67.2016.10.31.09.52.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:52:19 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 09:52:07 -0700
Message-Id: <20161031165208.16286-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.1
In-Reply-To: <20161031165208.16286-1-raj.khem@gmail.com>
References: <20161031165208.16286-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 5/6] firmware: Update to 20161030
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
X-List-Received-Date: Mon, 31 Oct 2016 16:52:22 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 6ce89a5..ed0782f 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
-RPIFW_DATE ?= "20161020"
+RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
+RPIFW_DATE ?= "20161030"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.10.1


