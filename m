Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57F38E0077E; Mon,  2 Mar 2015 13:41:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46A9FE003FA
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 13:41:09 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2015 13:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,677,1418112000"; d="scan'208";a="674120690"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2015 13:40:59 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 2 Mar 2015 13:40:58 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.137]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.16]) with mapi id
	14.03.0195.001; Mon, 2 Mar 2015 13:40:58 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: Add link for Yocto LTSI page to
	kernel manual.
Thread-Index: AQHQVBoILm8tU6GcaUq3HSqfWvlLup0Jutqw
Date: Mon, 2 Mar 2015 21:40:58 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB9CF7@ORSMSX106.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503010717001.27578@localhost>
In-Reply-To: <alpine.LFD.2.11.1503010717001.27578@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Add link for Yocto LTSI page to kernel manual.
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
X-List-Received-Date: Mon, 02 Mar 2015 21:41:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Patch applied... thanks.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Sunday, March 01, 2015 4:19 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: Add link for Yocto LTSI page to
>kernel manual.
>
>
>Might as well point the reference to LTSI to the Yocto page for it.
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>  and throw in a hyphen while i'm there.
>
>diff --git a/documentation/kernel-dev/kernel-dev-intro.xml
>b/documentation/kernel-dev/kernel-dev-intro.xml
>index 1e5043c..a18e797 100644
>--- a/documentation/kernel-dev/kernel-dev-intro.xml
>+++ b/documentation/kernel-dev/kernel-dev-intro.xml
>@@ -47,11 +47,13 @@
>             <ulink url=3D'&YOCTO_GIT_URL;'>Source Repositories</ulink> un=
der
>             the "Yocto Linux Kernel" heading.
>             New recipes for the release track the latest upstream develop=
ments
>-            and introduce newly supported platforms.
>+            and introduce newly-supported platforms.
>             Previous recipes in the release are refreshed and supported f=
or at
>             least one additional release.
>             As they align, these previous releases are updated to include=
 the
>-            latest from the Long Term Support Initiative (LTSI) project.
>+            latest from the
>+            <ulink url=3D'https://www.yoctoproject.org/organization/long-=
term-
>support-initiative-ltsi'>
>+            Long Term Support Initiative</ulink> (LTSI) project.
>             Also included is a linux-yocto development recipe
>             (<filename>linux-yocto-dev.bb</filename>) should you want to =
work
>             with the very latest in upstream Linux kernel development and
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

