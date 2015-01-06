Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CC7CE007BA; Tue,  6 Jan 2015 10:16:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF28E002F9
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 10:16:38 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 06 Jan 2015 10:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,709,1413270000"; d="scan'208";a="657653670"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2015 10:16:37 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.8]) with mapi id
	14.03.0195.001; Tue, 6 Jan 2015 10:16:37 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bob Cochran <yocto@mindchasers.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] newbb.vim vs skeleton recipe in yocto-docs dev manual....
Thread-Index: AQHP/GIsroqtFw4ANUyltax0XtvcXJyzwFEw
Date: Tue, 6 Jan 2015 18:16:36 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E91E9A@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 06 Jan 2015 18:16:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI,=20

I am looking at poky/bitbake/contrib/vim/plugin/newbb.vim and it indeed is =
pretty different from what is in the http://www.yoctoproject/docs/current/d=
ev-manual/dev-manual.html#new-recipe-locate-a-base-recipe section in the YP=
 Development Manual.  Can I get someone to verify if it is okay to simply c=
hange the section in the manual to match how that template file is being cr=
eated in "newbb.vim"?

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

