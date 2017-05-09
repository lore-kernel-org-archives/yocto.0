Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 363BCE00B3D; Tue,  9 May 2017 07:47:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C17E00B2F
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:07 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id a23so307508pfe.0
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=YZWRFNTz6n9O58s/mQcjLjBzVJ63ekkcw3Ejw6MJLnM=;
	b=Y/ReGYKMGXBg1WBs/3PBUPXdkeO8IkdOKqEuNy0ylhk14zkCkCRyCOdsD/LvVDBdjP
	nSpz/t883W+Js+CaIOYZSKHX70+VNJP8CwHN0WJFGKAvJ/A8LWgtJXyUoVxpMSCFmpdk
	ghbYoHi7/uQrQngzgvxXXPZW9BPbG+deB3wK8zAwFuNsm9YG9o6u9cD7oTCtVMd/2KZV
	CJchkZnlW8hM+AGrNvy6mlxtnBURW4haw6fsQ71Jz/VuKuroozQsqQu7U3uWR3MRGsaZ
	lbGcWSsrOvHCLovG/PrBtr6Ky267PD7i4Km3Go9y5DGQlkdBWLiikiHUNm2JG7rSVrgB
	djSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=YZWRFNTz6n9O58s/mQcjLjBzVJ63ekkcw3Ejw6MJLnM=;
	b=G+mhtgfuLOYO+79s/Ib3c2upKqX5UrFpRo1xNyuYaPnSsCnAiEjotWT4o045uOl3DE
	zk0DI/1KJTICW25bAmzDx+lUm7ot37lBntO8mX2vV8LSE23BXtGHzkXiHezg6LL2FOPd
	8N+Y8u+DQb5fAXmrjS+fUIue2VPMZYwTW0ixmmf09T27UwdsWm8HXCQsOhqOqmiIsvdb
	y3tDRcFZHgugUpgdhoC0iD6iDDqMwTWYGxCQQbaRykamP17ZNOYKsOEMy8mVpCFDdFTG
	NvTwJelYaYt0KqA47nqKUi9h9eVcK4zIKj7P7xaf1K0mTmUlpS0gMluw38xRRxjVQF1Z
	fJnA==
X-Gm-Message-State: AODbwcBfiObDE9RzzQ9il/BTRoEz69Dt3lwapwgVLOP8roaZcr2Qj6Xn
	GqSufRfcC96cRERk
X-Received: by 10.99.189.2 with SMTP id a2mr539850pgf.85.1494341227444;
	Tue, 09 May 2017 07:47:07 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:55 -0700
Message-Id: <1494341221-17621-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/10] packagegroup: remove tpm components
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
X-List-Received-Date: Tue, 09 May 2017 14:47:08 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb             | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 2180908..681874c 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -57,17 +57,3 @@ SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
 RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
     "
-
-SUMMARY_packagegroup-security-tpm = "Security TPM support"
-RDEPENDS_packagegroup-security-tpm = " \
-    tpm-tools \
-    trousers \
-    tpm2.0-tools \
-    libtss2 \
-    resourcemgr \
-    libtctidevice \
-    libtctisocket \
-    resourcemgr \
-    libtpm \
-    swtpm \
-    "
-- 
2.7.4


