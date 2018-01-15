Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CFA7E00DB5; Mon, 15 Jan 2018 04:30:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9DC9E0085E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 04:30:49 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jan 2018 04:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,363,1511856000"; d="scan'208";a="22280136"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2018 04:30:47 -0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.167]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.141]) with mapi id
	14.03.0319.002; Mon, 15 Jan 2018 20:30:46 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: Isaac Nickaein <nickaein.i@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] conf/machine/<machine.conf> in my custom layer doesn't
	get	parsed
Thread-Index: AQHTjfLrkBRdoE0vFU6qKvvsXqG3w6N03MVg
Date: Mon, 15 Jan 2018 12:30:45 +0000
Message-ID: <C0207330DF60C5409302EC78C3FE68F34B0AAD@PGSMSX105.gar.corp.intel.com>
References: <CA+NJmkd7Rzt47Uv=orAaLvgS8RC9=Ok_gk8hoZaBgxMRsJMXtw@mail.gmail.com>
In-Reply-To: <CA+NJmkd7Rzt47Uv=orAaLvgS8RC9=Ok_gk8hoZaBgxMRsJMXtw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2RiZjdlZTAtMjljNC00ZGE0LTgyZjUtYjU5MTFkNTY0NmNhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJLdURxaHFBVGdYbFNBQnpmcDNoVGlKd25NTHlOdkpycUFUbzZ5MTUxbGJJSGxMbWVYQitEcVRhMDhkUVUwS1wvOCJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: conf/machine/<machine.conf> in my custom layer doesn't get	parsed
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
X-List-Received-Date: Mon, 15 Jan 2018 12:30:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Issac,
=20
> I've created a custom meta layer over poky rocko and added it to bblayer.=
conf. I've
> also set the appropriate MACHINE value in
> conf/local.conf:
>=20
> MACHINE =3D "colibri-imx6"
>=20
> There is a machine specific conf file in this meta layer, but it doesn't =
get parsed. This
> file is located at "conf/machine/colibri-imx6.conf" inside the meta layer=
.
>=20
> By checking the output of
>=20
> bitbake -e
>=20
> it seems that other machine-specific conf files like "meta-freescale-
> 3rdparty/conf/machine/colibri-imx6.conf" are referenced and parsed. But t=
here is not
> even a reference to my machine-specific conf file.

Have you defined BBPATH in your layer.conf correctly?

Thanks,
Anuj

>=20
> Should I set some variables that hint the bitbake to parse machine specif=
ic files in my
> layer?
>=20
> Bests,
> Isaac
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

