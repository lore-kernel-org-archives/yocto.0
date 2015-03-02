Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E717DE00871; Mon,  2 Mar 2015 03:13:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE50E00867
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 03:13:29 -0800 (PST)
Received: from [99.240.204.5] (port=45036 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YSOHv-00022Q-4P
	for yocto@yoctoproject.org; Mon, 02 Mar 2015 06:13:27 -0500
Date: Mon, 2 Mar 2015 06:13:25 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503020612060.26859@localhost>
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
Subject: [PATCH] Documentation: Clarify a couple minor things in kernel manual, ch 2.
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
X-List-Received-Date: Mon, 02 Mar 2015 11:13:35 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

Replace "files" with "${PN}" and reword discussion of defconfig file.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index 56fa17d..7840c0e 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -156,23 +156,25 @@
             <title>Changing the Configuration</title>

             <para>
-                You can make wholesale or incremental changes to the Linux
-                kernel <filename>.config</filename> file by including a
-                <filename>defconfig</filename> and by specifying
+                You can make wholesale or incremental changes to the final
+                <filename>.config</filename> file used for the eventual
+                Linux kernel configuration by including a
+                <filename>defconfig</filename> file and by specifying
                 configuration fragments in the
-                <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>.
+                <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>
+                to be applied to that file.
             </para>

             <para>
-                If you have a final Linux kernel <filename>.config</filename>
-                file you want to use, copy it to a directory named
-                <filename>files</filename>, which must be in
-                your layer's <filename>recipes-kernel/linux</filename>
-                directory, and name the file "defconfig".
-                Then, add the following lines to your linux-yocto
+                If you have a complete, working Linux kernel <filename>.config</filename>
+                file you want to use for the configuration, as before, copy that file
+                to the appropriate <filename>${PN}</filename> directory in your
+                layer's <filename>recipes-kernel/linux</filename> directory,
+                and rename the copied file to "defconfig".
+                Then, add the following lines to the linux-yocto
                 <filename>.bbappend</filename> file in your layer:
                 <literallayout class='monospaced'>
-     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
      SRC_URI += "file://defconfig"
                 </literallayout>
                 The <filename>SRC_URI</filename> tells the build system how to
@@ -181,7 +183,7 @@
                 extends the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-FILESPATH'><filename>FILESPATH</filename></ulink>
                 variable (search directories) to include the
-                <filename>files</filename> directory you created for the
+                <filename>${PN}</filename> directory you created to hold the
                 configuration changes.
             </para>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

