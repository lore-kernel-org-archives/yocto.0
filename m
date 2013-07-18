Return-Path: <B19537@freescale.com>
Received: from db9outboundpool.messaging.microsoft.com
	(mail-db9lp0249.outbound.messaging.microsoft.com [213.199.154.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29957E0071F
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 19:24:49 -0700 (PDT)
Received: from mail137-db9-R.bigfish.com (10.174.16.239) by
	DB9EHSOBE025.bigfish.com (10.174.14.88) with Microsoft SMTP Server id
	14.1.225.22; Thu, 18 Jul 2013 02:24:47 +0000
Received: from mail137-db9 (localhost [127.0.0.1])	by
	mail137-db9-R.bigfish.com (Postfix) with ESMTP id B9EA32E0209;
	Thu, 18 Jul 2013 02:24:47 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz9371I542I1432Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h1de097h1de096h8275dhz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail137-db9 (localhost.localdomain [127.0.0.1]) by mail137-db9
	(MessageSwitch) id 1374114285658055_16671;
	Thu, 18 Jul 2013 02:24:45 +0000 (UTC)
Received: from DB9EHSMHS008.bigfish.com (unknown [10.174.16.252])	by
	mail137-db9.bigfish.com (Postfix) with ESMTP id 9B565480053;
	Thu, 18 Jul 2013 02:24:45 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB9EHSMHS008.bigfish.com
	(10.174.14.18) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 18 Jul 2013 02:24:45 +0000
Received: from 039-SN2MPN1-023.039d.mgd.msft.net ([169.254.3.249]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.03.0136.001; Thu, 18 Jul 2013 02:24:35 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: squirem <squirem@fbdfrozen.com>
Thread-Topic: [yocto] Enabling SFTP on libcurl package
Thread-Index: AQHOgwQ9NfeOmGvNsUGldARfaZqk45lps8Wg
Date: Thu, 18 Jul 2013 02:24:34 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A01627246@039-SN2MPN1-023.039d.mgd.msft.net>
References: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
	<CA452391058F6D4E9715FB2C29D9312A01625D60@039-SN2MPN1-023.039d.mgd.msft.net>
	<loom.20130717T172709-633@post.gmane.org>
In-Reply-To: <loom.20130717T172709-633@post.gmane.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling SFTP on libcurl package
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
X-List-Received-Date: Thu, 18 Jul 2013 02:24:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Seems libssh2 is not included in oe-core and meta-oe, you should add recipe=
 for libssh2 firstly.=20


Best Regards,

Zhenhua


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of squirem
> Sent: Wednesday, July 17, 2013 11:42 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Enabling SFTP on libcurl package
>=20
> Luo Zhenhua-B19537 <B19537@...> writes:
>=20
> > Add "--with-libssh2" when configure curl.
>=20
> It seems that poky did not come with libssh2.
> I'm also having some issues cross-compiling the library myself.
> Any thoughts?
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



