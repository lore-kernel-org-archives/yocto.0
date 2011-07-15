Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 383934C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 09:47:18 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1Qhjfh-0000qh-C8
	for yocto@yoctoproject.org; Fri, 15 Jul 2011 10:47:17 -0400
Date: Fri, 15 Jul 2011 10:47:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107151045290.9956@localhost6.localdomain6>
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
Subject: [PATCH] DOCS: Fix toolchain filenames in QS guide, "sdk" -> "gmae"
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
X-List-Received-Date: Fri, 15 Jul 2011 14:47:18 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i think i got them all, i didn't see any other references anywhere
in the docs directory.  does this look right?


diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 52f7391..62c95ae 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -425,7 +425,7 @@
          </para>

          <literallayout class='monospaced'>
-     yocto-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>arch</emphasis>&gt;-toolchain-sdk-&lt;<emphasis>release</emphasis>&gt;.tar.bz2
+     yocto-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>arch</emphasis>&gt;-toolchain-gmae-&lt;<emphasis>release</emphasis>&gt;.tar.bz2

      Where:
          &lt;<emphasis>host_system</emphasis>&gt; is a string representing your development system:
@@ -443,7 +443,7 @@
          </para>

          <literallayout class='monospaced'>
-     yocto-eglibc-x86_64-i686-toolchain-sdk-1.0.tar.bz2
+     yocto-eglibc-x86_64-i686-toolchain-gmae-1.0.tar.bz2
          </literallayout>

          <para>
@@ -455,7 +455,7 @@
          <para>
              <literallayout class='monospaced'>
      $ cd /
-     $ sudo tar -xvjf yocto-eglibc-x86_64-i686-toolchain-sdk-1.0.tar.bz2
+     $ sudo tar -xvjf yocto-eglibc-x86_64-i686-toolchain-gmae-1.0.tar.bz2
              </literallayout>
          </para>
          </section>

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

