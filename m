Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02BE6E0155F
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 06:18:02 -0700 (PDT)
Received: from mail216-ch1-R.bigfish.com (10.43.68.235) by
	CH1EHSOBE005.bigfish.com (10.43.70.55) with Microsoft SMTP Server id
	14.1.225.22; Fri, 13 Sep 2013 13:18:00 +0000
Received: from mail216-ch1 (localhost [127.0.0.1])	by
	mail216-ch1-R.bigfish.com (Postfix) with ESMTP id C5DD04001E1;
	Fri, 13 Sep 2013 13:18:00 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 4
X-BigFish: VS4(z5621hz98dI9371I542I1432I4015Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275dhz2dh2a8h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h19ceh1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5hbe9i531p1155h)
Received: from mail216-ch1 (localhost.localdomain [127.0.0.1]) by mail216-ch1
	(MessageSwitch) id 1379078279459823_23402;
	Fri, 13 Sep 2013 13:17:59 +0000 (UTC)
Received: from CH1EHSMHS006.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.245])	by mail216-ch1.bigfish.com (Postfix) with ESMTP id
	6B7654E0054;	Fri, 13 Sep 2013 13:17:59 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS006.bigfish.com
	(10.43.70.6) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Fri, 13 Sep 2013 13:17:58 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.137]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.03.0158.002;
	Fri, 13 Sep 2013 13:17:57 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] "tree" link is broken for some layers in
	http://layers.openembedded.org/layerindex/branch/master/layers/
Thread-Index: Ac6wKRhWCCr9X4c6SruJISue/6xVYwARaM4AAAUkGnA=
Date: Fri, 13 Sep 2013 13:17:56 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A0172B158@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0171C4BD@039-SN2MPN1-021.039d.mgd.msft.net>
	<3458929.5fRdMb9cIz@helios>
In-Reply-To: <3458929.5fRdMb9cIz@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [111.199.78.71]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: "tree" link is broken for some layers in http://layers.openembedded.org/layerindex/branch/master/layers/
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
X-List-Received-Date: Fri, 13 Sep 2013 13:18:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Paul.=20


Best Regards,

Zhenhua


> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Friday, September 13, 2013 6:48 PM
> To: Luo Zhenhua-B19537
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] "tree" link is broken for some layers in
> http://layers.openembedded.org/layerindex/branch/master/layers/
>=20
> Hi Zhenhua,
>=20
> On Friday 13 September 2013 02:29:41 Luo Zhenhua-B19537 wrote:
> > When I click the "tree" links of some layers in
> > http://layers.openembedded.org/layerindex/branch/master/layers/, "400
> > Bad Request" error appears, can somebody take a look? Meta-intel
> > Meta-fsl-arm Meta-fsl-ppc Meta-lsi Meta-ti ...
>=20
> Oops, this was my fault. The generated URL is now correct, and I also
> fixed a bug where the URL fields were being cleared when editing a layer
> (and the change history showed that meta-kde was affected by this; I've
> now restored the values for its entry as well).
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre



