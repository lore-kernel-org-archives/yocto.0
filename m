Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F03ACE007DC; Mon,  4 Aug 2014 02:31:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF4B4E007D3
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 02:31:17 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140804093103084
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 09:31:03 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=57979 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XEEbZ-0005j1-V3
	for yocto@yoctoproject.org; Mon, 04 Aug 2014 05:30:58 -0400
Date: Mon, 4 Aug 2014 05:30:53 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408040529280.3841@localhost>
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
Subject: [yocto-docs][PATCH] dev-manual: Minor cleanups in Section 5.9.
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
X-List-Received-Date: Mon, 04 Aug 2014 09:31:28 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index a373f92..3ac3049 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -5104,7 +5104,7 @@ Gateways via their Web Interfaces</ulink>"</emphasis>
                         security problems.
                     </para></listitem>
                     <listitem><para>
-                        Pay particular attention to to the security for
+                        Pay particular attention to the security for
                         any web-based administration interface.
                         </para>
                         <para>Web interfaces typically need to perform
@@ -5182,7 +5182,7 @@ Gateways via their Web Interfaces</ulink>"</emphasis>
                 Use the following line in your
                 <filename>local.conf</filename> file or in your custom
                 distribution configuration file to enable the security
-                compiler and linker flags to your build:
+                compiler and linker flags for your build:
                 <literallayout class='monospaced'>
      require conf/distro/include/security_flags.inc
                 </literallayout>
@@ -5197,15 +5197,19 @@ Gateways via their Web Interfaces</ulink>"</emphasis>
                 OpenEmbedded build system to make your images more secure:
                 <itemizedlist>
                     <listitem><para>
-                        Ensure "debug-tweaks" is not listed with
+                        Ensure "debug-tweaks" is not one of your selected
                         <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_FEATURES'><filename>IMAGE_FEATURES</filename></ulink>.
-                        The default is to enable "debug-tweaks" by adding it
-                        to
-                        <ulink url='&YOCTO_DOCS_REF_URL;#var-EXTRA_IMAGE_FEATURES'><filename>EXTRA_IMAGE_FEATURES</filename></ulink>
-                        in <filename>local.conf</filename>.
-                        However, you should comment out the variable or be
-                        sure that it does not have "debug-tweaks" before
-                        producing your final image.
+                        When creating a new project, the default is to provide you
+                        with an initial <filename>local.conf</filename> file which
+                        enables this feature using the
+                        <ulink url='&YOCTO_DOCS_REF_URL;#var-EXTRA_IMAGE_FEATURES'><filename>EXTRA_IMAGE_FEATURES</filename></ulink> variable with the line:
+                <literallayout class='monospaced'>
+     EXTRA_IMAGE_FEATURES = "debug-tweaks"
+                </literallayout>
+                        To disable that feature, simply comment out that line in your
+                        <filename>local.conf</filename> file, or
+                        make sure <filename>IMAGE_FEATURES</filename> does not contain
+                        "debug-tweaks" before producing your final image.
                         Among other things, leaving this in place sets the
                         root password as blank, which makes logging in for
                         debugging or inspection easy during

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


