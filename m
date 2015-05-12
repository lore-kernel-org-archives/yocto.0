Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2070FE008DC; Tue, 12 May 2015 13:56:08 -0700 (PDT)
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
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBCF2E00820
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:06 -0700 (PDT)
Received: by qkx62 with SMTP id 62so15062720qkx.0
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=tPle+5D7rqPWM0dLAYYcymuPutDIX5IhHtXS5mtaUrc=;
	b=lR/O1R51S4BEipTjG9y75eq902WsoUXgt9rgeSTfKk1H9qnmdJYHnGhvkB3Ad1btPb
	3J/QtrhqgjzW0jXHzpZYQgWRqZ/64ue00GnqHxX7cupDixJ8HV8rcjvNNNv41MuG+o/9
	0UJPjGEAZPXfm9Qc4TIKQBiOE4PLnmn7GBrFU481Al+CjVDuzNpcjo11ZVsiPMveis4Z
	v1hP/mQqHgEznDP5lSoUb9iJ/QO9oFRR3IE0P9ND/SWHn+BzhxPdfjq0nhQmEW42jRIu
	8rUFKLhTQjVkkPw5ZTWa6nWzX3/QTkJ4kBMrD3vfZlNhiKX9yL7JlkDCRq/OGCk33Yni
	wYxw==
X-Received: by 10.55.51.129 with SMTP id z123mr36579588qkz.102.1431464166127; 
	Tue, 12 May 2015 13:56:06 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id 62sm14209921qgz.14.2015.05.12.13.56.04
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 12 May 2015 13:56:05 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Tue, 12 May 2015 17:57:03 -0300
Message-Id: <1431464224-19858-5-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
References: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH 5/6] oracle-jse-jdk: provide virtual/javac and virtual/java-initial
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
X-List-Received-Date: Tue, 12 May 2015 20:56:08 -0000

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 9e312d0..54e83b8 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -27,3 +27,4 @@ do_install_class-native() {
 BBCLASSEXTEND = "native"
 
 RPROVIDES_${PN} += "java2-development"
+PROVIDES += "virtual/javac virtual/java-initial"
-- 
2.1.4


