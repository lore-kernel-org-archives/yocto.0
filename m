Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19DD9E00AB7; Fri,  3 Mar 2017 13:42:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0DB4E008F2
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 13:41:59 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 25so13773106pgy.3
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 13:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=2CB7AqMxYBEDIVBW8Cp9fmwMmoS44XHtONA8qFTru8s=;
	b=L00/kykQH5ok23sgo+Po8ynNRPuYzLcvPVWDLECSQyW4C0XSeaF0xMaZlSVaHzk4OF
	faMOobR+lTnlFo8hIRdp4HyhgHYfJJQbxAKeFL5hufTM6AMjBbcwLWxsSivEhrTCpLER
	+4HYB5SrMVygnds3SoJJ91V0tVIqWAB+i9Ytw/hQPZe8FXzBhN6K3TquB5ZPeEJwgvo+
	X/AYQB7926Y+lI84DyDnJuX1Rrv/IgaJaYhwoNVDwY9xhtFXmvjS0dKIDZuhhM8muttJ
	qHolAwk37PXRe9EufL/JTM5cI9vEdXNL7sAZwtkXur01DKjRi6qNcKKl1SEkVYHLpUAQ
	lVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2CB7AqMxYBEDIVBW8Cp9fmwMmoS44XHtONA8qFTru8s=;
	b=ndsddXp8cuxy7WJP1SwArThabeD1Fe0MpMv7D/0rjpqqvMGppRcfAbyezIipBLS7m1
	y9HF0L1CoNsoHuw2/5xv08hhklLZY23DbIQZdWUfWQdd3RjqhOue0xu24Wq1AZBHRCuI
	18QcitGptFBeWnO+5OfSCjX7AlVas2iHygUoLwMl+rhnCRy+Kk7nCEGYalPH/NOqxNRo
	mb+Hw52/buA8LtwEei69Bu6lXKeXI6+2DCdLNDwKYin74fqMp4E+aQkWMCXWnxQA6C1Q
	olrCq49WIZoLN+et4mFVTsFkN7CA20loaOd+pXbqrfyrqXk92uP1buzdmh2Kp2ZgDqvJ
	lTfg==
X-Gm-Message-State: AMke39ltbbHNZF4Uj2L6L5DM6escl9P5Xz5ARbD6aMWz7SgiivbpGra42AlbGHYG6rilkw==
X-Received: by 10.99.110.138 with SMTP id j132mr5726106pgc.217.1488577318904; 
	Fri, 03 Mar 2017 13:41:58 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t6sm25368145pgo.42.2017.03.03.13.41.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Mar 2017 13:41:58 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Mar 2017 13:41:49 -0800
Message-Id: <20170303214149.15773-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.0
Subject: [meta-raspberrypi][PATCH V2] linux-raspberrypi_4.9.bb: Update to 4.9.13
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
X-List-Received-Date: Fri, 03 Mar 2017 21:42:00 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index dcca369..effa859 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.10"
+LINUX_VERSION ?= "4.9.13"
 
-SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
+SRCREV = "935c7ce84c982a26f567a03a58a1537424569938"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
-- 
2.12.0


