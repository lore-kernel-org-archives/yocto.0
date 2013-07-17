Return-Path: <B19537@freescale.com>
Received: from db9outboundpool.messaging.microsoft.com
	(mail-db9lp0249.outbound.messaging.microsoft.com [213.199.154.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0028AE013A7
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 06:54:52 -0700 (PDT)
Received: from mail54-db9-R.bigfish.com (10.174.16.244) by
	DB9EHSOBE026.bigfish.com (10.174.14.89) with Microsoft SMTP Server id
	14.1.225.22; Wed, 17 Jul 2013 13:54:51 +0000
Received: from mail54-db9 (localhost [127.0.0.1])	by mail54-db9-R.bigfish.com
	(Postfix) with ESMTP id 9E35AC0375;
	Wed, 17 Jul 2013 13:54:51 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz9371I542I1432Izz1f42h1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz8275dhz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail54-db9 (localhost.localdomain [127.0.0.1]) by mail54-db9
	(MessageSwitch) id 1374069289561140_6106;
	Wed, 17 Jul 2013 13:54:49 +0000 (UTC)
Received: from DB9EHSMHS030.bigfish.com (unknown [10.174.16.234])	by
	mail54-db9.bigfish.com (Postfix) with ESMTP id 82CA842005D;
	Wed, 17 Jul 2013 13:54:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB9EHSMHS030.bigfish.com
	(10.174.14.40) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Wed, 17 Jul 2013 13:54:48 +0000
Received: from 039-SN2MPN1-023.039d.mgd.msft.net ([169.254.3.249]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.03.0136.001; Wed, 17 Jul 2013 13:54:29 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Saddam Quirem <SQuirem@FBDFrozen.com>
Thread-Topic: Enabling SFTP on libcurl package
Thread-Index: Ac6C8Yi7yWhmdSpCTjWQ3lYVU2XiawAA3kAw
Date: Wed, 17 Jul 2013 13:54:28 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A01625D60@039-SN2MPN1-023.039d.mgd.msft.net>
References: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
In-Reply-To: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
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
X-List-Received-Date: Wed, 17 Jul 2013 13:54:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Add "--with-libssh2" when configure curl.=20


Best Regards,

Zhenhua


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Saddam Quirem
> Sent: Wednesday, July 17, 2013 9:43 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Enabling SFTP on libcurl package
>=20
> I've developing an application that uses libcurl using SFTP to transfer
> data.
> When I finally cross-compiled my application and and tested it, it would
> print this message: "Protocol sftp not supported or disabled in libcurl".
> This means that the libcurl package I built did not have SSH enabled.
>=20
> I'm wondering if there is some way I can get SFTP supported in libcurl?
>=20
> I'm using meta-fsl-arm BSP for poky-dylan. Tagetting the i.MX6 processor.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



