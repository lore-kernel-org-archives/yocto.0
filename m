Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 302CCE017A2
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 09:15:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 06 Nov 2013 09:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,647,1378882800"; d="scan'208";a="423254638"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga001.fm.intel.com with ESMTP; 06 Nov 2013 09:12:25 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 6 Nov 2013 09:12:25 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Wed, 6 Nov 2013 09:12:25 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Documentation: Couple innocuous tweaks to ref manual
	migration chapter.
Thread-Index: AQHO2tR+WHQulTdC6UC7CTjSRf4CLJoYcPeQ
Date: Wed, 6 Nov 2013 17:12:24 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44B9F@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311060441050.20296@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311060441050.20296@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Couple innocuous tweaks to ref manual migration chapter.
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
X-List-Received-Date: Wed, 06 Nov 2013 17:15:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Patch applied.

Thanks,
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Wednesday, November 06, 2013 1:42 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] Documentation: Couple innocuous tweaks to ref manual
>migration chapter.
>
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/migration.xml b/documentation/ref-
>manual/migration.xml
>index bb62039..a3a3e88 100644
>--- a/documentation/ref-manual/migration.xml
>+++ b/documentation/ref-manual/migration.xml
>@@ -34,7 +34,7 @@
>             <para>
>                 The shared state cache (sstate-cache), as pointed to by
>                 <link linkend=3D'var-
>SSTATE_DIR'><filename>SSTATE_DIR</filename></link>, by default
>-                now has two-character subdirectories to prevent issues ri=
sing
>+                now has two-character subdirectories to prevent issues ar=
ising
>                 from too many files in the same directory.
>                 Also, native sstate-cache packages will go into a subdire=
ctory named
>using
>                 the distro ID string.
>@@ -755,7 +755,7 @@
>                     <ulink url=3D'&YOCTO_DOCS_DEV_URL;#build-directory'>B=
uild
>Directory</ulink>
>                     rather than
>                     <link linkend=3D'var-
>TMPDIR'><filename>TMPDIR</filename></link>.
>-                    Doing so makes it a easier to delete
>+                    Doing so makes it easier to delete
>                     <filename>TMPDIR</filename> and preserve the build hi=
story.
>                     Additionally, data for produced SDKs is now split by
>                     <link linkend=3D'var-
>IMAGE_NAME'><filename>IMAGE_NAME</filename></link>.
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

