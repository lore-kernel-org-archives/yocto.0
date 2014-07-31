Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D45DE00547; Wed, 30 Jul 2014 22:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0CA4E0043F
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 22:50:10 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2014 22:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="366071592"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by FMSMGA003.fm.intel.com with ESMTP; 30 Jul 2014 22:47:04 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.116]) with mapi id
	14.03.0123.003; Wed, 30 Jul 2014 22:50:09 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] why does dev manual, "Supported Board Support
	Packages", mention only meta-intel?
Thread-Index: AQHPrCwHb2LafF1iukKlhgEW+Tsou5u5rHMw
Date: Thu, 31 Jul 2014 05:50:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15B5@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407301522260.30037@localhost>
In-Reply-To: <alpine.LFD.2.11.1407301522260.30037@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: why does dev manual, "Supported Board Support Packages", mention only meta-intel?
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
X-List-Received-Date: Thu, 31 Jul 2014 05:50:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The bold title of the bullet item should probably not be so restrictive.  T=
he point of the section is to show how to set up the meta-intel repository.=
  I can re-write this section to indicate the wider BSP support and still u=
se the main meta-intel git clone example.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, July 30, 2014 12:25 PM
>To: Yocto discussion list
>Subject: [yocto] why does dev manual, "Supported Board Support Packages",
>mention only meta-intel?
>
>
>  also from current dev manual, chapter 2, there is a bullet point entitle=
d
>"Supported Board Support Packages" which mentions *only* meta-intel as if =
its
>the only such layer.
>
>  that seems sort of ... incomplete.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

