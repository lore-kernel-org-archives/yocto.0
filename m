Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C08BAE0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 15:12:32 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Apr 2012 15:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127196151"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2012 15:12:22 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 4 Apr 2012 15:12:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Wed, 4 Apr 2012 15:12:18 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Fix small number of misspellings of "subsequent".
Thread-Index: AQHNEqvkIzXkljCPvUeH1ED6VsIjmZaLOgQQ
Date: Wed, 4 Apr 2012 22:12:17 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379451789F6@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1204041741120.15339@oneiric>
In-Reply-To: <alpine.DEB.2.02.1204041741120.15339@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Fix small number of misspellings of "subsequent".
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
X-List-Received-Date: Wed, 04 Apr 2012 22:12:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

Can you create a patch just for the documentation?  I don't apply patches f=
or other parts of the system.  If you don't want to do that I can just fix =
the misspellings in the bsp guide.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Wednesday, April 04, 2012 3:43 PM
To: Yocto discussion list
Subject: [yocto] [PATCH] Fix small number of misspellings of "subsequent".


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.=
xml
index 14a7197..548048f 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -877,7 +877,7 @@
      ...

      NOTE: Once created, you should add your new layer to your
-     bblayers.conf file in order for it to be subsquently seen and
+     bblayers.conf file in order for it to be subsequently seen and
      modified by the yocto-kernel tool.

      NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
diff --git a/meta/classes/rm_work.bbclass b/meta/classes/rm_work.bbclass
index 997dcd1..0bd81bd 100644
--- a/meta/classes/rm_work.bbclass
+++ b/meta/classes/rm_work.bbclass
@@ -26,7 +26,7 @@ do_rm_work () {
             rm -rf $dir
         fi
     done
-    # Need to add pseudo back or subsqeuent work in this workdir
+    # Need to add pseudo back or subsequent work in this workdir
     # might fail since setscene may not rerun to recreate it
     mkdir ${WORKDIR}/pseudo/

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 200a4f8..54501d8 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -156,7 +156,7 @@ DESCRIPTION
     current directory, and is useful for debugging.

     NOTE: Once created, you should add your new layer to your
-    bblayers.conf file in order for it to be subsquently seen and
+    bblayers.conf file in order for it to be subsequently seen and
     modified by the yocto-kernel tool.

     NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the

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

