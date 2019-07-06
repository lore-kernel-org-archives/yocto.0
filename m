Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A929E00D4F; Sat,  6 Jul 2019 16:32:37 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF41BE00D1C
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 16:32:35 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id i189so5801196pfg.10
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 16:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=We5mAu36Ln2c8ZiYUCabeyRjoQU9wC0mY1D9hGZhrZM=;
	b=DlcOa3yBImupSNqvOED0xOl2MdSd1zfKxrdwJdQ7q7UHL9adpXBjYrFSj6Dq6r+ytQ
	8mgRY9pWwpD2JlGVCGVkvD2hR4mFYozCdz1qDoQK7tl+rNcdNauQNSj3IOfnCalcKSfX
	KuXNaN/GRTfzds0Yw38ZHy/qblM/Xi6eRdUve+3ITH08AJ8BXqPY5Px6b4EUZ6UmhSsb
	vk2whyU3VsExW9DjOXU1PNOu074our07zNVroYvKL4SZkF9bCnOFjXJzCIsJSkHAjzOY
	VubJzSOHhqraGE8HCYTJx+S/Nh192N21veDBLMd6eRPnRrwRFIFKH7Lzvaplh0EWUcJC
	Rggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=We5mAu36Ln2c8ZiYUCabeyRjoQU9wC0mY1D9hGZhrZM=;
	b=Py6aF5TeHGIMmKJk1ioY6gpzJxf8gwGpaTPShqGGdXyq1QPk7lIxCu2KyHYT77twPb
	Z5ObpoAxM2aEBPBR7bLamdCm7pc0Q0K1808+EhSYoVdDuELnbvugf+GsiCAQHcWVhiCj
	psU/i/YuDwAqjFXsDfK6jx2qv1ymesL4aK5aNOzai820lBrTYqDbEPxAhUFoArkIAbYu
	fKGfKvdmLIqn+0PbgYOu5ZS5jZqUpIKkkQcaMURu+n+bIM3Pmpwom40ZY5q+pk07XXqu
	qVlqgcVnFbLlku5XOnLZWr+2DQFKmBlW6HLWEH6ReruelkpSACFBhQbaG8VOusjFUuyI
	Nl6Q==
X-Gm-Message-State: APjAAAX6skmLL1UscttTIYZ479qnFbCjCQriTCo563eMz7Sal/zNkuNR
	W947NZv7/nHd+J2RtUqhEh2VpVl/D+A=
X-Google-Smtp-Source: APXvYqzUVJ/0L6/XaetmCNfXVxB69bcLZMZocr6f5dRbV9NVajr3Ae9eE+VrIff74PxjWYMvjBKNrw==
X-Received: by 2002:a65:48c3:: with SMTP id o3mr13556336pgs.70.1562455955169; 
	Sat, 06 Jul 2019 16:32:35 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	a25sm12486639pfn.1.2019.07.06.16.32.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Jul 2019 16:32:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Jul 2019 16:32:30 -0700
Message-Id: <20190706233230.2774-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190706233230.2774-1-akuster808@gmail.com>
References: <20190706233230.2774-1-akuster808@gmail.com>
Subject: [meta-security-compliance][PATCH 4/4] meta-security-compliance: add meta-python
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
X-List-Received-Date: Sat, 06 Jul 2019 23:32:37 -0000

with some for the recipe updates, more pyton support is needed

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/conf/layer.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index b245a16..9ccadab 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -10,6 +10,4 @@ BBFILE_PRIORITY_scanners-layer = "10"
 
 LAYERSERIES_COMPAT_scanners-layer = "warrior"
 
-LAYERDEPENDS_scanners-layer = " \
-    core \
-"
+LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
-- 
2.17.1


