Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87131E01245
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 11:34:48 -0700 (PDT)
Received: from mail231-tx2-R.bigfish.com (10.9.14.240) by
	TX2EHSOBE007.bigfish.com (10.9.40.27) with Microsoft SMTP Server id
	14.1.225.23; Thu, 16 Aug 2012 18:34:46 +0000
Received: from mail231-tx2 (localhost [127.0.0.1])	by
	mail231-tx2-R.bigfish.com (Postfix) with ESMTP id DBC2BB402E5;
	Thu, 16 Aug 2012 18:34:46 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -8
X-BigFish: VS-8(zz98dI9371Ic89bh1b0aL936eI1432I14ffIzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail231-tx2 (localhost.localdomain [127.0.0.1]) by mail231-tx2
	(MessageSwitch) id 1345142085370182_10878;
	Thu, 16 Aug 2012 18:34:45 +0000 (UTC)
Received: from TX2EHSMHS037.bigfish.com (unknown [10.9.14.242])	by
	mail231-tx2.bigfish.com (Postfix) with ESMTP id 587FD40044;
	Thu, 16 Aug 2012 18:34:45 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS037.bigfish.com
	(10.9.99.137) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 16 Aug 2012 18:34:44 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0298.005;
	Thu, 16 Aug 2012 13:34:43 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Thread-Topic: [yocto] Re-Build virtual/kernel
Thread-Index: AQHNe93NM1yjYfBZSUOVm/HUM8Yf6g==
Date: Thu, 16 Aug 2012 18:34:43 +0000
Message-ID: <CAEsOVNdLwWySAnOc9J8umOU75oV1S8f-9RWJFxHV2n1e4Q=MqA@mail.gmail.com>
References: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
In-Reply-To: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Re-Build virtual/kernel
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
X-List-Received-Date: Thu, 16 Aug 2012 18:34:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <2C9641D9D282264588791F90BDEF5A87@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz
<munoz0raul@gmail.com> wrote:
> Hello All,
>
> I'm use yocto to create a linux for imx28, with meta-fsl-arm and
> meta-openembedded.
>
> Until now, every thing is ok, I Have a core-image-minimal-imx28evk.sdcard
> that working in the machine.
>
> My problem is that when I try to add some things in the kernel
> configuration, I feel like the system build dont generate a new uImage fi=
le
> or the thing that I selected in the Kernel dont be atached in the
> core-image-minimal-imx28evk.sdcard!
>
> What I did is:
>
> ...tmp/deploy/images$ ls
> -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin ->
> uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
>
> then:
>
> bitbake -c menuconfig virtual/kernel
> bitbake -c patch virtual/kernel
> bitbake -c compile virtual/kernel
> bitbake  virtual/kernel

Try

bitbake -c compile virtual/kernel -f

-M

>
> and I'm looking again:
>
> ...tmp/deploy/images$ ls
> -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin ->
> uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
>
> Some One can explain to me what is the correct way to re-build the
> virtual/kenel target?
>
> Thanks for all Help!
>
> --
> Raul Rosetto Mu=F1oz
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


