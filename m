Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DFC4E00CC1; Sun, 16 Sep 2018 08:57:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2899FE00C45
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:51 -0700 (PDT)
Received: by mail-pf1-f175.google.com with SMTP id d4-v6so6423939pfn.0
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=9n5mYl9MhIjOoBS+yRwTvHACzI3ZY6Wx4w2G47z+8TQ=;
	b=dlCh0nwAs7gIOD6pksAxOSqCEJKtTYnLLgeBFl9MCR1TD2Wl+dKVzky/H5CU4deAH2
	Di6opkFSMzdASZ+yGXcMvBVuhCDcLOdvalpmwvxEIJE6G7Xyf+HbkW+q9wcEBMTrmMDC
	yBalHFvXM7DmECFJZgnAiiOpufRtZvtTSG1cyBEq/1FwDbWtzAgdxo/UX07YIl4vs2gt
	ecK1vBxuv5CncyLrEqCLULwk4ruMykSC5ZuCaCFTOXROsG7pSKotoiaoXIC/SzUPkXDA
	wA9jN+5TmnIM0QrbpdCMrB73R11INtHiZJEJqfuJQ+zVkYqTvumx2BbnTqfk9uUwxGSg
	8Mdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=9n5mYl9MhIjOoBS+yRwTvHACzI3ZY6Wx4w2G47z+8TQ=;
	b=ACDCzQJlIvTCV6CXNUbQQlddSBsY9eq7gqDjSGEspc54v17SvFBdsLAit8cIeR7Pq9
	PaPDbzvgW11do3mowffYzwLM1Kr7DNaFFsqBat6Z5EnemnC41T3cwSuhVefSIfIlo174
	iu72dGuHGFT7nb0oxSZyO+QoEm3AJvvVxwc/DoxVi4kzXaun6yHnEdYd8V91OwRJ73UU
	1qMOML15E1vB+ci7dgo/tCHl3DjqknRpfCFGbarMyKrqR7PqlVm4Ai9JcOjqi7kNetm5
	YuSnEZkH1O2Xk3WKeqCkD0fai2V7KkKQf4WEZiNd+HCm/FTOUNLrw17fkHNVOWr7sb+H
	hnFQ==
X-Gm-Message-State: APzg51AoRlmAx4sB4yzxc8497/j3F2s2GWAf9j//aDYO4Ab2j3KEmH8p
	Wu2Fb9ygzcl9nWZ/ZVQXk9jCgG7c
X-Google-Smtp-Source: ANB0VdalFeX0JPXscfjUw/INKQchcA/U6shj+MNPsLlpteIrzXTH9eNlc91nCJG19RTDnUoQK5V7Cg==
X-Received: by 2002:aa7:818f:: with SMTP id
	g15-v6mr22009145pfi.71.1537113470553; 
	Sun, 16 Sep 2018 08:57:50 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.49
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:18 -0700
Message-Id: <20180916155719.9911-24-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 24/25] lynis: update to 2.6.8
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:56 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-auditors/lynis/{lynis_2.5.1.bb => lynis_2.6.8.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-security-compliance/recipes-auditors/lynis/{lynis_2.5.1.bb => lynis_2.6.8.bb} (89%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.6.8.bb
similarity index 89%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
rename to meta-security-compliance/recipes-auditors/lynis/lynis_2.6.8.bb
index c25b804..28a4469 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.6.8.bb
@@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
 SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
-SRC_URI[sha256sum] = "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
+SRC_URI[md5sum] = "91a538055bfb682733ef8e4fe7eb0902"
+SRC_URI[sha256sum] = "2e4c5157a4f2d9bb37d3f0f1f5bea03f92233a2a7d4df6eddf231a784087dfac"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.17.1


