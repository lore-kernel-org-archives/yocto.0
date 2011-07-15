Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0A474C800A3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 15:24:34 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1Qhow5-0000Bl-Vp
	for yocto@yoctoproject.org; Fri, 15 Jul 2011 16:24:34 -0400
Date: Fri, 15 Jul 2011 16:24:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107151622050.10903@localhost6.localdomain6>
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
Subject: [PATCH] DOCS: Add missing version number directory level to commands.
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
X-List-Received-Date: Fri, 15 Jul 2011 20:24:34 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


A couple commands are missing the version number directory level under
the /opt/poky toolchain installation directory.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i'll let scott take this as well, and decide whether it's worth
fixing this or just waiting for 1.1.  either way works for me.

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 52f7391..a09cb66 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -513,7 +513,7 @@
          </para>

          <literallayout class='monospaced'>
-     $ source /opt/poky/environment-setup-&lt;<emphasis>arch</emphasis>&gt;-poky-linux-&lt;<emphasis>if</emphasis>&gt;
+     $ source /opt/poky/1.0/environment-setup-&lt;<emphasis>arch</emphasis>&gt;-poky-linux-&lt;<emphasis>if</emphasis>&gt;

      Where:
          &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture:
@@ -547,7 +547,7 @@
          </para>

          <literallayout class='monospaced'>
-     $ source /opt/poky/environment-setup-i686-poky-linux
+     $ source /opt/poky/1.0/environment-setup-i686-poky-linux
      $ poky-qemu qemux86 zImage-2.6.34-qemux86-1.0.bin yocto-image-sdk-qemux86-1.0.rootfs.ext3
          </literallayout>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

