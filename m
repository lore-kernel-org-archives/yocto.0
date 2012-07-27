Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FE53E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 13:19:41 -0700 (PDT)
Received: from mail173-ch1-R.bigfish.com (10.43.68.228) by
	CH1EHSOBE002.bigfish.com (10.43.70.52) with Microsoft SMTP Server id
	14.1.225.23; Fri, 27 Jul 2012 20:19:40 +0000
Received: from mail173-ch1 (localhost [127.0.0.1])	by
	mail173-ch1-R.bigfish.com (Postfix) with ESMTP id 4FBAD38034E;
	Fri, 27 Jul 2012 20:19:40 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail173-ch1 (localhost.localdomain [127.0.0.1]) by mail173-ch1
	(MessageSwitch) id 1343420378655435_17628;
	Fri, 27 Jul 2012 20:19:38 +0000 (UTC)
Received: from CH1EHSMHS019.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.241])	by mail173-ch1.bigfish.com (Postfix) with ESMTP id
	945D6800C0;	Fri, 27 Jul 2012 20:19:38 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS019.bigfish.com
	(10.43.70.19) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 27 Jul 2012 20:19:38 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Fri, 27 Jul 2012 15:19:37 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] Generate a powerpc ramdisk file for the linux kernel
Thread-Index: AQHNbDUkSj+VLGp+IEycLojItv83eg==
Date: Fri, 27 Jul 2012 20:19:36 +0000
Message-ID: <CAEsOVNc6WaR5uGk5kfPAb8m6V+HQ3CkKJ_XVVPRLJXhNtesH_w@mail.gmail.com>
References: <993F5528-427A-4642-B338-F990106111C4@gmail.com>
In-Reply-To: <993F5528-427A-4642-B338-F990106111C4@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Generate a powerpc ramdisk file for the linux kernel
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
X-List-Received-Date: Fri, 27 Jul 2012 20:19:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A712149F4ACDA74DA04B9FCDA90881B4@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 27, 2012 at 2:50 PM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> Hi,
>        How can I generate a powerpc ramdisk file for the linux kernel usi=
ng yocto?

Look for IMAGE_FSTYPES and IMAGE_TYPES in the manuals.

-M

>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


