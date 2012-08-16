Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64FE3E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 11:34:20 -0700 (PDT)
Received: from mail140-ch1-R.bigfish.com (10.43.68.239) by
	CH1EHSOBE009.bigfish.com (10.43.70.59) with Microsoft SMTP Server id
	14.1.225.23; Thu, 16 Aug 2012 18:34:19 +0000
Received: from mail140-ch1 (localhost [127.0.0.1])	by
	mail140-ch1-R.bigfish.com (Postfix) with ESMTP id DD664801B3;
	Thu, 16 Aug 2012 18:34:18 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail140-ch1 (localhost.localdomain [127.0.0.1]) by mail140-ch1
	(MessageSwitch) id 1345142056364208_32530;
	Thu, 16 Aug 2012 18:34:16 +0000 (UTC)
Received: from CH1EHSMHS013.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.232])	by mail140-ch1.bigfish.com (Postfix) with ESMTP id
	4CB5940021D;	Thu, 16 Aug 2012 18:34:16 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS013.bigfish.com
	(10.43.70.13) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 16 Aug 2012 18:34:15 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0298.005;
	Thu, 16 Aug 2012 13:31:31 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] IMX 6 quad core development kit
Thread-Index: AQHNe91anrphut+Fnkqh9F1ygu8mQw==
Date: Thu, 16 Aug 2012 18:31:30 +0000
Message-ID: <CAEsOVNdd+y0EZCVrY=XKT_JPLMz6LSkLtZMKUFLs6p3DzdpPJg@mail.gmail.com>
References: <06877BBA-15AF-4B46-B76B-47240652CC29@gmail.com>
In-Reply-To: <06877BBA-15AF-4B46-B76B-47240652CC29@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: IMX 6 quad core development kit
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
X-List-Received-Date: Thu, 16 Aug 2012 18:34:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <13131FBF0ABC7349BA0F62E71A32A9C9@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 16, 2012 at 12:33 PM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
> Hi,
>        Any suggestions for an IMX 6 quad core development kit? Has Yocto =
been tested on the IMX 6 ARM processor?

https://github.com/Freescale/meta-fsl-arm

has one imx6 board - not sure beyond that. Perhaps ping their mailing
list: http://groups.google.com/group/meta-fsl-arm

-M

>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


