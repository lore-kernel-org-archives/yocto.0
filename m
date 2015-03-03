Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2E0CE0076F; Tue,  3 Mar 2015 10:24:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A41F0E00750
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 10:24:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 03 Mar 2015 10:19:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,682,1418112000"; d="scan'208";a="693417876"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2015 10:24:25 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.137]) with mapi id
	14.03.0195.001; Tue, 3 Mar 2015 10:24:22 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: Ref Manual, fill out missing
	machines for MACHINE variable
Thread-Index: AQHQVYY5c9DL4AvOlUmfZ0i0ySDRK50LE3GA
Date: Tue, 3 Mar 2015 18:24:22 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC029F@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503030244130.11201@localhost>
In-Reply-To: <alpine.LFD.2.11.1503030244130.11201@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Ref Manual, fill out missing machines for MACHINE variable
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
X-List-Received-Date: Tue, 03 Mar 2015 18:24:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied... thanks.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Monday, March 02, 2015 11:46 PM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: Ref Manual, fill out missing
>machines for MACHINE variable
>
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/ref-variables.xml
>b/documentation/ref-manual/ref-variables.xml
>index 0346092..fc84605 100644
>--- a/documentation/ref-manual/ref-variables.xml
>+++ b/documentation/ref-manual/ref-variables.xml
>@@ -6668,7 +6668,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D
>"${INC_PR}.3"
>                     shipped include the following:
>                     <literallayout class=3D'monospaced'>
>      MACHINE ?=3D "qemuarm"
>+     MACHINE ?=3D "qemuarm64"
>      MACHINE ?=3D "qemumips"
>+     MACHINE ?=3D "qemumips64"
>      MACHINE ?=3D "qemuppc"
>      MACHINE ?=3D "qemux86"
>      MACHINE ?=3D "qemux86-64"
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
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

