Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D46CE00F81; Mon, 22 Aug 2016 06:08:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18C5CE00F43
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:08:28 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y134so6336956pfg.3
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=178KZnHzIz8m8kUiJn5MurkPS6NBEsQXJs38BcMOq5w=;
	b=OzQGu9S8DaokH1lM+48D2bOoKCdtNiBM9ZE8dKe2qM2UJhF1niJWKYJxIJRdvx5ttD
	eZSEhWu9b/Z8HOUBkMsG+MuBQZbwOrsKK1jbDsqPxV276Resz0IbKN3Gf2zpjtNWtLDD
	WO9acjfegxPZNnJGknhk+HeDvmXas9tAW/4NniuUKFhqdsbJQcOLr1psY2hVOENV3UYx
	22fmqit6w6dYaafEtbvjJqYRuHs11cEdaJCXr1uZg1dmiO7VR8fnKR3pZcV0d2c/Vl2i
	VTfJxDWRUMODlRcmeCyHR/eP+V759KkC3FniKbi519ERUKCYC2J446AiUKMqU/2TOp5T
	7yHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=178KZnHzIz8m8kUiJn5MurkPS6NBEsQXJs38BcMOq5w=;
	b=ih8YDKJHOLHruZOGHip55drqF4zDAtaD6f/etFnKyKzUsbLusg2SSNcklLPjwFuuxK
	eBOkD8Gpm1xmOr/rcYOFVeJFRQoR1CigF6nUlthjWQgj+WEME2Ymb8VNfos4BeQgNgC3
	6rBY3x29UfaVQqFaj2KewW1xnb668E7KMVfG8nhjQUrRvI0Dnd8du7DVzNtNyXjpYTIS
	qT+jJxV1v1jT8doGeq2FUWV7h2Ids04Brc3C2xEFMVj2aCus0H+VJaBZvyNSdOkEqF2c
	UdAEd9sGkt2poU1yphDtNjM8At3iGN5zwqGEbCPJZM2n7ar++vX2SDV15a10xWHDk+H9
	BfzA==
X-Gm-Message-State: AEkoout23WBLrbs8PaedwOrMRz93u32M76hZwLKcttOjZfkJmdmCchGu+G+HsVRWvsww9A==
X-Received: by 10.98.147.156 with SMTP id r28mr43012504pfk.154.1471871303405; 
	Mon, 22 Aug 2016 06:08:23 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	y184sm27247105pfg.94.2016.08.22.06.08.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 22 Aug 2016 06:08:22 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 18:38:18 +0530
Message-Id: <1471871298-28225-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 5/5] refpolicy_common.inc: add refpolicy minimum banner at selinux config.
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
X-List-Received-Date: Mon, 22 Aug 2016 13:08:39 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/refpolicy/refpolicy_common.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index e1eac50..a9dc466 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -158,6 +158,7 @@ install_config () {
 #     disabled - No SELinux policy is loaded.
 SELINUX=${DEFAULT_ENFORCING}
 # SELINUXTYPE= can take one of these values:
+#     minimum - Minimum Security protection.
 #     standard - Standard Security protection.
 #     mls - Multi Level Security protection.
 #     targeted - Targeted processes are protected.
-- 
1.9.1


