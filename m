Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CF06E0056A; Fri,  1 Aug 2014 11:11:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDA1E004E0
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 11:11:26 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140801181123944
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 18:11:23 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=35811 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XDHIT-0002o5-SK
	for yocto@yoctoproject.org; Fri, 01 Aug 2014 14:11:17 -0400
Date: Fri, 1 Aug 2014 14:11:13 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408011409470.25140@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [yocto-docs][PATCH] dev-manual: Tweaks for first two sections of chapter 5.
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
X-List-Received-Date: Fri, 01 Aug 2014 18:11:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  given the length of this chapter, i'm going to do it in bite-size
pieces.

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 5f8da23..05d1e95 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -71,6 +71,7 @@
                 you will see several layers:
                 <filename>meta</filename>,
                 <filename>meta-skeleton</filename>,
+                <filename>meta-selftest</filename>,
                 <filename>meta-yocto</filename>, and
                 <filename>meta-yocto-bsp</filename>.
                 Each of these folders represents a distinct layer.
@@ -151,7 +152,7 @@
      BBFILE_COLLECTIONS += "yoctobsp"
      BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
      BBFILE_PRIORITY_yoctobsp = "5"
-     LAYERVERSION_yoctobsp = "2"
+     LAYERVERSION_yoctobsp = "3"
                         </literallayout></para>
                         <para>Here is an explanation of the example:
                         <itemizedlist>
@@ -193,7 +194,7 @@
                                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-BBFILE_PRIORITY'>BBFILE_PRIORITY</ulink></filename>
                                 variable then assigns a priority to the layer.
                                 Applying priorities is useful in situations
-                                where the same package might appear in multiple
+                                where the same recipe might appear in multiple
                                 layers and allows you to choose the layer
                                 that takes precedence.</para></listitem>
                             <listitem><para>The
@@ -347,6 +348,12 @@
      DEPENDS_append_one = " foo"
      DEPENDS_prepend_one = "foo "
                             </literallayout>
+                            As an actual example, here's a line from the recipe for
+                            the OProfile profiler, which lists an extra build-time
+                            dependency when building specifically for 64-bit PowerPC:
+                            <literallayout class='monospaced'>
+     DEPENDS_append_powerpc64 = " libpfm4"
+                            </literallayout>
                             <note>
                                 Avoiding "+=" and "=+" and using
                                 machine-specific
@@ -534,7 +541,7 @@
      LICENSE = "MIT"
      LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-     PR = "r44"
+     PR = "r45"

      SRC_URI = "file://config file://machconfig"
      S = "${WORKDIR}"
@@ -543,7 +550,7 @@
      INHIBIT_DEFAULT_DEPS = "1"

      do_install() {
-	     # Only install file if it has a contents
+	     # Install file only if it has contents
              install -d ${D}${sysconfdir}/formfactor/
              install -m 0644 ${S}/config ${D}${sysconfdir}/formfactor/
 	     if [ -s "${S}/machconfig" ]; then

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


