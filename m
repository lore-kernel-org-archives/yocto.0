Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AED2E01454;
	Fri, 21 Dec 2012 09:34:09 -0800 (PST)
Received: from mail29-am1-R.bigfish.com (10.3.201.239) by
	AM1EHSOBE009.bigfish.com (10.3.204.29) with Microsoft SMTP Server id
	14.1.225.23; Fri, 21 Dec 2012 17:34:08 +0000
Received: from mail29-am1 (localhost [127.0.0.1])	by mail29-am1-R.bigfish.com
	(Postfix) with ESMTP id 64605400C4;
	Fri, 21 Dec 2012 17:34:08 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -7
X-BigFish: VS-7(zz98dI9371Ic89bh1be0I168aJ1443I1432I14ffIzz1de0h1202h1e76h1d1ah1d2ahzz8275dhz2dh2a8h668h839h8e2h8e3h946hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758hbe9i1155h)
Received: from mail29-am1 (localhost.localdomain [127.0.0.1]) by mail29-am1
	(MessageSwitch) id 1356111246283515_13154;
	Fri, 21 Dec 2012 17:34:06 +0000 (UTC)
Received: from AM1EHSMHS006.bigfish.com (unknown [10.3.201.245])	by
	mail29-am1.bigfish.com (Postfix) with ESMTP id 41072240051;
	Fri, 21 Dec 2012 17:34:06 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS006.bigfish.com
	(10.3.207.106) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 21 Dec 2012 17:34:05 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.21]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0318.003; Fri, 21 Dec 2012 17:34:04 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Tim Verstraete <Tim.Verstraete@medecbenelux.be>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Thread-Topic: [yocto] uboot i.MX6
Thread-Index: AQHN36FeOUJqIzKtaUeR3U+Kiay0Lg==
Date: Fri, 21 Dec 2012 17:34:03 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A80FFB0@039-SN1MPN1-002.039d.mgd.msft.net>
References: <4439C3C0562087488F139C696CD862A71328DE01@SBS-MEDEC.medecbenelux.local>
In-Reply-To: <4439C3C0562087488F139C696CD862A71328DE01@SBS-MEDEC.medecbenelux.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uboot i.MX6
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Dec 2012 17:34:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <CBD5AC25BFCBD34AB6F2692FD302796C@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Adding meta-freescale.

-M

On Thu, Dec 6, 2012 at 4:24 AM, Tim Verstraete
<Tim.Verstraete@medecbenelux.be> wrote:
> Hi everybody,
>
>
>
> I have build the i.MX6 with danny release of yocto and latest freescale m=
eta
> using the core-image-minimal image for imx6qsabresd target machine =E8 re=
sult
> is build has done everything BUT I when I upload my uboot to my sd card I
> get nothing. When I change uboot to the image from the freescale website
> everything runs =85
>
>
>
> So this means the kernel and root file system are just fine, only uboot i=
s
> not ok. My uboot is about half the size of the freescale uboot.
>
>
>
> Do I need to do anything special for uboot to run on my device?
>
>
>
> Thanks in advance,
>
>
>
> Kind regards,
>
>
>
> Tim
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


