Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D288BE0043F; Fri, 25 Jul 2014 08:37:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05959E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 08:37:07 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140725153705157
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 15:37:05 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [24.211.139.253] (port=32820 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XAhYI-0004gf-TZ
	for yocto@yoctoproject.org; Fri, 25 Jul 2014 11:36:59 -0400
Date: Fri, 25 Jul 2014 11:36:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1407251135170.6404@localhost>
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
Subject: [yocto-docs][PATCH] dev-manual: Add some links, update another.
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
X-List-Received-Date: Fri, 25 Jul 2014 15:37:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Add in a few links to member orgs, and update the BitBake link.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  yeah, i'm bored ...

diff --git a/documentation/dev-manual/dev-manual-intro.xml b/documentation/dev-manual/dev-manual-intro.xml
index f3cf489..92d67e0 100644
--- a/documentation/dev-manual/dev-manual-intro.xml
+++ b/documentation/dev-manual/dev-manual-intro.xml
@@ -39,8 +39,11 @@
             <link linkend='metadata'>Metadata</link>.
             A good example is Angstrom, which has had a distribution
             based on the Yocto Project since its inception.
-            Other examples include  commercial distributions like
-            Wind River Linux, Mentor Embedded Linux, and ENEA Linux.
+            Other examples include commercial distributions like
+            <ulink url='https://www.yoctoproject.org/organization/wind-river-systems'>Wind River Linux</ulink>,
+            <ulink url='https://www.yoctoproject.org/organization/mentor-graphics'>Mentor Embedded Linux</ulink>,
+            <ulink url='https://www.yoctoproject.org/organization/enea-ab'>ENEA Linux</ulink>
+            and <ulink url='https://www.yoctoproject.org/ecosystem/member-organizations'>others</ulink>.
             See the "<link linkend='creating-your-own-distribution'>Creating Your Own Distribution</link>"
             section for more information.
         </note>
@@ -187,7 +190,7 @@
                     from which the Yocto Project derives its build system (Poky)
                     and to which it contributes.</para></listitem>
                 <listitem><para><emphasis>
-                    <ulink url='http://developer.berlios.de/projects/bitbake/'>
+                    <ulink url='http://www.openembedded.org/wiki/BitBake'>
                     BitBake</ulink>:</emphasis> The tool used by the OpenEmbedded build system
                     to process project metadata.</para></listitem>
                 <listitem><para><emphasis>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


