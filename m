Return-Path: <B19537@freescale.com>
Received: from co9outboundpool.messaging.microsoft.com
	(co9ehsobe001.messaging.microsoft.com [207.46.163.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D635E013AE
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 02:42:36 -0700 (PDT)
Received: from mail132-co9-R.bigfish.com (10.236.132.241) by
	CO9EHSOBE040.bigfish.com (10.236.130.103) with Microsoft SMTP Server id
	14.1.225.22; Tue, 30 Jul 2013 09:42:34 +0000
Received: from mail132-co9 (localhost [127.0.0.1])	by
	mail132-co9-R.bigfish.com (Postfix) with ESMTP id 4C15A2C0177;
	Tue, 30 Jul 2013 09:42:34 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz9371I542I1432Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h177df4h17326ah1de096h1954cbh8275bh8275dh1de097hz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail132-co9 (localhost.localdomain [127.0.0.1]) by mail132-co9
	(MessageSwitch) id 1375177352916798_22944;
	Tue, 30 Jul 2013 09:42:32 +0000 (UTC)
Received: from CO9EHSMHS020.bigfish.com (unknown [10.236.132.243])	by
	mail132-co9.bigfish.com (Postfix) with ESMTP id DA644C0047;
	Tue, 30 Jul 2013 09:42:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO9EHSMHS020.bigfish.com
	(10.236.130.30) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Tue, 30 Jul 2013 09:42:32 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.43]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.03.0136.001; Tue, 30 Jul 2013 09:42:31 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] any ETA for when the downloadable toolchains will be
	updated?
Thread-Index: AQHOjQVDZHDztoasq0mbp61cYzzN85l89+FQ
Date: Tue, 30 Jul 2013 09:42:30 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A01651388@039-SN2MPN1-021.039d.mgd.msft.net>
References: <alpine.DEB.2.02.1307300512280.7428@oneiric>
In-Reply-To: <alpine.DEB.2.02.1307300512280.7428@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any ETA for when the downloadable toolchains will be	updated?
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
X-List-Received-Date: Tue, 30 Jul 2013 09:42:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You can find recent version here http://autobuilder.yoctoproject.org/pub/ni=
ghtly/CURRENT/toolchain/, but not sure if below issue is resolved.=20


Best Regards,

Zhenhua


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Tuesday, July 30, 2013 5:15 PM
> To: Yocto discussion list
> Subject: [yocto] any ETA for when the downloadable toolchains will be
> updated?
>=20
>=20
>   based simply on the timestamps, it would appear that the toolchains
> here:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/toolchain/
>=20
> still contain the script bug involving the now-dead "find" option in
> fedora 19 where -perm no longer accepts a value starting with "+". is
> there any plan to replace those packages with updated versions that work
> properly on fedora 19?
>=20
> rday
>=20
> --
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



