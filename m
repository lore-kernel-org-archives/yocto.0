Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED2EE0070C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 14:02:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2012 14:02:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128354160"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2012 14:02:50 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Apr 2012 14:02:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Tue, 3 Apr 2012 14:02:49 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: little fixes to the BSP Guide.
Thread-Index: AQHNEdqa65FtNPhnzUy/AxlQ/F+F+paJlm1Q
Date: Tue, 3 Apr 2012 21:02:48 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379451784E4@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1204031643440.5406@oneiric>
In-Reply-To: <alpine.DEB.2.02.1204031643440.5406@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: little fixes to the BSP Guide.
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
X-List-Received-Date: Tue, 03 Apr 2012 21:02:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied and pushed to yocto-docs/master.

Thanks Robert.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Tuesday, April 03, 2012 2:44 PM
To: Yocto discussion list
Subject: [yocto] [PATCH] Documentation: little fixes to the BSP Guide.


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.=
xml
index 8a0e9a4..ef7d88c 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -95,7 +95,7 @@
                 top of the BSP's root layer in order to be functional.
                 For these cases, you also need to add those layers to the
                 <filename>BBLAYERS</filename> variable in order to build t=
he BSP.
-                You must also specify in the "Dependiencies" section of th=
e BSP's
+                You must also specify in the "Dependencies" section of the=
 BSP's
                 <filename>README</filename> file any requirements for addi=
tional
                 layers and, preferably, any
                 build instructions that might be contained elsewhere
@@ -124,10 +124,12 @@
      meta-&lt;bsp_name&gt;/
      meta-&lt;bsp_name&gt;/&lt;bsp_license_file&gt;
      meta-&lt;bsp_name&gt;/README
+     meta-&lt;bsp_name&gt;/README.sources
      meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
      meta-&lt;bsp_name&gt;/conf/layer.conf
      meta-&lt;bsp_name&gt;/conf/machine/*.conf
      meta-&lt;bsp_name&gt;/recipes-bsp/*
+     meta-&lt;bsp_name&gt;/recipes-core/*
      meta-&lt;bsp_name&gt;/recipes-graphics/*
      meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto_&lt;kernel_rev=
&gt;.bbappend
                 </literallayout>
@@ -140,7 +142,7 @@
      meta-crownbay/COPYING.MIT
      meta-crownbay/README
      meta-crownbay/README.sources
-     meta-crownbay/binary
+     meta-crownbay/binary/
      meta-crownbay/conf/
      meta-crownbay/conf/layer.conf
      meta-crownbay/conf/machine/
@@ -154,8 +156,8 @@
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/
      meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machc=
onfig
-     meta-crownbay/recipes-core
-     meta-crownbay/recipes-core/tasks
+     meta-crownbay/recipes-core/
+     meta-crownbay/recipes-core/tasks/
      meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
      meta-crownbay/recipes-graphics/
      meta-crownbay/recipes-graphics/xorg-xserver/
@@ -211,7 +215,7 @@

             <para>
                 This file provides information on how to boot the live ima=
ges that are optionally
-                included in the <filename>/binary</filename> directory.
+                included in the <filename>binary/</filename> directory.
                 The <filename>README</filename> file also provides special=
 information needed for
                 building the image.
             </para>

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

