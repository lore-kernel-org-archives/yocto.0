Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 518E24C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 17:30:08 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1Qhqtb-0006MQ-9E
	for yocto@yoctoproject.org; Fri, 15 Jul 2011 18:30:07 -0400
Date: Fri, 15 Jul 2011 18:30:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107151827400.18545@localhost6.localdomain6>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: [PATCH] DOCS: Fix typo in command, "-" should be "="
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
X-List-Received-Date: Fri, 15 Jul 2011 22:30:08 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


"--host-armv5te..." should be "--host=armv5te..."

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  there's a fair amount in the ADT manual (and others) that can be
cleaned in terms of proper docbook semantic markup and entity usage,
but this looks like a fairly obvious error that should be fixed now.

diff --git a/documentation/adt-manual/adt-command.xml b/documentation/adt-manual/adt-command.xml
index 28501b6..83c61d8 100644
--- a/documentation/adt-manual/adt-command.xml
+++ b/documentation/adt-manual/adt-command.xml
@@ -37,7 +37,7 @@
         <filename>environment-setup-armv5te-poky-linux-gnueabi</filename>.
         Thus, the following command works:
         <literallayout class='monospaced'>
-     $ configure &dash;&dash;host-armv5te-poky-linux-gnueabi &dash;&dash;with-libtool-sysroot=&lt;sysroot-dir&gt;
+     $ configure &dash;&dash;host=armv5te-poky-linux-gnueabi &dash;&dash;with-libtool-sysroot=&lt;sysroot-dir&gt;
         </literallayout>
     </para>
     <para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

