Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35BCCE00A16; Thu,  2 Feb 2017 16:38:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE0BE009A5
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 16:38:15 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 19so283821pfo.3
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 16:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YZDg/Xm81u7XAnxNtaqySuadW7fC/jt2Z9n+Jjb+fPM=;
	b=YeDweHNipVcncEcVpTQOQIYC0kgmVTlE1PXaAx9blJl75eZSXlPMSo5DFsMRKUnnAq
	wtDfbZFcovV6BNcmtOPTcUj3kBaLWgLJWk62DGLtZj4TnNrxkD/DMatgBwB84B2LGixD
	lEgyVr9w9tDIKYBpAm5bZu8uvB/ZNLxcmO/CNX4Ua7hzFu+rBXBHEPO1sXgDxX3HlBX+
	abbKRWYjq4CGdHCsYJgMjOVL0Q1JUMI9dJzx6hUnUSt4ziSgQESrbsx+PO85pvenyMmW
	xvQn42rQYDfDqmBUJNdadWt+N13HfnrcYYfphJi7eJCzZzdVC9mC5SACH5fMbQCiLGiw
	EEbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YZDg/Xm81u7XAnxNtaqySuadW7fC/jt2Z9n+Jjb+fPM=;
	b=KivsfYvsVidA0UKDqBdZ+ZMCrEJccrO2gBcl6OQ5chknbqWUkaSfLVF9TNM/gaFiO2
	CWNnjuWk9jm9HOYB/d9RpxJNQ6cImWRjlDvhOaJNqO5mPHjNncwtVtYSpo+1mFSehHpY
	xrrW67wWPz24azc6AZeS5JcADOQrX6XeXxowOuB4vWg+ZyhQG8F2KLg6bPs5syVKfJpm
	UMa+bZzo0u0DCCtv2Dg5zCI2vHb5UhDX8seveq+Db85mMQEh9o1g1n+mFuK6bPFGOX5H
	vCOO/ssix1C5LFhnMKvA9SQ/iER66k0aIby4stwUZYh4vdgoDPDF4i2aLjex+47WABCt
	PGDA==
X-Gm-Message-State: AIkVDXKVRLSmruLixnYpPnffdKQ0NNh8W+5t9YRjHOSLPNa8876sLMOLpSgMVVj0hpghvg==
X-Received: by 10.99.56.29 with SMTP id f29mr14184597pga.167.1486082294957;
	Thu, 02 Feb 2017 16:38:14 -0800 (PST)
Received: from akuster-ThinkPad-X240.mvista.com
	(50-233-148-156-static.hfc.comcastbusiness.net. [50.233.148.156])
	by smtp.gmail.com with ESMTPSA id
	b10sm62032560pga.21.2017.02.02.16.38.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Feb 2017 16:38:14 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  2 Feb 2017 16:38:11 -0800
Message-Id: <1486082292-29971-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486082292-29971-1-git-send-email-akuster808@gmail.com>
References: <1486082292-29971-1-git-send-email-akuster808@gmail.com>
Subject: [meta-cgl][PATCH 2/3] iscsi-initiator-utils: make it DISTRO_FEATURE dependent
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
X-List-Received-Date: Fri, 03 Feb 2017 00:38:27 -0000

From: Armin Kuster <akuster@mvista.com>

When this package was updated in OE,
it now requires systemd. Make this optional.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index b0c2cac..045691a 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -42,7 +42,7 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     strongswan \
     vlan \
     corosync \
-    iscsi-initiator-utils \
+ ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils", "",d)} \
     openais \
     openipmi \
     openhpi \
-- 
2.7.4


