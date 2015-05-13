Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DEFFE00A19; Wed, 13 May 2015 06:48:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB255E00985
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:42 -0700 (PDT)
Received: by qku63 with SMTP id 63so28194799qku.3
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=KQ+rB7lICVpESJS68Tbh9p6gnAWZ2kImkmJvV+xng/U=;
	b=yQFzc8/2T9PK6648yIw6DMmMEvY/a8ZKLzmaXsYYbyLzIyuDEUbyNI71hI2Pn1aSZd
	v/ZWe13YQOeEFSPgdaHGmQthkrRelmTz5APlrKPznzL9xyyTCZMovL/QoLU2PuF+9g+f
	udiTbW+unK2iKglnH0iwDueP05WetdxSH8oDOv5g6VhjKO8MCHzG0HwplCIPXvXWqjGq
	eFVlvya4lrGTH7p+/7AIuPCgpKuP2Op8/MEHk1A6tafDTopUH3WFMw762PKvsr3Ho4gZ
	VJoaRupcxWMa8tlDbWe3CpdDeH9vkQl4+IhDIaQlUfd6eZ0lVpKT3bPkI24JmIbgSRvc
	vE2Q==
X-Received: by 10.140.100.200 with SMTP id s66mr26470829qge.1.1431524861797;
	Wed, 13 May 2015 06:47:41 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id
	f33sm15571513qkh.23.2015.05.13.06.47.38
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 May 2015 06:47:41 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Wed, 13 May 2015 10:48:37 -0300
Message-Id: <1431524917-9859-6-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
References: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH v2 6/6] oracle-jse: provide virtual/java
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
X-List-Received-Date: Wed, 13 May 2015 13:48:25 -0000

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index d4c33fb..7781421 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -30,3 +30,4 @@ INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 FILES_${PN} = "/usr/"
 RPROVIDES_${PN} = "java2-runtime"
+PROVIDES += "virtual/java"
-- 
2.1.4


