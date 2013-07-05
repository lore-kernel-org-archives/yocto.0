Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe003.messaging.microsoft.com [216.32.180.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D361DE0140D
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2013 22:54:58 -0700 (PDT)
Received: from mail177-co1-R.bigfish.com (10.243.78.249) by
	CO1EHSOBE015.bigfish.com (10.243.66.78) with Microsoft SMTP Server id
	14.1.225.22; Fri, 5 Jul 2013 05:54:56 +0000
Received: from mail177-co1 (localhost [127.0.0.1])	by
	mail177-co1-R.bigfish.com (Postfix) with ESMTP id 046F59802FE;
	Fri,  5 Jul 2013 05:54:56 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 1
X-BigFish: VS1(zz9371I542I1432I853kzz1f42h1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail177-co1 (localhost.localdomain [127.0.0.1]) by mail177-co1
	(MessageSwitch) id 1373003693931006_3466;
	Fri,  5 Jul 2013 05:54:53 +0000 (UTC)
Received: from CO1EHSMHS026.bigfish.com (unknown [10.243.78.246])	by
	mail177-co1.bigfish.com (Postfix) with ESMTP id DFCC3900049;
	Fri,  5 Jul 2013 05:54:53 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS026.bigfish.com
	(10.243.66.36) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 5 Jul 2013 05:54:53 +0000
Received: from 039-SN2MPN1-022.039d.mgd.msft.net ([169.254.2.148]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0328.011;
	Fri, 5 Jul 2013 05:54:52 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Thread-Topic: [yocto] Another in a seemingly infinite chain of errors
Thread-Index: Ac55QwUeat5KrLe1TDKEXTuxEmXHNAAAJ+KQ
Date: Fri, 5 Jul 2013 05:54:52 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A015D2FE9@039-SN2MPN1-022.039d.mgd.msft.net>
References: <91F05D61B900467F8FB43D4ACE5DF0F2@PAULD>
In-Reply-To: <91F05D61B900467F8FB43D4ACE5DF0F2@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another in a seemingly infinite chain of errors
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
X-List-Received-Date: Fri, 05 Jul 2013 05:54:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

FILES_${PN}_append =3D " xxx" should useful, xxx is the file which is liste=
d in the "were installed but not shipped" message.=20

More info of FILES can be found in https://www.yoctoproject.org/docs/curren=
t/poky-ref-manual/poky-ref-manual.html#var-FILES


Best Regards,

Zhenhua


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
> Sent: Friday, July 05, 2013 1:47 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Another in a seemingly infinite chain of errors
>=20
> The latest is two things: a warning that the files and directories I
> created in my do_install "were installed but not shipped", followed by an
> error saying that my layer is "not found in the base feeds". Googling
> those two phrases turned up lots of patches intended to fix those errors
> in specific obscure cases, but nothing that explains what they mean, or
> what I should do when it happens to my layer. I don't think I've
> forgotten anything that the Dev Manual says that I need in order to add a
> simple layer.
>=20
> --
>=20
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



