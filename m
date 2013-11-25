Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 534E1E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 13:48:22 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2013 13:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,769,1378882800"; d="scan'208";a="439672245"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2013 13:47:57 -0800
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 25 Nov 2013 13:47:56 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX160.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.03.0123.003; Mon, 25 Nov 2013 13:47:56 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: dev manual, add a reference to
	poky-bleeding distro
Thread-Index: AQHO6Qcp/zQKIYsWmkOJsaSaIVsGnZo2feHw
Date: Mon, 25 Nov 2013 21:47:56 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F51444@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311240615540.543@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311240615540.543@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: dev manual, add a reference to poky-bleeding distro
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
X-List-Received-Date: Mon, 25 Nov 2013 21:48:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied with some tweaks.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Sunday, November 24, 2013 3:19 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: dev manual, add a reference to
>poky-bleeding distro
>
>
>As an actual example of using AUTOREV, refer the reader to the Yocto-
>supplied poky-bleeding distribution.
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
>b/documentation/dev-manual/dev-manual-common-tasks.xml
>index 6b60445..fba2484 100644
>--- a/documentation/dev-manual/dev-manual-common-tasks.xml
>+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
>@@ -4405,6 +4405,36 @@
>             is the name of the recipe for which you want to enable automa=
tic
>source
>             revision updating.
>         </para>
>+
>+        <para>
>+            In fact, the Yocto Project provides a distribution named
>+            <filename>poky-bleeding</filename>, whose configuration file
>contains
>+            the line:
>+            <literallayout class=3D'monospaced'>
>+     require conf/distro/include/poky-floating-revisions.inc
>+            </literallayout>
>+            which pulls in the listed include file that contains numerous=
 lines of
>+            exactly that form:
>+            <literallayout class=3D'monospaced'>
>+     SRCREV_pn-gconf-dbus ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-common ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-config-gtk ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-desktop ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-keyboard ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-panel ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-panel-2 ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-themes-extra ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-terminal ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-wm ?=3D "${AUTOREV}"
>+     SRCREV_pn-matchbox-wm-2 ?=3D "${AUTOREV}"
>+     SRCREV_pn-settings-daemon ?=3D "${AUTOREV}"
>+     SRCREV_pn-screenshot ?=3D "${AUTOREV}"
>+     SRCREV_pn-libfakekey ?=3D "${AUTOREV}"
>+     SRCREV_pn-oprofileui ?=3D "${AUTOREV}"
>+            </literallayout>
>+            and so on, allowing the developer to experiment with building=
 a
>distribution that
>+            tracks the latest development source for numerous packages.
>+            </para>
>     </section>
>
>     <section id=3D'creating-a-read-only-root-filesystem'>
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
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

