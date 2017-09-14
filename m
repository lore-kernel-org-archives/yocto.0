Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 873B1E00CE4; Thu, 14 Sep 2017 13:22:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E8F8E00CD8
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 13:22:56 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id r66so287331qke.4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 13:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=rfVKjo6hApfEMwZCy4kOJCzrOJCCA0cNfEvMlzBRLc8=;
	b=AMGLExohxmnMRCA9T0tQTN0UDZFLq6qrxp88j+t9fLwN6r80cOBaeNoPEdu4TRR5Sp
	uKLa7rW3Rz/qgALp1ra4wcZWLEdm1mi0PRuPjmWiS5oYc82PzQgj53MKDHWHsPko0H2e
	2xbhGiVYPiqH+scmfWhqSHvgUsaCGFkyAiY9XuGQUnxX4e0Oac/I0phiuf0Rqo1bmZAe
	+5Q02TH6qub0VDcEVcaACVUST2+yh8EMeFA2h2EmcbwFjyKyywLoj4wYs8mIHaDXVN11
	YvzAAR14/mK3nIHEa8KaBTBgsjmUK767btH0Sl1tseDF99FFQsTAItYpbayKxV4syZGc
	c3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:organization;
	bh=rfVKjo6hApfEMwZCy4kOJCzrOJCCA0cNfEvMlzBRLc8=;
	b=fEa4+g2KK3Ug1XCSqqoJvbG2T7egy4S6PZBjcFLpKDh+UlhCHNbYdwpoYXTx8bczpZ
	41QUsLjQtutXfok/gUVIAoZ4CV15obDPKRC/OGIBzy0CnSVMCjy4raSlc3gngn2eUkBa
	/Zu575kqysmZ2oTHbTWVoaCGyT6Tvf+xMl7LnVbcF0Ry03JK9VhsMva4BnTV7XN8ImhU
	83XnI/sn+cUeWtIQlxlvZ7yMh/vm07yPKQPHK7sXqrv3p/XsgiDUHtcrFJlawA4Qw7Dy
	lfTNBdhQTnr672OgtMqbfiMR4XPRbvdCr1skH+pFoq1qaU1dHuJU7qHt76YeZ+P561bg
	RwpQ==
X-Gm-Message-State: AHPjjUh/NxLVUH8fAKO/MlL5fj+Y4+hNFCLVlGrUpZx1Yn61GvcboqlP
	n/G7NhqDOIYN216/80I=
X-Google-Smtp-Source: AOwi7QAIbOO9XhDiA3xDpMjVekc5yXFvDyKwMxJMt5+9iMz3ss0GkfwRZuMJXm9V9mAmLdjgOlrOlg==
X-Received: by 10.55.104.87 with SMTP id d84mr4324672qkc.202.1505420575354;
	Thu, 14 Sep 2017 13:22:55 -0700 (PDT)
Received: from centrium.lab.ossystems ([181.220.79.73])
	by smtp.gmail.com with ESMTPSA id
	i41sm12156355qta.23.2017.09.14.13.22.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Sep 2017 13:22:54 -0700 (PDT)
From: Fabio Berton <fabio.berton@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Thu, 14 Sep 2017 17:21:19 -0300
Message-Id: <20170914202119.6624-2-fabio.berton@ossystems.com.br>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20170914202119.6624-1-fabio.berton@ossystems.com.br>
References: <20170914202119.6624-1-fabio.berton@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Subject: [pyro][meta-oracle-java][PATCH 2/2] oracle-java: create directory before creating links
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
X-List-Received-Date: Thu, 14 Sep 2017 20:22:57 -0000

From: Jan Remmet <j.remmet@phytec.de>

if bindir directory doesn't exists the link is created wrongly:

file -b tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/image/home/yocto/build/tmp/sysroots/x86_64-linux/usr/bin
symbolic link to
`/home/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/jvm/java-8-oracle/bin/javac'

tested on morty

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
Signed-off-by: Maxin B. John <maxin.john@intel.com>
(cherry picked from commit 731d3d2cf7e7d65954991e79b9918575e06081c8)
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 935ad9b..a7210d9 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -12,11 +12,14 @@ JDK_JRE = "jdk"
 require oracle-jse.inc
 
 do_install_class-native() {
-	install -d -m 0755			${D}${libdir_jvm}
+	install -d				${D}${libdir_jvm}
 	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 
+	install -d				${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
+
+	install -d				${D}${JDK_HOME}/bin
 	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
 	ln -sf jar				${D}${JDK_HOME}/bin/fastjar
 }
-- 
2.14.1


