Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9630E00AAA; Thu, 23 Feb 2017 02:33:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 725C1E00A73
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 02:33:33 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20170223103319161_0486;
	Thu, 23 Feb 2017 10:33:19 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=44209 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cgqhz-00055y-Fr; Thu, 23 Feb 2017 05:33:11 -0500
Date: Thu, 23 Feb 2017 05:33:09 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1702230530560.6716@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Darren Hart <darren.hart@intel.com>
Subject: [PATCH] yocto-docs: Aesthetic changes to kernel-dev-intro.xml
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
X-List-Received-Date: Thu, 23 Feb 2017 10:33:37 -0000
Content-Type: text/plain; charset=US-ASCII


* "sys" filesystem is technically "sysfs" filesystem
* "aggregate" already implies together :-)

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/kernel-dev/kernel-dev-intro.xml b/documentation/kernel-dev/kernel-dev-intro.xml
index 263e500..8de1f97 100644
--- a/documentation/kernel-dev/kernel-dev-intro.xml
+++ b/documentation/kernel-dev/kernel-dev-intro.xml
@@ -74,17 +74,17 @@
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
-            them together as needed, but maintains them in only one place.
+            them as needed, but maintains them in only one place.
             Similar logic applies to separating source changes.
         </para>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


