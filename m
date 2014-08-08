Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C33E00769; Fri,  8 Aug 2014 02:32:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD5BE00746
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 02:32:07 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140808093205712
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 09:32:05 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=36146 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XFgWm-0002jd-A8
	for yocto@yoctoproject.org; Fri, 08 Aug 2014 05:32:00 -0400
Date: Fri, 8 Aug 2014 05:31:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408080529400.8380@localhost>
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
Subject: [PATCH][yocto-docs] Ref manual, ch 15 -- minor link changes, grammar.
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
X-List-Received-Date: Fri, 08 Aug 2014 09:32:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i'm guessing that the OE wiki page for bitbake is the closest thing
there is to an "official" bitbake web page, so i'll just use that as a
replacement for all berlios.de links i run across, unless someone has
a better suggestion.

diff --git a/documentation/ref-manual/resources.xml b/documentation/ref-manual/resources.xml
index 686b48a..17b8e97 100644
--- a/documentation/ref-manual/resources.xml
+++ b/documentation/ref-manual/resources.xml
@@ -54,6 +54,8 @@
                 announcements.</para></listitem>
         </itemizedlist>
     </para>
+    For more Yocto Project-related mailing lists, see the Yocto Project community mailing lists page
+    <ulink url='&YOCTO_HOME_URL;/tools-resources/community/mailing-lists'>here</ulink>.
 </section>

 <section id='resources-irc'>
@@ -80,7 +82,7 @@
                 Project.</para></listitem>
             <listitem><para><emphasis>
                 <ulink url='http://www.intel.com/'>Intel Corporation</ulink>:</emphasis>
-                The company who acquired OpenedHand in 2008 and began
+                The company that acquired OpenedHand in 2008 and began
                 development on the Yocto Project.</para></listitem>
             <listitem><para><emphasis>
                 <ulink url='&OE_HOME_URL;'>OpenEmbedded</ulink>:</emphasis>
@@ -89,7 +91,7 @@
                 Poky derives from and contributes back to the OpenEmbedded
                 project.</para></listitem>
             <listitem><para><emphasis>
-                <ulink url='http://developer.berlios.de/projects/bitbake/'>
+                <ulink url='http://www.openembedded.org/wiki/BitBake'>
                 BitBake</ulink>:</emphasis> The tool used to process metadata.</para></listitem>
             <listitem><para><emphasis>
                 <ulink url='&YOCTO_DOCS_BB_URL;'>BitBake User Manual</ulink>:</emphasis>
@@ -116,7 +118,7 @@
         pull requests,
         or by submitting patches through email.
         For information on how to do both as well as information on how
-        to find out who is the maintainer for areas of code, see the
+        to identify the maintainer for each area of code, see the
         "<ulink url='&YOCTO_DOCS_DEV_URL;#how-to-submit-a-change'>How to Submit a Change</ulink>"
         section in the Yocto Project Development Manual.
     </para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


