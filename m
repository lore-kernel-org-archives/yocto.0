Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25CE1E0085F; Mon, 10 Nov 2014 06:29:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAD6E007C2
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 06:29:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Nov 2014 06:28:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,353,1413270000"; d="scan'208";a="634461095"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2014 06:28:58 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.90]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.150]) with mapi id
	14.03.0195.001; Mon, 10 Nov 2014 06:28:58 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bob Cochran <yocto@mindchasers.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] newbb.vim vs skeleton recipe in yocto-docs dev manual....
Thread-Index: AQHP/GIsroqtFw4ANUyltax0XtvcXJxZ7GHw
Date: Mon, 10 Nov 2014 14:28:57 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E52758@ORSMSX101.amr.corp.intel.com>
References: <545FD907.2070003@mindchasers.com>
In-Reply-To: <545FD907.2070003@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: newbb.vim vs skeleton recipe in yocto-docs dev manual....
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
X-List-Received-Date: Mon, 10 Nov 2014 14:29:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

newbb.vim needs to be patched.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Bob Cochran
>Sent: Sunday, November 09, 2014 1:14 PM
>To: Yocto discussion list
>Subject: [yocto] newbb.vim vs skeleton recipe in yocto-docs dev manual....
>
>Hi,
>
>I just noticed that newbb.vim in bitbake/contrib is notably different from=
 the
>skeleton recipe proposed in the latest Dev Manual.
>
>I'll submit a patch if someone can give me some guidance on what should be
>in newbb.vim (or maybe it's the manual that needs to be patched).
>
>Bob
>
>
> From yocto-docs: Dev Manual (modify the following skeleton recipe):
>
>SUMMARY =3D ""
>HOMEPAGE =3D ""
>LICENSE =3D ""
>LIC_FILES_CHKSUM =3D ""
>SRC_URI =3D ""
>SRC_URI[md5sum] =3D ""
>SRC_URI[sha256sum] =3D ""
>S =3D "${WORKDIR}/${PN}-${PV}"
>
>
>
> From newbb.vim:
>
>DESCRIPTION =3D ""
>HOMEPAGE =3D ""
>LICENSE =3D ""
>SECTION =3D ""
>DEPENDS =3D ""
>
>SRC_URI =3D ""
>
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

