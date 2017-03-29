Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D86FFE007BA; Wed, 29 Mar 2017 00:04:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 295CCE0077F
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 00:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490771079; x=1522307079;
	h=subject:references:to:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=KuC4doG93fJgZv+IUHvs9d1pAXrdbWkDgjBWMtfPzNc=;
	b=BnCnwV3vCMfs7ZesOSprEvGzAwEKc3KxImDpnRT6wdwy5DcuAq6buWru
	tH2BzETc2CjSt6TPZznOJvUHPQNYqcUq+sADtacHMjcQModd5lIYGd1xD
	yPd9n5L3UWzGjEUOwOnE/Sh9l/H75HvRMcuXKbiRfWKHzjrKrUfAsxeXi w=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 29 Mar 2017 09:03:37 +0200
References: <1490732744-25547-5-git-send-email-jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
From: Jaap de Jong <jaap.dejong@nedap.com>
X-Forwarded-Message-Id: <1490732744-25547-5-git-send-email-jaap.dejong@nedap.com>
Message-ID: <2a708728-d51f-7514-934f-9dbaa8fcaf70@nedap.com>
Date: Wed, 29 Mar 2017 09:03:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490732744-25547-5-git-send-email-jaap.dejong@nedap.com>
Subject: [meta-oracle-java][PATCH 5/6] Use update-alternatives
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
X-List-Received-Date: Wed, 29 Mar 2017 07:04:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

---

  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 14 ++++++++++++++
  recipes-devtools/oracle-java/oracle-jse.inc     | 12 ++++++++++--
  2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 291a75d..9fd76e1 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -25,3 +25,17 @@ BBCLASSEXTEND = "native"
  
  RPROVIDES_${PN} += "java2-development"
  PROVIDES += "virtual/javac virtual/java-initial"
+
+pkg_postinst_${PN} () {
+	update-alternatives --install ${bindir}/jar   jar   ${JDK_HOME}/bin/jar 100
+	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/jre/bin/java 100
+	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/jre/bin/javac 100
+	update-alternatives --install ${bindir}/javah javah ${JDK_HOME}/bin/javah 100
+}
+
+pkg_prerm_${PN} () {
+	update-alternatives --remove jar   ${JDK_HOME}/jre/bin/jar
+	update-alternatives --remove java  ${JDK_HOME}/jre/bin/java
+	update-alternatives --remove javac ${JDK_HOME}/jre/bin/javac
+	update-alternatives --remove javah ${JDK_HOME}/jre/bin/javah
+}
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 7e508bf..37685cd 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -21,8 +21,6 @@ JDK_HOME = "${libdir_jvm}/${JDK_DIR}"
  do_install () {
  	install -d -m 0755			${D}${libdir_jvm}
  	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
-	install -d -m 0755			${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}/java
  }
  
  # All the files are provided in a binaray package, and keeping all the
@@ -36,3 +34,13 @@ INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
  FILES_${PN} = "/usr/"
  RPROVIDES_${PN} = "java2-runtime java2-vm"
  PROVIDES += "virtual/java"
+
+inherit update-alternatives
+
+pkg_postinst_${PN} () {
+	update-alternatives --install ${bindir}/java java ${JDK_HOME}/jre/bin/java 75
+}
+
+pkg_prerm_${PN} () {
+	update-alternatives --remove java ${JDK_HOME}/jre/bin/java
+}
-- 
2.7.4


