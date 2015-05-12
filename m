Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA9AAE007B9; Tue, 12 May 2015 13:56:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB406E00982
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:07 -0700 (PDT)
Received: by qku63 with SMTP id 63so14980653qku.3
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=KQ+rB7lICVpESJS68Tbh9p6gnAWZ2kImkmJvV+xng/U=;
	b=xkrOQ5Fn91mWrUToXzwNNuQ9Qf7NL6IGeupPo3cZwNDOQcDTkuUUFjgnyyZG3zmk3K
	8YJ58qyJ1L9/N5CuVsWsc7g6LIBogfPD2gImwGXZRPqMQOBotpnoHuSauCDAvvYHbHdi
	n3PNN1j/CahGI3KeoEjgAzYsU5sdc8Z7uItG7ndxOzb0K7i0pigtf8+QGfe5n6a8qU6H
	Mk2DLnKquWArE7rdRNWdYuETTxhXkWI2xZ9IchglmRAgBoYJETy8POsGKcED0RE5XCVc
	QwdrYIDwE4I91YG+bLMGdKMkmnfJ/1gS6itfwzcU9ALhDSbOIrITAV0ZmsX3fxoSmfZx
	9vyA==
X-Received: by 10.55.22.194 with SMTP id 63mr38141236qkw.3.1431464167542;
	Tue, 12 May 2015 13:56:07 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id 62sm14209921qgz.14.2015.05.12.13.56.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 12 May 2015 13:56:07 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Tue, 12 May 2015 17:57:04 -0300
Message-Id: <1431464224-19858-6-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
References: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH 6/6] oracle-jse: provide virtual/java
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
X-List-Received-Date: Tue, 12 May 2015 20:56:11 -0000

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


