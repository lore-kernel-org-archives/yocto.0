Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A032E00CD8; Thu, 14 Sep 2017 13:22:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10DB7E00C7B
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 13:22:53 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id o77so293871qke.2
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 13:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:organization;
	bh=+JLGo6oIAvyAAtlmZ+nRZhmOh46R0A9faxCAWWJx6EQ=;
	b=XqvDcdtM2UPj3F17rqSBd6yBCATdv6Q1pg+aYYSjfrq+xG+gvLVvEbs9EFZLHVrOAc
	wNz5jlaz03jn/pv+EGrZ72JhPbDDxSlwbtUC/jkuxQ7Rvh+iGCaUnS3xkHYLfyGy5tbR
	vCLmxPyzo1IOmXjHUG6sJXNi9mhwzXzTWiZ0PSz4Bozxz+FBCI1n5HCwMq9h9v0oYYOq
	TRquQNhikvN7odmBd6VoCqclZBAYbbwM+IQ6m8w3Miabud7ncEnmAC6A6SCI1MUhoX5l
	57jMRHzMRUk/AoNQmGxtG+jY3tG/9PsgsVmkmCvHa/zMQfxpaUjFrVL8SyBPws7qb8z/
	tGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:organization;
	bh=+JLGo6oIAvyAAtlmZ+nRZhmOh46R0A9faxCAWWJx6EQ=;
	b=N6LAdfG9xZ/M0636X3DdhU9HlnIGV8/IeALvPCWR9C3SMonS8Lj+IggoPi/t/zRpoX
	oBUJvffJD3Kr37ct1v+vtqN4fpm7eGibOzhYZtnWwUuc9AEOF0D7Q566dDoeo8wytuEv
	dGV/ua5XxqTEg/5nvlO3XIQJAvqHlRV3K+hF4YcDj9cVy8a6+9GGXGkHozgjn3xotByE
	qhkVjBqb9rvGvqYoLgCnZzOb2fY236H4CgV180AVvFEJ5IkAuFcZGlEmaUg9usqElTUB
	fiNfJ3SmhlzHIpxzL7mi1x41+EmjMUjdUcL/gq+/m03eRVgU8mvutQHO6i5BJLG8khCm
	5aYA==
X-Gm-Message-State: AHPjjUjJ1rH9u7r3aO7X8dTDKD3pHw+L+HGxyQVjrkf3KljZGE8NJuou
	vseNxxHVIlZfpFHYN9Q=
X-Google-Smtp-Source: AOwi7QBgBgcZkqIRkmtmlL7iess9YrqNkDWJRIcM8mGBbSRx45nZOHIVYn6v+qLy7sQXICrf2yOXPA==
X-Received: by 10.55.203.210 with SMTP id u79mr4142431qkl.189.1505420572497;
	Thu, 14 Sep 2017 13:22:52 -0700 (PDT)
Received: from centrium.lab.ossystems ([181.220.79.73])
	by smtp.gmail.com with ESMTPSA id
	i41sm12156355qta.23.2017.09.14.13.22.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Sep 2017 13:22:51 -0700 (PDT)
From: Fabio Berton <fabio.berton@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Thu, 14 Sep 2017 17:21:18 -0300
Message-Id: <20170914202119.6624-1-fabio.berton@ossystems.com.br>
X-Mailer: git-send-email 2.14.1
Organization: O.S. Systems Software LTDA.
Cc: Jan Kiszka <jan.kiszka@siemens.com>
Subject: [pyro][meta-oracle-java][PATCH 1/2] Fix binary paths when setting alternatives
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
X-List-Received-Date: Thu, 14 Sep 2017 20:22:54 -0000

From: Jan Kiszka <jan.kiszka@siemens.com>

Neither the JDK nor the JRE puts binaries under $JAVA_HOME/jre anymore.
Seen with Java 8, update 131.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
Signed-off-by: Maxin B. John <maxin.john@intel.com>
(cherry picked from commit 0a25dd797e4cac7b727cd38308a46698a95b21b9)
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 12 ++++++------
 recipes-devtools/oracle-java/oracle-jse.inc     |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 9fd76e1..935ad9b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -28,14 +28,14 @@ PROVIDES += "virtual/javac virtual/java-initial"
 
 pkg_postinst_${PN} () {
 	update-alternatives --install ${bindir}/jar   jar   ${JDK_HOME}/bin/jar 100
-	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/jre/bin/java 100
-	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/jre/bin/javac 100
+	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/bin/java 100
+	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/bin/javac 100
 	update-alternatives --install ${bindir}/javah javah ${JDK_HOME}/bin/javah 100
 }
 
 pkg_prerm_${PN} () {
-	update-alternatives --remove jar   ${JDK_HOME}/jre/bin/jar
-	update-alternatives --remove java  ${JDK_HOME}/jre/bin/java
-	update-alternatives --remove javac ${JDK_HOME}/jre/bin/javac
-	update-alternatives --remove javah ${JDK_HOME}/jre/bin/javah
+	update-alternatives --remove jar   ${JDK_HOME}/bin/jar
+	update-alternatives --remove java  ${JDK_HOME}/bin/java
+	update-alternatives --remove javac ${JDK_HOME}/bin/javac
+	update-alternatives --remove javah ${JDK_HOME}/bin/javah
 }
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 18ef411..f40ea5c 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -41,9 +41,9 @@ PROVIDES += "virtual/java"
 inherit update-alternatives
 
 pkg_postinst_${PN} () {
-	update-alternatives --install ${bindir}/java java ${JDK_HOME}/jre/bin/java 75
+	update-alternatives --install ${bindir}/java java ${JDK_HOME}/bin/java 75
 }
 
 pkg_prerm_${PN} () {
-	update-alternatives --remove java ${JDK_HOME}/jre/bin/java
+	update-alternatives --remove java ${JDK_HOME}/bin/java
 }
-- 
2.14.1


