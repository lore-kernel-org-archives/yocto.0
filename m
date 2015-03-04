Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 205A7E008CF; Wed,  4 Mar 2015 06:49:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46612E008DC
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 06:49:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Mar 2015 06:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,687,1418112000"; d="scan'208";a="675046399"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2015 06:49:32 -0800
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 4 Mar 2015 06:49:32 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX116.amr.corp.intel.com ([169.254.9.108]) with mapi id
	14.03.0195.001; Wed, 4 Mar 2015 06:49:32 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: Kernel manual, update name of
	build directory.
Thread-Index: AQHQVloRnFesjJoZ0EGUkN1YS70/150MaBdg
Date: Wed, 4 Mar 2015 14:49:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC169D@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503040400010.29816@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503040400010.29816@Device-040570>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Kernel manual, update name of build directory.
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
X-List-Received-Date: Wed, 04 Mar 2015 14:49:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied - thanks.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, March 04, 2015 1:02 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: Kernel manual, update name of
>build directory.
>
>
>Tweak the manual to refer to the name of the kernel build directory as it'=
s
>listed precisely in linux-yocto.inc.
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>  to accompany scott r's earlier patch, which changed one reference but
>missed this one. (in all fairness, i missed it, too. :-)
>
>diff --git a/documentation/kernel-dev/kernel-dev-common.xml
>b/documentation/kernel-dev/kernel-dev-common.xml
>index e16b9e7..b0ad25c 100644
>--- a/documentation/kernel-dev/kernel-dev-common.xml
>+++ b/documentation/kernel-dev/kernel-dev-common.xml
>@@ -326,7 +326,7 @@
>                 The resulting <filename>.config</filename> file is
>                 located in
>                 <filename>${</filename><ulink url=3D'&YOCTO_DOCS_REF_URL;=
#var-
>WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename
>> under the
>-                <filename>linux-${</filename><ulink
>url=3D'&YOCTO_DOCS_REF_URL;#var-
>MACHINE'><filename>MACHINE</filename></ulink><filename>}-${<ulink
>url=3D'&YOCTO_DOCS_REF_URL;#var-
>KTYPE'><filename>KTYPE</filename></ulink>}-build</filename> directory.
>+                <filename>linux-${</filename><ulink
>url=3D'&YOCTO_DOCS_REF_URL;#var-
>PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></ulink><filename
>>}-${<ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
>LINUX_KERNEL_TYPE'><filename>LINUX_KERNEL_TYPE</filename></ulink>}-
>build</filename> directory.
>                 You can use the entire <filename>.config</filename> file =
as the
>                 <filename>defconfig</filename> file as described in the
>                 "<link linkend=3D'changing-the-configuration'>Changing th=
e
>Configuration</link>" section.
>
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

