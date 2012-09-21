Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B721E00717
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 07:36:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CFF13400A1;
	Fri, 21 Sep 2012 16:06:39 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2012 16:36:08 +0200
Message-Id: <f423e465e06fe2ecc63b23eb00dfe583372ea662.1348236303.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
	<1af602c372ef3d674ffc3553ef7bd4f4532834e5.1348236303.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1348236303.git.timo.mueller@bmw-carit.de>
References: <cover.1348236303.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 02/28] documentation/adt-manual/adt-manual-eclipse-customization.xsl: Added chunking and link parameters.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Sep 2012 14:36:42 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

These parameters are required so resolve links between different
documentation parts inside eclipse.
---
 .../adt-manual-eclipse-customization.xsl           |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/documentation/adt-manual/adt-manual-eclipse-customization.xsl b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
index 7844738..74600bd 100644
--- a/documentation/adt-manual/adt-manual-eclipse-customization.xsl
+++ b/documentation/adt-manual/adt-manual-eclipse-customization.xsl
@@ -6,9 +6,15 @@
 	version="1.0">
 
   <xsl:import
+	  href="http://docbook.sourceforge.net/release/xsl/current/html/onechunk.xsl" />
+  <xsl:import
 	  href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl" />
 
   <xsl:param name="chunker.output.indent" select="'yes'"/>
+  <xsl:param name="chunk.first.sections" select="1"/>
+  <xsl:param name="chunk.section.depth" select="10"/>
+  <xsl:param name="use.id.as.filename" select="1"/>
+  <xsl:param name="ulink.target" select="'_self'" />
   <xsl:param name="base.dir" select="'html/adt-manual/'"/>
   <xsl:param name="html.stylesheet" select="'../book.css'"/>
   <xsl:param name="eclipse.manifest" select="0"/>
-- 
1.7.7.6


