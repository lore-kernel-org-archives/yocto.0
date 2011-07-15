Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5090F4C800C1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 10:22:40 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jul 2011 08:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,536,1304319600"; d="scan'208";a="30758196"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 08:22:39 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 08:22:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.143]) with mapi id
	14.01.0289.001; Fri, 15 Jul 2011 08:22:39 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] DOCS: Fix toolchain filenames in QS guide,
	"sdk" -> "gmae"
Thread-Index: AQHMQv4lWIOpDdn+OE6Jfx9BXL/MDpTtgADg
Date: Fri, 15 Jul 2011 15:22:38 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379031719@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107151045290.9956@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107151045290.9956@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Re: [PATCH] DOCS: Fix toolchain filenames in QS guide, "sdk" -> "gmae"
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
X-List-Received-Date: Fri, 15 Jul 2011 15:22:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

You can cross this off your list.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Friday, July 15, 2011 7:47 AM
To: Yocto discussion list
Subject: [yocto] [PATCH] DOCS: Fix toolchain filenames in QS guide, "sdk" -=
> "gmae"


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i think i got them all, i didn't see any other references anywhere
in the docs directory.  does this look right?


diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/document=
ation/yocto-project-qs/yocto-project-qs.xml
index 52f7391..62c95ae 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -425,7 +425,7 @@
          </para>

          <literallayout class=3D'monospaced'>
-     yocto-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>ar=
ch</emphasis>&gt;-toolchain-sdk-&lt;<emphasis>release</emphasis>&gt;.tar.bz=
2
+     yocto-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>ar=
ch</emphasis>&gt;-toolchain-gmae-&lt;<emphasis>release</emphasis>&gt;.tar.b=
z2

      Where:
          &lt;<emphasis>host_system</emphasis>&gt; is a string representing=
 your development system:
@@ -443,7 +443,7 @@
          </para>

          <literallayout class=3D'monospaced'>
-     yocto-eglibc-x86_64-i686-toolchain-sdk-1.0.tar.bz2
+     yocto-eglibc-x86_64-i686-toolchain-gmae-1.0.tar.bz2
          </literallayout>

          <para>
@@ -455,7 +455,7 @@
          <para>
              <literallayout class=3D'monospaced'>
      $ cd /
-     $ sudo tar -xvjf yocto-eglibc-x86_64-i686-toolchain-sdk-1.0.tar.bz2
+     $ sudo tar -xvjf yocto-eglibc-x86_64-i686-toolchain-gmae-1.0.tar.bz2
              </literallayout>
          </para>
          </section>

rday

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

