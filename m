Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 326F5E00970; Mon, 27 Feb 2017 02:07:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E23E00874
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 02:07:20 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20170227100718449_0684
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 10:07:18 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=33953 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ciID2-0001m0-Hi
	for yocto@yoctoproject.org; Mon, 27 Feb 2017 05:07:12 -0500
Date: Mon, 27 Feb 2017 05:07:09 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1702270504160.5510@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [PATCH] yocto-docs: kernel-dev, update "3.19" versions to "4.4"
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
X-List-Received-Date: Mon, 27 Feb 2017 10:07:23 -0000
Content-Type: text/plain; charset=US-ASCII


Update the remaining references to kernel version 3.19 to version 4.4,
restricted to the section "kernel-dev-common.xml".

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  if my earlier patch hasn't already been applied, this one can be
folded in since it simply adds more "3.19" -> "4.4" updates to the
same kernel-dev-common.xml file, which is already part of the commit
message for that earlier patch.

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index a9aafd3..97e2a0b 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -645,8 +645,8 @@
                     recipe to your layer and give it a meaningful name.
                     The name should include the version of the Linux kernel you
                     are using (e.g.
-                    <filename>linux-yocto-myproject_3.19.bb</filename>,
-                    where "3.19" is the base version of the Linux kernel
+                    <filename>linux-yocto-myproject_4.4.bb</filename>,
+                    where "4.4" is the base version of the Linux kernel
                     with which you would be working).</para></listitem>
                 <listitem><para>In the same directory inside your layer,
                     create a matching directory
@@ -698,7 +698,7 @@
                             </para></listitem>
                         <listitem><para><ulink url='&YOCTO_DOCS_REF_URL;#var-LINUX_VERSION'><filename>LINUX_VERSION</filename></ulink>:
                             The Linux kernel version you are using (e.g.
-                            "3.19").</para></listitem>
+                            "4.4").</para></listitem>
                         <listitem><para><ulink url='&YOCTO_DOCS_REF_URL;#var-LINUX_VERSION_EXTENSION'><filename>LINUX_VERSION_EXTENSION</filename></ulink>:
                             The Linux kernel <filename>CONFIG_LOCALVERSION</filename>
                             that is compiled into the resulting kernel and visible
@@ -724,7 +724,7 @@
                             The combined results are a string with
                             the following form:
                             <literallayout class='monospaced'>
-     3.19.11+git1+68a635bf8dfb64b02263c1ac80c948647cc76d5f_1+218bd8d2022b9852c60d32f0d770931e3cf343e2
+     4.4.11+git1+68a635bf8dfb64b02263c1ac80c948647cc76d5f_1+218bd8d2022b9852c60d32f0d770931e3cf343e2
                             </literallayout>
                             While lengthy, the extra verbosity in <filename>PV</filename>
                             helps ensure you are using the exact

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


