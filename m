Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47C20E0140A
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 06:02:22 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:48408 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UR060-00062d-Rc; Sat, 13 Apr 2013 09:02:20 -0400
Date: Sat, 13 Apr 2013 09:02:17 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304130900210.7551@oneiric>
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
Subject: [PATCH] dev manual: Version copy-and-paste error, and update Intel layers.
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
X-List-Received-Date: Sat, 13 Apr 2013 13:02:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  not sure if the first snippet below accurately describes the
existing intel layers, so someone is welcome to tweak it.

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index 114e0ec..a59a447 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -160,8 +160,8 @@
                     <filename>mpc8315e</filename>, and <filename>routerstationpro</filename>.
                     The recipes and configurations for these four BSPs are located and dispersed
                     within the <link linkend='source-directory'>Source Directory</link>.
-                    On the other hand, BSP layers for Cedar Trail, Chief River, Crown Bay,
-                    Crystal Forest, Emenlow, Fish River Island, Fish River Island 2, Jasper Forest, N450,
+                    On the other hand, BSP layers for Chief River, Crown Bay,
+                    Crystal Forest, Emenlow, Fish River Island 2, Jasper Forest, N450, NUC DC3217IYE,
                     Romley, sys940x, Sugar Bay, and tlk exist in their own separate layers
                     within the larger <filename>meta-intel</filename> layer.</note>
                     <para>When you set up a layer for a new BSP, you should follow a standard layout.
@@ -275,7 +275,7 @@
                     <listitem><para><emphasis><filename>linux-yocto-3.4</filename></emphasis> - The
                     stable Yocto Project kernel to use with the Yocto Project Release 1.3. This kernel
                     is based on the Linux 3.4 released kernel.</para></listitem>
-                    <listitem><para><emphasis><filename>linux-yocto-3.4</filename></emphasis> - The
+                    <listitem><para><emphasis><filename>linux-yocto-3.8</filename></emphasis> - The
                     stable Yocto Project kernel to use with the Yocto Project Release 1.4. This kernel
                     is based on the Linux 3.8 released kernel.</para></listitem>
                     <listitem><para><emphasis><filename>linux-yocto-dev</filename></emphasis> - A development

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

