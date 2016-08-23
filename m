Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73207E00D4E; Tue, 23 Aug 2016 09:12:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3373DE00D3F
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 09:12:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Aug 2016 09:12:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,566,1464678000"; d="scan'208";a="1045964424"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2016 09:11:48 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.251]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.239]) with mapi id
	14.03.0248.002; Tue, 23 Aug 2016 09:11:45 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Robert Berger
	<gmane@reliableembeddedsystems.com>
Thread-Topic: [yocto] baremetal cross-compiler
Thread-Index: AQHR1pwb9LD/wbjLQU2D0pAQq6TMkqAMyJiAgEo2r5A=
Date: Tue, 23 Aug 2016 16:11:44 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118802AD@ORSMSX112.amr.corp.intel.com>
References: <nlft2j$4vc$1@ger.gmane.org>
	<1841758.LHKpjia4lP@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1841758.LHKpjia4lP@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: baremetal cross-compiler
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
X-List-Received-Date: Tue, 23 Aug 2016 16:12:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

sorry for the late reply, somehow this mail fell through the cracks.
Indeed, setting TCLIBC=3D"baremetal" is all you should need to do.

FWIW, I use these values in my local.conf:

MACHINE =3D "qemuarm"
TCLIBC =3D "baremetal"
TUNE_FEATURES =3D "armv7m cortexm3"=20
PACKAGE_CLASSES =3D "package_ipk"
bitbake meta-toolchain

Juro

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Wednesday, July 6, 2016 8:33 PM
> To: Robert Berger <gmane@reliableembeddedsystems.com>
> Cc: yocto@yoctoproject.org; Bystricky, Juro <juro.bystricky@intel.com>
> Subject: Re: [yocto] baremetal cross-compiler
>=20
> Hi Robert,
>=20
> On Tue, 05 Jul 2016 12:02:11 Robert Berger wrote:
> > According to the release notes it should be possible to build a
> > baremetal (no glibc/Linux) cross compiler with the YP. I just can't fin=
d
> > any information how this could be done.
> >
> > I would like to build a native compiler e.g. for a Cortex-A3 and compil=
e
> > FreeRTOS with it.
>=20
> It looks like all you should need to do would be to set TCLIBC =3D
> "baremetal"
> and build the toolchain. Juro, is there any more to it than that?
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

