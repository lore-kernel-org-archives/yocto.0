Return-Path: <B19537@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0184.outbound.messaging.microsoft.com [213.199.154.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF5D4E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 02:12:18 -0700 (PDT)
Received: from mail148-db8-R.bigfish.com (10.174.8.242) by
	DB8EHSOBE018.bigfish.com (10.174.4.81) with Microsoft SMTP Server id
	14.1.225.23; Mon, 24 Jun 2013 09:12:16 +0000
Received: from mail148-db8 (localhost [127.0.0.1])	by
	mail148-db8-R.bigfish.com (Postfix) with ESMTP id 87722A033E;
	Mon, 24 Jun 2013 09:12:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz9371I542I1432Izz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h947hd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail148-db8 (localhost.localdomain [127.0.0.1]) by mail148-db8
	(MessageSwitch) id 1372065134125060_13628;
	Mon, 24 Jun 2013 09:12:14 +0000 (UTC)
Received: from DB8EHSMHS029.bigfish.com (unknown [10.174.8.253])	by
	mail148-db8.bigfish.com (Postfix) with ESMTP id 1ACFEC02DF;
	Mon, 24 Jun 2013 09:12:14 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS029.bigfish.com
	(10.174.4.39) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Mon, 24 Jun 2013 09:12:11 +0000
Received: from 039-SN2MPN1-022.039d.mgd.msft.net ([169.254.2.148]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0328.011; Mon, 24 Jun 2013 09:12:09 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "insop.song@gmail.com" <insop.song@gmail.com>
Thread-Topic: [yocto] How NOT to include kernel image to the rootfs?
Thread-Index: AQHOcLiM1nk9T8wbFkWxqWZ4eL0rbZlEklwAgAABcyA=
Date: Mon, 24 Jun 2013 09:12:08 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A015BCAFD@039-SN2MPN1-022.039d.mgd.msft.net>
References: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
	<51C7BD29.6060607@windriver.com>
	<CACzyEJ-A-U=0XV3qUxV-14+Cxn+r8aZOrM+g7EKBXJWdHD=T=A@mail.gmail.com>
	<20130624090457.GA22807@ad.chargestorm.se>
In-Reply-To: <20130624090457.GA22807@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How NOT to include kernel image to the rootfs?
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
X-List-Received-Date: Mon, 24 Jun 2013 09:12:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Insop,=20

You can check the actual dependency in the output file of "bitbake -g fsl-i=
mage-min-net2".=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Anders Darander
> Sent: Monday, June 24, 2013 5:05 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] How NOT to include kernel image to the rootfs?
>=20
> * Insop Song <insop.song@gmail.com> [130624 10:56]:
> > I've tried
> > - by commenting "RDEPENDS_kernel-base ?=3D "kernel-image"" from
> > kernel.bbclass
> > - and/or adding=A0"RDEPENDS_kernel-base =3D "" in my image definition
>=20
> You should add this line in either your local.conf, or in a .bbappend for
> the kernel recipe in question.
>=20
> > But neither worked.
>=20
> That should make it work.
>=20
>=20
> Cheers,
> Anders
>=20
>=20
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



