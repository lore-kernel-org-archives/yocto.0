Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0ACBE01716
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 10:44:58 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Nov 2013 10:44:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385035473"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 05 Nov 2013 10:44:57 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.158]) with mapi id
	14.03.0123.003; Tue, 5 Nov 2013 10:44:57 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Documentation: Small number of minor fixes to Ch 1,
	ref manual
Thread-Index: AQHO2f0xNZOSdNUeMUeKWfhu8lDBQJoW+hug
Date: Tue, 5 Nov 2013 18:44:56 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F446B8@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311050258400.29057@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311050258400.29057@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Small number of minor fixes to Ch 1, ref manual
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
X-List-Received-Date: Tue, 05 Nov 2013 18:45:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Patch applied. =20

Thanks,
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Tuesday, November 05, 2013 12:01 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] Documentation: Small number of minor fixes to Ch 1, ref
>manual
>
>
> * couple grammar/typo fixes
> * "OpenSUSE" -> "openSUSE"
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/introduction.xml
>b/documentation/ref-manual/introduction.xml
>index 3977d73..023e863 100644
>--- a/documentation/ref-manual/introduction.xml
>+++ b/documentation/ref-manual/introduction.xml
>@@ -124,7 +124,7 @@
>                     Refer to
>                     <ulink
>url=3D'&OE_HOME_URL;/index.php?title=3DOEandYourDistro'>OE and Your
>Distro</ulink> and
>                     <ulink
>url=3D'&OE_HOME_URL;/index.php?title=3DRequired_software'>Required
>Software</ulink>
>-                    for information for information about dependencies an=
d
>+                    for information about dependencies and
>                     requirements.
>                     If you encounter problems, please go to
>                     <ulink url=3D'&YOCTO_BUGZILLA_URL;'>Yocto Project
>Bugzilla</ulink> @@ -251,11 +251,11 @@
>         </section>
>
>         <section id=3D'opensuse-packages'>
>-            <title>OpenSUSE Packages</title>
>+            <title>openSUSE Packages</title>
>
>             <para>
>                 The following list shows the required packages by functio=
n
>-                given a supported OpenSUSE Linux distribution:
>+                given a supported openSUSE Linux distribution:
>                 <itemizedlist>
>                     <listitem><para><emphasis>Essentials:</emphasis>
>                         Packages needed to build an image for a headless =
@@ -346,8
>+346,8 @@
>             you can resolve this by either downloading a pre-built tarbal=
l
>             containing these tools, or building such a tarball on another
>             system.
>-            Regardless of the method, once you have the tarball you simpl=
y
>-            install it somewhere on you system, such as a directory in yo=
ur
>+            Regardless of the method, once you have the tarball, you simp=
ly
>+            install it somewhere on your system, such as a directory in
>+ your
>             home directory, and then source the environment script provid=
ed,
>             which adds the tools into <filename>PATH</filename> and sets
>             any other environment variables required to run the tools.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

