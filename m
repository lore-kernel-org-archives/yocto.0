Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6574E007B5; Wed, 29 Mar 2017 00:04:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26E3CE00777
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 00:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490771074; x=1522307074;
	h=subject:references:to:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=RhQasErOG3waI/a5CfcTU/3Mo7kz4J+rNKlGOnFGvAw=;
	b=LRI7JHBfcS21uEz+7oOD4BL+tTGfF2wU6jCvX6zmHn655h4w2mHtQHT2
	59el6reta47oYFp9vExNHcna47pGstsqfC5yL74+QxL5cAVp05Z5pBE9r
	OwrO4mS+IrUN9bwEhCj37AGgjqJaTRqrYPAy1XE0aSqBw0WjmYLbSgJGF c=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 29 Mar 2017 09:03:32 +0200
References: <1490732744-25547-4-git-send-email-jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
From: Jaap de Jong <jaap.dejong@nedap.com>
X-Forwarded-Message-Id: <1490732744-25547-4-git-send-email-jaap.dejong@nedap.com>
Message-ID: <0522ccc5-b8dc-3c69-dc1b-ec4460e49402@nedap.com>
Date: Wed, 29 Mar 2017 09:03:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490732744-25547-4-git-send-email-jaap.dejong@nedap.com>
Subject: [meta-oracle-java][PATCH 4/6] Use 'standarized' install path
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
X-List-Received-Date: Wed, 29 Mar 2017 07:04:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

---

  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 15 ++++++---------
  recipes-devtools/oracle-java/oracle-jse.inc     | 12 ++++++++----
  2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 6f13125..291a75d 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -12,16 +12,13 @@ JDK_JRE = "jdk"
  require oracle-jse.inc
  
  do_install_class-native() {
-    install -d -m 0755 ${D}${libdir}
-    install -d -m 0755 ${D}${bindir}
-    cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${libdir}/
-    for prog in java javac; do
-	( cd ${D}${bindir} && ln -sf ${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
-    done
+	install -d -m 0755			${D}${libdir_jvm}
+	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
  
-    ( cd ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin ; \
-      ln -sf javah gjavah ; \
-      ln -sf jar fastjar )
+	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
+	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
+	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
+	ln -sf jar				${D}${JDK_HOME}/bin/fastjar
  }
  
  BBCLASSEXTEND = "native"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index a3701a2..7e508bf 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -14,11 +14,15 @@ RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
  PR =. "u${PV_UPDATE}"
  S = "${WORKDIR}"
  
+libdir_jvm ?= "${libdir}/jvm"
+JDK_DIR = "java-8-oracle"
+JDK_HOME = "${libdir_jvm}/${JDK_DIR}"
+
  do_install () {
-	install -d -m 0755					${D}${datadir}/${JDK_JRE}${PV}_${PV_UPDATE}
-	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}			${D}${datadir}/
-	install -d -m 0755					${D}${bindir}
-	ln -sf ${datadir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/java ${D}${bindir}/java
+	install -d -m 0755			${D}${libdir_jvm}
+	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
+	install -d -m 0755			${D}${bindir}
+	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}/java
  }
  
  # All the files are provided in a binaray package, and keeping all the
-- 
2.7.4


