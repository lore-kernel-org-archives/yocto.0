Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1836E00E55; Wed, 14 Dec 2016 18:34:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D43E00E2F
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 18:34:52 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id c4so1907057pfb.3
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 18:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=FnJ1M90GvHA1BQiQCW8Ucekgjykk8QYq9PakmgqElcg=;
	b=lZJPmtXjPUIGi22EYa2LwXP9B7aqLIfJG0W2ck9fWPvy8f+BPrg9b4CPFvwTMNW8cn
	CJ5t5/5jA0igLevc7VaqKiesktuVAu3Im4Euc/Ofi0VN2bAUL4165m1dE8YIZlPHtgXs
	KARaePc0GCHQSuJKlKeSgoM11OTlNRvVP7EyoK5Ij3LUb7//EZusFO2E1TdP/W6QA2I9
	H3h8KDRPixm6ksW53KTph2Pz2+VVvPVtQb9Lseuu8SvLz1PCh2l1qYquoJoyNlRVc0I9
	R/Pa+URDWOiOelAOR1Mzw4DdDIurtkc4C8hqHa+Wc9qG5Wr1C/ZTfTZfkqhFhGDuuUui
	/USw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=FnJ1M90GvHA1BQiQCW8Ucekgjykk8QYq9PakmgqElcg=;
	b=THIvOLYuNtRjJJPkt4tNYAF0Oqb7xXYnmsBWP+or5ff8+EmUeZsZM6qbqTFx6Bk7x/
	wENJAGpHHro1NhfNoAWDLvEQrZXotE6hZXy+wybSfpuOdAxqTh5C1uqdApsDiKXvklCB
	jev5KEy8OXfi382QJYqfclq4woW1OCoFd8NUJgq6+5QMXEN+8wxdkbWliblCS3vAGF5L
	eJVRZI3aWuN/DZikMgwSNq1tbqMqRlwEUauM+88/PAe5Bm5pml9dyi7J6Ecxhx7511xB
	OMXuF0y8kzfjqtBcMJOeDpfdcBteJ0rf74b2cc18giVc6vV2+eSXtczn3HtMRpfltygN
	/zaA==
X-Gm-Message-State: AKaTC03lLpPGLhPpTCgzSGoPW0iFJ2GUUfP/P+QYgAqt5io8Er+DP42YoDG56ZGx/8Ae0g==
X-Received: by 10.84.206.37 with SMTP id f34mr215162131ple.127.1481769292175; 
	Wed, 14 Dec 2016 18:34:52 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	129sm90587319pgj.26.2016.12.14.18.34.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Dec 2016 18:34:51 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Dec 2016 18:34:44 -0800
Message-Id: <20161215023444.15092-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161215023444.15092-1-raj.khem@gmail.com>
References: <20161215023444.15092-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] linux-raspberrypi-4.8: Upgrade to 4.8.13
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
X-List-Received-Date: Thu, 15 Dec 2016 02:34:57 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 2626d62..d4aaae2 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.12"
+LINUX_VERSION ?= "4.8.13"
 
-SRCREV = "ca6ab40b8e878f96f44ab48bfddef299a82aa683"
+SRCREV = "430587d6949e71d5eec9cf6ebd90106c11d2e08c"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.10.2


