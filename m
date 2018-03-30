Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A001BE00C59; Fri, 30 Mar 2018 01:40:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38997E00B8B
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:28 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id j3so8824028qtn.9
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=GmAFRZnIDJXmZ+bp6KynXPgs1ujPONDCswa4K+0WkvU=;
	b=V2PplpOG6yckZPd+MMriqa3mqZR0bXwpazngHfZ3TLgsBu+KdthqDLLqXItwpnX6yf
	hJBQ7q/4txqET9wFWB+Ekm42MqQ08PWDhuNxZSc8lJz7gaQ2GxQP59u4cK6FYuxEw0iz
	mnTgSj8yB28/A9Qc9PpkdVPmF8G4205t5/5cRjJUmMXZXaAAwJZMDNK5Di3rO5d4HvB5
	1uaeQMalXS9+4l3MCBkZKHjs/ZXyGxcEDKHCNUavn6nPjbRdWnvAMGn5deO2PHnMv84N
	iBuk+bITG7EJ0xTRzdJBQGtbD3MdVC1T2oyvokyHz+kNLyMBJXTURn3aGALYI8+qGZAY
	Wg3Q==
X-Gm-Message-State: AElRT7Hewl0jjewkbMeTlhRzgG8St8+zwsXgMB4pgk1WAiq5GQDHh6Zh
	GoXPuM4SyMthHKfo6whMCpaSknEs
X-Google-Smtp-Source: AIpwx4/f8NySrfxJopjIlCjhyzNm0FuJBBeEvlfGMsWpugoiXSdRdxI1y6stX5IdH+z8kM4UR4/Eng==
X-Received: by 10.200.36.35 with SMTP id c32mr15706211qtc.43.1522399228206;
	Fri, 30 Mar 2018 01:40:28 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	i68sm6028679qkd.25.2018.03.30.01.40.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Mar 2018 01:40:27 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2018 09:40:19 +0100
Message-Id: <20180330084019.18955-4-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180330084019.18955-1-git@andred.net>
References: <20180330084019.18955-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 3/3] openjdk-8: use ca-certificates-java
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
X-List-Received-Date: Fri, 30 Mar 2018 08:40:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

The OpenJDK-8 package currently comes with a trustStore
that was generated at OpenJDK-8-native build time from
*all* certificates available in the system, not just from
those that are marked as trusted.

This isn't right...

openjdk-8 and openjre-8 now RDEPENDS on (and use) the CA
certificates as provided by the ca-certificates-java
package just added.

This makes sure that Java now uses the same trusted CA
certificates as the rest of the system.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc |  2 ++
 recipes-core/openjdk/openjdk-8-cross.inc  | 12 +++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index b2020c3..c8d157e 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -254,3 +254,5 @@ def version_specific_cflags(d):
 CFLAGS_append = " ${@version_specific_cflags(d)}"
 CXXFLAGS_append = " ${@version_specific_cflags(d)}"
 CXX_append = " -std=gnu++98"
+
+RDEPENDS_${PN} = "ca-certificates-java"
diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index d70c946..6795c92 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -57,7 +57,6 @@ EXTRA_OECONF_append = "\
     --with-sys-root=${STAGING_DIR_HOST} \
     --with-tools-dir=${STAGING_DIR_NATIVE} \
     --with-boot-jdk=${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native \
-    --with-cacerts-file=${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native/jre/lib/security/cacerts \
     \
     --disable-precompiled-headers \
     --disable-zip-debug-info \
@@ -88,6 +87,17 @@ do_install_append() {
               pack200 --repack --effort=9 --segment-limit=-1 --modification-time=latest --strip-debug "$0"'
       fi
     fi
+
+    if [ -d ${D}${JDK_HOME} ] ; then
+      rm ${D}${JDK_HOME}/jre/lib/security/cacerts
+      ln -s ${@os.path.relpath("${sysconfdir}/ssl/certs/java/cacerts", "${JDK_HOME}/jre/lib/security/cacerts")} \
+            ${D}${JDK_HOME}/jre/lib/security/cacerts
+    fi
+    if [ -d ${D}${JRE_HOME} ] ; then
+      rm ${D}${JRE_HOME}/lib/security/cacerts
+      ln -s ${@os.path.relpath("${sysconfdir}/ssl/certs/java/cacerts", "${JRE_HOME}/lib/security/cacerts")} \
+            ${D}${JRE_HOME}/lib/security/cacerts
+    fi
 }
 
 export MAKE_VERBOSE = "y"
-- 
2.16.2


