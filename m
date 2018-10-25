Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5941BE00B23; Wed, 24 Oct 2018 23:27:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9DBCE00AD8
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:27:50 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id 189-v6so249160wmw.2
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=ocvo+LKYsqrLzCzbMApnNGGpu7tgOjfxxFoa7kAxRIs=;
	b=M3AbgSu2BuCfPK/RdLovW6oOw166mtdRXS1qp7H51NYNAV5/LFuj6ZeVM5QL7KsI3Q
	dBW6o+SDhklmr1/98PXTRFEDKq1hvsjUBWwTAAM4SRUrOUYts0T9y13yzS6S6jVD5yVU
	f/jyRDZKIyh0d3xcdrdu/5kvOpPuKxRgkMNng5e8m3W7FjdzoFrmePI9OsTYV37taTOe
	i33umGmDt+FzFGjc1KVXkMEJLgjlhd6mjDmL+dBxo+hqwmYCTeqlKTPBhQ2jtUN8LTLJ
	+fgT+/FV4/UCu/aO53/xNLatd/mcAfoasxWkm7pnbyAR86Me28TVXlrENB/gWxf4FNQM
	JX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ocvo+LKYsqrLzCzbMApnNGGpu7tgOjfxxFoa7kAxRIs=;
	b=kNHKGR8ant5Gtd+Mpij/ViKgW4IM0mBjEr6EHTOh/8+Pm1oY1RkENWBmIPiAEvqe6Z
	MirAnXNY/VxAhXoS4O8rTDK66zYwiTaCsXWXFWt/gx4B6pDgh5U0GsPIVCITMqm/xGTC
	QdqsgoeolCRTQjumOvzsy6dIcPsu5KjPCizeYMOBVFa73XP4b16VlbpcG8YcRBo9Kk+C
	HXmF7IEuBQsSflEGH5ma8h1sT2m9L4rWqATx0f1tsmATOU8KUeLuyOwYUNjgl8r6lPXW
	tjTSA28d2A1Kvz6YeEjJZZFA7iBQqQvCwej/5iGJCTNhgNCek31aDa+2HnvCq30QSKqx
	XGGA==
X-Gm-Message-State: AGRZ1gIOCHRl2AyxcsCizY4HO+sdU8coHfZUxOCiuUwtcV6NIYuYi0VU
	/4W6iLV084yoxGklOwJN9aoCudRnWoQ=
X-Google-Smtp-Source: AJdET5eAJ0Z/mGera4aMImROjm2pzaWETX2AFKtt7SXPI8iORKphRrsujxuggU6mBVtJH6IFiwUibw==
X-Received: by 2002:a1c:248b:: with SMTP id
	k133-v6mr372657wmk.148.1540448869416; 
	Wed, 24 Oct 2018 23:27:49 -0700 (PDT)
Received: from localhost.localdomain ([109.144.208.247])
	by smtp.gmail.com with ESMTPSA id
	z18-v6sm2170193wrh.33.2018.10.24.23.27.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 24 Oct 2018 23:27:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Oct 2018 07:27:45 +0100
Message-Id: <1540448867-12695-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/3] packagegroups: add more packages
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
X-List-Received-Date: Thu, 25 Oct 2018 06:27:51 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 5317aee..718ea5a 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -28,6 +28,10 @@ RDEPENDS_packagegroup-security-utils = "\
     nmap \
     pinentry \
     python3-scapy \
+    ding-libs \
+    xmlsec1 \
+    keyutils \
+    libseccomp \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
     "
 
@@ -52,7 +56,7 @@ RDEPENDS_packagegroup-security-hardening = " \
 SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS_packagegroup-security-ids = " \
     tripwire \
-    samhain-client \
+    samhain-standalone \
     suricata \
     "
 
-- 
2.7.4


