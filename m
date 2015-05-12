Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECEFFE004F6; Tue, 12 May 2015 13:56:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11E9E004F6
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:04 -0700 (PDT)
Received: by qgfi89 with SMTP id i89so11326603qgf.1
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=+y+cdGpJ03KXifhfeRTZZQWR3W8acDbAcwXS48Yvf4A=;
	b=m1r31MdFWGrLln1uyLLpHI6jhXSc6awQM9urErSRVeK9C5l/eUQ1pq+hhAMncldWKO
	7M86ERLmMw46oWsTPzzOsnHq6MJKSb98QBl6xTUUYGnlKX1I6oQSYGxmDvxdoRYDqEU8
	saO53I6OuygZJaroHHUjTOTkxkhXKQ/1etSLnIIZxcKY9rmvHwOH3OD/XZlW7mRmaB9x
	ut9PpQHPx5yZD6raiUstPNDXp9cRQ22V8kAMxBD1vDZjTT0u2mtq5dOIAQQ9KSh2jZ2f
	VNF/112n0tbVfSfegwLPF3Cs/tK9b6ts9eZP26tFRrf6CK+sG+pqrgj0xa4i7ow3o+K5
	ZIxg==
X-Received: by 10.140.236.147 with SMTP id h141mr23679005qhc.77.1431464164554; 
	Tue, 12 May 2015 13:56:04 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id 62sm14209921qgz.14.2015.05.12.13.56.03
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 12 May 2015 13:56:04 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Tue, 12 May 2015 17:57:02 -0300
Message-Id: <1431464224-19858-4-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
References: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH 4/6] oracle-jse-jre: generate native content
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
X-List-Received-Date: Tue, 12 May 2015 20:56:09 -0000

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


