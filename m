Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9EC7E00CC2; Sun, 18 Dec 2016 14:51:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34445E00C69
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 14:51:56 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20161218225154243_0484
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 22:51:54 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [174.118.92.171] (port=58130 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cIkJ2-0001Ph-Qx
	for yocto@yoctoproject.org; Sun, 18 Dec 2016 17:51:48 -0500
Date: Sun, 18 Dec 2016 17:50:26 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1612181748370.10993@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [PATCH][yocto-docs] Couple aesthetic fixes for Chapter 1, kernel dev manual
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
X-List-Received-Date: Sun, 18 Dec 2016 22:52:00 -0000
Content-Type: text/plain; charset=US-ASCII


* "sys" filesystem is technically "sysfs"

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  nothing earth-shattering, just more pedantry.

diff --git a/documentation/kernel-dev/kernel-dev-intro.xml b/documentation/kernel-dev/kernel-dev-intro.xml
index 263e500..abc51aa 100644
--- a/documentation/kernel-dev/kernel-dev-intro.xml
+++ b/documentation/kernel-dev/kernel-dev-intro.xml
@@ -74,14 +74,14 @@
             visible <filename>CONFIG</filename> options as presented by the Linux
             kernel <filename>menuconfig</filename> system.
             Contrast this against a complete Linux kernel
-            <filename>.config</filename>, which includes all the automatically
+            <filename>.config</filename> file, which includes all the automatically
             selected <filename>CONFIG</filename> options.
             This efficiency reduces your maintenance effort and allows you
             to further separate your configuration in ways that make sense for
             your project.
             A common split separates policy and hardware.
             For example, all your kernels might support
-            the <filename>proc</filename> and <filename>sys</filename> filesystems,
+            the <filename>proc</filename> and <filename>sysfs</filename> filesystems,
             but only specific boards require sound, USB, or specific drivers.
             Specifying these configurations individually allows you to aggregate
             them together as needed, but maintains them in only one place.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


