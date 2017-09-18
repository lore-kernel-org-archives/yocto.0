Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FBC7E00CBA; Sun, 17 Sep 2017 22:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0234AE00C82
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:41:48 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id v82so4746412pgb.1
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=BiGpraAUOaHaixHMhR8XWvC1X2QkYYf7G7GJ1mrr+JM=;
	b=TYlGV3UKZAcmsRxFrW5tmR2qL22CLsmk7rWxQ8Xh5jOrTVhs2UVRPHRDwaHqc3tYe5
	D5+eoBVf9+CDxbrF0Xt0IIBE+TyDjAc0pIdJ+YoxzFGgU9+J1hhsYEVSuQpgj5sOTsqU
	czrYlUyz7KCqaQihVNLkxLtsp4AvPjltxbt1sTBtzbpw6vVuTdEa0147CtXprTdzYC1k
	QWTa6uX2vhBwru6jLQ4SyvyQHSiCH+cs81P0dIB17NYnYrP7aZRRDV/l5U1It+pDjEth
	hviKAxF8MQPHegoltiZZXWhpQq53mG31S7dZ0pPXc+R2dD8rClLf4utDRwQKzNA4dxCG
	mUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=BiGpraAUOaHaixHMhR8XWvC1X2QkYYf7G7GJ1mrr+JM=;
	b=CJ2U0PxncaQ6dhddWysWHbmwIaplgzFvmM+M4rOW95PcvTzEdXxwprZ8FfL3SJmmsN
	SKhvlm/dlbc5IJNwF1U36ZDHwpZFPlaLfQ90F367UgHyx+mtm7NYGRg5Nx5zDBoKGX/C
	oleASzAEdPkAAt4/sEjGlMu6I8mZyfwLM+CStGAQ2HRulyjw0XyDnX1l/tfOZdU/r7PL
	6Cw8Tqg2m+nOk48p83r1NBy3TJqoddO9uW+6JilOdyGXzrhy++GrujwYDnWHGDQr6mqC
	ue6YRk0SqlFrrgrP1kDlN7kbxIAfti9bD8SAvPxwNKOC7VtqKltB3xiZ2tFF1m7qhonL
	ThXQ==
X-Gm-Message-State: AHPjjUgwi9oZNMzbkHo4i/UxOSbvk228Op057UVS0nMvOSEiN0arER4z
	fcMTz4ACcsLMzJNQ
X-Google-Smtp-Source: ADKCNb4TIsMt7GMgqfu39AIy/CWbyfLsAfQCGElbq7xpmNn8Yc7y3y0JIIBtpRVL1jfBKW8Ko3V1fA==
X-Received: by 10.99.119.5 with SMTP id s5mr32506054pgc.344.1505713308065;
	Sun, 17 Sep 2017 22:41:48 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:8882:b8c::a20b])
	by smtp.gmail.com with ESMTPSA id
	h186sm11406591pge.72.2017.09.17.22.41.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 Sep 2017 22:41:47 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Sep 2017 22:41:35 -0700
Message-Id: <20170918054137.33583-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
Subject: [meta-raspberrypi][PATCH 1/3] linux-raspberrypi_4.9.bb: Upgrade to 4.9.50
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
X-List-Received-Date: Mon, 18 Sep 2017 05:41:49 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index ba17020..068965f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.41"
+LINUX_VERSION ?= "4.9.50"
 
-SRCREV = "4153f509b449f1c1c816cf124c314975c3daa824"
+SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
 
 require linux-raspberrypi.inc
-- 
2.14.1


