Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD954E0027D
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 10:02:32 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 10:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172598755"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2012 10:02:28 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 24 Jul 2012 10:02:27 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.231]) with mapi id
	14.01.0355.002; Tue, 24 Jul 2012 10:02:27 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: bsp-guide: fix apparent error in sample layer.conf file
Thread-Index: AQHNabw1w9s4SbHW/UORGl4upkYwqpc4qJ3g
Date: Tue, 24 Jul 2012 17:02:26 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A4509D@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1207241247100.24132@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207241247100.24132@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: bsp-guide: fix apparent error in sample layer.conf file
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
X-List-Received-Date: Tue, 24 Jul 2012 17:02:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Fixed.  See "docs-in-progress" for the change.  Thanks Robert.=20

Scott

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: Tuesday, July 24, 2012 9:48 AM
To: Yocto discussion list
Cc: Rifenbark, Scott M
Subject: bsp-guide: fix apparent error in sample layer.conf file


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.=
xml
index 1a85960..e9a7cf4 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -314,8 +314,8 @@
      BBPATH :=3D "${BBPATH}:${LAYERDIR}"

      # We have a recipes directory, add to BBFILES
-     BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \
-                 ${LAYERDIR}/recipes/*/*.bbappend"
+     BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes-*/*.bb \
+                 ${LAYERDIR}/recipes-*/*.bbappend"

      BBFILE_COLLECTIONS +=3D "bsp"
      BBFILE_PATTERN_bsp :=3D "^${LAYERDIR}/"

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

