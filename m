Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe003.messaging.microsoft.com [216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 307A5E004A1
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 07:46:39 -0700 (PDT)
Received: from mail116-va3-R.bigfish.com (10.7.14.240) by
	VA3EHSOBE006.bigfish.com (10.7.40.26) with Microsoft SMTP Server id
	14.1.225.23; Mon, 23 Jul 2012 14:46:38 +0000
Received: from mail116-va3 (localhost [127.0.0.1])	by
	mail116-va3-R.bigfish.com (Postfix) with ESMTP id 0F65240090;
	Mon, 23 Jul 2012 14:46:38 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zz98dI9371I1be0I1443I1432Izz1202hzz8275dhz2dh2a8h668h839h8e2h8e3h946hf0ah107ah10d2hbe9i)
Received: from mail116-va3 (localhost.localdomain [127.0.0.1]) by mail116-va3
	(MessageSwitch) id 1343054795891674_18720;
	Mon, 23 Jul 2012 14:46:35 +0000 (UTC)
Received: from VA3EHSMHS027.bigfish.com (unknown [10.7.14.237])	by
	mail116-va3.bigfish.com (Postfix) with ESMTP id D178C1C005D;
	Mon, 23 Jul 2012 14:46:35 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS027.bigfish.com
	(10.7.99.37) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 23 Jul 2012 14:46:33 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Mon, 23 Jul 2012 09:46:33 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
Thread-Topic: [yocto] [HOB / i.MX6] unable to parse %s
Thread-Index: AQHNaOHzjkeFRV4jBEyDrNeDIT4ZyQ==
Date: Mon, 23 Jul 2012 14:46:32 +0000
Message-ID: <CAEsOVNec5=byLVKUqcCuO3vTtFLWCDBuug-xO_QdwvYuCcs-tw@mail.gmail.com>
References: <4439C3C0562087488F139C696CD862A72C1452@SBS-MEDEC.medecbenelux.local>
In-Reply-To: <4439C3C0562087488F139C696CD862A72C1452@SBS-MEDEC.medecbenelux.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [HOB / i.MX6] unable to parse %s
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
X-List-Received-Date: Mon, 23 Jul 2012 14:46:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <4207812C4FF9BA4593BA4E483BF7BDDE@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 23, 2012 at 4:08 AM, Tim Verstraete
<Tim.Verstraete@medecbenelux.be> wrote:
> Hi,
>
>
>
> I have installed yocto and downloaded meta-fsl-arm and meta-openembedded.=
 I
> started HOB, added those layers and when I select imx6sabrelite target, H=
OB
> starts to parse the recipes but then stops and gives following error:
> =93error: unable to parse %s=94
>
>
>
> What does this error message mean and what can I do about it =85

Are you using master or the last release denzil? Can you paste the
entire log (if there was text)?

-M

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
> BTW I am currently running Ubuntu 12.04 LTS 64bit but I also had this on
> Ubuntu 10.04 LTS 64bit.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


