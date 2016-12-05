Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0006E00C4F; Mon,  5 Dec 2016 03:01:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA84E00A39
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 03:01:04 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id e9so16099312pgc.1
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 03:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=bd0+GSXxhJCcdsReWObn0yqGKScEe6Rc1yhZsZkvBB0=;
	b=CQgiR+bzBiZROQFkg8PKJAxLdDMZR8M4chPuucK817DdNtVphMu44sfeK8PnFO2AFJ
	XV1pJTGxohKgzWpgeOXSz2ls3SlO8d0YAEXesvf/lZNCcILXoQDqIv34ll5e4BB5EHEw
	IIRGVBWn+izbkgHf3ijuyypjfBh3sz/0pPsRJaKqGr3ud9NgUqDIGiwmzkBO6PZ79kIk
	3+AATXmXrO2IOf8hj4OhWS740YKPQJSdIzKyHoxRy/zzMfCYItXzT/nDFViajcjOEJtE
	MbxR1KqlFucl5Gy0O3lhdX9bQ0NRcalOyzsUag1QOAeP6XC1KduqwSH6aRtru6Z4fDZf
	sIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=bd0+GSXxhJCcdsReWObn0yqGKScEe6Rc1yhZsZkvBB0=;
	b=R9lbi8tuwVZa6H4Gjit1t7RR4Voxoet19UM0R6dqI9EXUV0gB1T1YY7HKrqIUzFDbH
	dfZ/nvips1bWLpCGjoGQXTp4Tr9KRio7ynCXIZqvYTYfFot1E1UrCGhQVQN8MJD0eyR7
	/oaxBQa0AWEfztBKhiSA6dEnYLhKbOwNyfQeHKj7xIXc4uy1jkJjPAFg0zVxHR6hFurG
	wzW5/2c8ue8WKsXfIiqNHEVodunrS2oxJMKEE0n4wECy5eIej3TY4ADpAeIztUE3o3zL
	jSUztJGBHSUmfR28vllNml5iuwkjvDUWE0xXfWiWK3XxGw22EHlPU33EnOAT61crKMmJ
	Vy3w==
X-Gm-Message-State: AKaTC01YSzCNC0X9+ZXlaDkVt4SUsI2pJr2CBeRF6kmwvGj1Gd1mon/w5gRnBl4058DLYA==
X-Received: by 10.99.146.76 with SMTP id s12mr100915434pgn.8.1480935664071;
	Mon, 05 Dec 2016 03:01:04 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	y66sm26703759pgb.21.2016.12.05.03.01.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Dec 2016 03:01:03 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  5 Dec 2016 22:00:27 +1100
Message-Id: <20161205110027.13585-1-net147@gmail.com>
X-Mailer: git-send-email 2.10.2
Subject: [meta-raspberrypi][PATCH] firmware: Update to 20161125
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
X-List-Received-Date: Mon, 05 Dec 2016 11:01:06 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 8862f58..1961b48 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20161020"
+RPIFW_DATE ?= "20161125"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
-SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
+SRC_URI[md5sum] = "a9281d2869e2d7673a83d41bacfa66c2"
+SRC_URI[sha256sum] = "744e050630621c70991c91e0ee8663dc2f579e743583ca762b13b00bc75859bc"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.10.2


