Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C2AE00769; Thu,  7 Aug 2014 08:11:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C82BE002A9
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 08:11:52 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140807151150477
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 15:11:50 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=42283 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XFPM1-0005ij-QE
	for yocto@yoctoproject.org; Thu, 07 Aug 2014 11:11:45 -0400
Date: Thu, 7 Aug 2014 11:11:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408071109590.31283@localhost>
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
Subject: [PATCH][yocto-docs] ref-manual: Couple tweaks to chapter 11.
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
X-List-Received-Date: Thu, 07 Aug 2014 15:11:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index 4aafaea..c66aa0d 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -7,8 +7,8 @@

     <para>
         This chapter provides a reference of shipped machine and distro features
-        you can include as part of the image, a reference on image types you can
-        build, and a reference on feature backfilling.
+        you can include as part of your image, a reference on image features you can
+        select, and a reference on feature backfilling.
     </para>

     <para>
@@ -16,7 +16,10 @@
         should be included in the generated images.
         Distributions can select which features they want to support through the
         <filename><link linkend='var-DISTRO_FEATURES'>DISTRO_FEATURES</link></filename>
-        variable, which is set in the <filename>poky.conf</filename> distribution configuration file.
+        variable, which is set or appended to in a distribution's configuration file such as
+        <filename>poky.conf</filename>,
+        <filename>poky-tiny.conf</filename>,
+        <filename>poky-lsb.conf</filename> and so on.
         Machine features are set in the
         <filename><link linkend='var-MACHINE_FEATURES'>MACHINE_FEATURES</link></filename>
         variable, which is set in the machine configuration file and

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


