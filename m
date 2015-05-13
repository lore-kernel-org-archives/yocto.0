Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1126E00982; Wed, 13 May 2015 06:47:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB3EE0095D
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:33 -0700 (PDT)
Received: by qkx62 with SMTP id 62so28299623qkx.0
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=+y+cdGpJ03KXifhfeRTZZQWR3W8acDbAcwXS48Yvf4A=;
	b=l8MREBbwPf8r9oWCovntRg4qfjJ77ABlwCC4dSL5SAqL0GpaJH7BXZ5cfvDa1aoiyQ
	ao3Gisx6yEl5BYsALwl+jUp4RmTWA55uUpI5Ibw2VfM4RD0VN5DmpTyPoR3EGtZElGi+
	aMstinZgL4hNfeGn3qhjJaWk4rTHwYQ2rqDpCQpHeX48FiLAALnfCVFlplaOTk0clmBI
	7DfUbCp8zZIxCpHMhkdJOF4dnhfgx5ODh5DdKmi91AHgJAznsRenCWBECXjiGFk4fr+0
	KLzK9Rip54TdiRYx6c0/p1GzUr/TRmKi01IjmxTSJqKZamFEfcBU0AIHO3YmHQA/kvvj
	gatw==
X-Received: by 10.140.148.129 with SMTP id 123mr28061304qhu.23.1431524852723; 
	Wed, 13 May 2015 06:47:32 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id
	f33sm15571513qkh.23.2015.05.13.06.47.31
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 May 2015 06:47:32 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Wed, 13 May 2015 10:48:35 -0300
Message-Id: <1431524917-9859-4-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
References: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH v2 4/6] oracle-jse-jre: generate native content
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
X-List-Received-Date: Wed, 13 May 2015 13:47:35 -0000

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse-jre.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jre.inc b/recipes-devtools/oracle-java/oracle-jse-jre.inc
index 32cfac3..e8faba2 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre.inc
@@ -10,3 +10,5 @@ DESCRIPTION = "This is the proprietary JRE from Sun/Oracle, with the Hotspot JVM
 
 JDK_JRE = "jre"
 require oracle-jse.inc
+
+BBCLASSEXTEND = "native"
-- 
2.1.4


