Return-Path: <raymond.tan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2252E00B8E; Tue, 27 Mar 2018 06:59:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3627DE0086B
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 06:59:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 06:59:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,367,1517904000"; d="scan'208";a="42580223"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by orsmga001.jf.intel.com with ESMTP; 27 Mar 2018 06:59:28 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.116]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.77]) with mapi id
	14.03.0319.002; Tue, 27 Mar 2018 21:59:27 +0800
From: "Tan, Raymond" <raymond.tan@intel.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [wic.qcow2] qemu-system-x86-64 booting qcow2 image stalls
Thread-Index: AQHTxMte6PBWupV6TkOED1DZ3f/QGKPkG0sQ
Date: Tue, 27 Mar 2018 13:59:26 +0000
Message-ID: <F0CA9E243F4F424B836EAC30E41BF4CF781E0651@PGSMSX104.gar.corp.intel.com>
References: <F0CA9E243F4F424B836EAC30E41BF4CF781DDA28@PGSMSX104.gar.corp.intel.com>
	<0cfff1a0-ea55-9f7f-05cf-5ed491720bfd@intel.com>
In-Reply-To: <0cfff1a0-ea55-9f7f-05cf-5ed491720bfd@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTI1NTQyNjktOGVmMC00YTIzLWJmYzctMjU0YzkyY2E1NjgyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiIwVnRRXC93S0pDSE1pdk8wTVpmRW0wS2VCWWlFM01tVVRkYXE3Y0hRUTUrR1wva25jRGFWY0hVVXMyb0RIQXhqcGkifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [wic.qcow2] qemu-system-x86-64 booting qcow2 image stalls
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
X-List-Received-Date: Tue, 27 Mar 2018 13:59:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Anuj,

> -----Original Message-----
> From: Mittal, Anuj
> Sent: Monday, March 26, 2018 2:25 PM
> To: Tan, Raymond <raymond.tan@intel.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] [wic.qcow2] qemu-system-x86-64 booting qcow2 image
> stalls
>=20
> Hi Raymond,
>=20
> On 03/25/2018 11:23 PM, Tan, Raymond wrote:
> > Dear All,
> >
> >
> >
> > I'm building an image with meta-intel layer, and machine set to
> > intel-corei7-64, with additional IMAGE_FSTYPES set to "wic.qcow2".
> >
> > Upon running the image with the following command, the boot stalls
> > with "Booting from Hard Disk..."
> >
> >
> >
> > qemu-system-x86_64 core-image-sato-sdk.wic.qcow2 -m 512
> >
> >
> >
> > The hddimg has no issue booting with flashing to usb with
> > mkefidisk.sh, but this qcow2 image didn't even boot till EFI,
>=20
> Did you try runqemu core-image-sato-sdk.wic.qcow2 ovmf?

Thanks for the tip, I tried the following
	runqemu core-image-sato-sdk wic.qcow2 =3D> failed with same issue, stallin=
g at "booting from hard disk..."
	runqemu core-image-sato-sdk =3D> pass, boots and system usable

While 2nd works, but checking the log, it's actually running the kernel and=
 ext4 as specific param to qemu-system-x86-64, and not using the wic.qcow2 =
image.
I was wondering, how should wic.qcow2 be used? Should the user somehow extr=
act the image into different portions and load with qemu-system-x86-64?
Or perhaps there's further setting needed during the build that I missed?

>=20
> Thanks,
> Anuj

