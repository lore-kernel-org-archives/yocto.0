Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F303E01374
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 08:53:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Mar 2012 08:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123378714"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 26 Mar 2012 08:53:50 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 26 Mar 2012 08:53:43 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.128]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Mon, 26 Mar 2012 08:53:43 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-x32: disagreement between ref manual and README.TXT
Thread-Index: AQHNCqLB/IqlIBEfkUyhaBcVNezHQ5Z8u7dw
Date: Mon, 26 Mar 2012 15:53:42 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0137D7B9@ORSMSX106.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203251213170.6445@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203251213170.6445@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: meta-x32: disagreement between ref manual and README.TXT
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 15:53:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Sunday, March 25, 2012 9:17 AM
> To: Yocto discussion list
> Subject: [yocto] meta-x32: disagreement between ref manual and
> README.TXT
>=20
>=20
>   poky ref manual reads:
>=20
> "As usual, use BitBake to build an image that supports the x32 psABI.
> Here is an example:
>=20
>      $ bitake core-image-sato
>=20
> As usual, run your image using QUEM [sic]:
>=20
>      $ runqemu qemux86-64 core-image-sato"
>=20
> while the README.TXT file that comes with the experimental/meta-x32
> layer reads:
>=20
> "build
> 	bitbake core-image-minimal-x32
>=20
> 4. boot the image
> 	runqemu qemux86-64 core-image-minimal-x32"
>=20
>   thoughts?
>=20
> rday

Hi Robert,
  It is not a significant difference. Images with -x32 in their names conta=
in an additional utility named file. Which can let one check the file types=
 of elf binaries. And the absence of this file utility does not affect func=
tionality of x32 images.
Thanks,
Nitin


