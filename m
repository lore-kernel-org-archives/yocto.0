Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BD75E009CD; Wed, 13 May 2015 06:47:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F53E00982
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:38 -0700 (PDT)
Received: by qku63 with SMTP id 63so28193380qku.3
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=tPle+5D7rqPWM0dLAYYcymuPutDIX5IhHtXS5mtaUrc=;
	b=ZFQPAzrhIGvW3g6SdYWxfmQbxccAUWJjR7wtNw9fAmuO6gsQxi+26r7p2kYVNIgdCe
	yN/fghUiKUSF1+rXq2LTrr/+wXk5AdX7g/iTE1fiC9BCuc+dGBcyd+dDG4jC9eYF7tKt
	QbkU4ynPmr+wa3ADVfkFW4BHiyLuc3Yw8x0e6NXXcpVYPf2W86bBCOkupJ/giMqQz/Km
	jqxDA43eXM1NZyc6x3F7TcxIE9FXXYqLD0H3R7cWgFUJvCd0dxz1PpwO1NT4tEeOwnx4
	nDxXHdpYmESqY3j6xF8WcvXmUKjueFkhhQIyKrzRl/RcIfIVGSfkOqC0nQqeK4m2+VOb
	kFxA==
X-Received: by 10.140.30.166 with SMTP id d35mr26005826qgd.85.1431524858057;
	Wed, 13 May 2015 06:47:38 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id
	f33sm15571513qkh.23.2015.05.13.06.47.33
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 May 2015 06:47:37 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Wed, 13 May 2015 10:48:36 -0300
Message-Id: <1431524917-9859-5-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
References: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH v2 5/6] oracle-jse-jdk: provide virtual/javac and virtual/java-initial
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
X-List-Received-Date: Wed, 13 May 2015 13:47:43 -0000

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


