Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE009.bigfish.com (tx2ehsobe004.messaging.microsoft.com
	[65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A07E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 21:29:53 -0800 (PST)
Received: from mail54-tx2-R.bigfish.com (10.9.14.243) by
	TX2EHSOBE009.bigfish.com (10.9.40.29) with Microsoft SMTP Server id
	14.1.225.23; Wed, 11 Jan 2012 05:29:52 +0000
Received: from mail54-tx2 (localhost [127.0.0.1])	by mail54-tx2-R.bigfish.com
	(Postfix) with ESMTP id 93C234601EB;
	Wed, 11 Jan 2012 05:29:52 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bh8275dhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail54-tx2 (localhost.localdomain [127.0.0.1]) by mail54-tx2
	(MessageSwitch) id 1326259792473776_18202;
	Wed, 11 Jan 2012 05:29:52 +0000 (UTC)
Received: from TX2EHSMHS036.bigfish.com (unknown [10.9.14.253])	by
	mail54-tx2.bigfish.com (Postfix) with ESMTP id 6AE4A14004B;
	Wed, 11 Jan 2012 05:29:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS036.bigfish.com
	(10.9.99.136) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 11 Jan 2012 05:29:51 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Tue, 10 Jan 2012 23:29:51 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Thread-Topic: [yocto] hob usage
Thread-Index: AQHM0CIKIjYrMukblEeRnA4toFEaRw==
Date: Wed, 11 Jan 2012 05:29:50 +0000
Message-ID: <CAEsOVNfhUCPf9Ee7Tqm5RtvGm1WVh-MhKTaxu_9uik6PPXkvEQ@mail.gmail.com>
References: <4F0D087B.5050709@gmail.com>
In-Reply-To: <4F0D087B.5050709@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: hob usage
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
X-List-Received-Date: Wed, 11 Jan 2012 05:29:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0BF1FAD6557BDB41BCC3137E14F76EC8@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 10, 2012 at 9:56 PM, Jim Abernathy <jfabernathy@gmail.com> wrot=
e:
> I have a question about hob usage. =A0I understand the basics of hob and =
how
> it adds packages. =A0I also understand how it will parse through my local=
.conf
> and include any extra packages that I may have included by using
> IMAGE_INSTALL +=3D <package>.
>
> I've found that if I start with a clean BSP and use hob to add a package,=
 it
> will allow me to save that configuration anywhere. =A0I'm not sure where =
I
> should save it. =A0It contains the IMAGE_INSTALL for the packages I've
> selected, but is also includes a 'require' statement, which seems to have=
 a
> relative path, like:
>
> require recipes-sato/images/core-image-sato.bb
>
> Where is the location I should save the hob configuration file? I know th=
at
> if I save it outside my poky directory, the package will not be included,=
 so
> it's important where it goes.

This is one of those quirks about hob I found weird. I filed a bug about th=
is:

http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1573

In general you need to save it somewhere one of your layers looks for
additional recipes to run it from the command line.

-M=


