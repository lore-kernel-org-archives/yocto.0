Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE002.bigfish.com (db3ehsobe003.messaging.microsoft.com
	[213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8395E0030F
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 18:16:06 -0800 (PST)
Received: from mail101-db3-R.bigfish.com (10.3.81.233) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Sat, 28 Jan 2012 02:16:03 +0000
Received: from mail101-db3 (localhost [127.0.0.1])	by
	mail101-db3-R.bigfish.com (Postfix) with ESMTP id E57BB4A04D2;
	Sat, 28 Jan 2012 02:16:04 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bh8275dhz2dhc1bhc31hc1ah2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail101-db3 (localhost.localdomain [127.0.0.1]) by mail101-db3
	(MessageSwitch) id 1327716963993_15682;
	Sat, 28 Jan 2012 02:16:02 +0000 (UTC)
Received: from DB3EHSMHS011.bigfish.com (unknown [10.3.81.246])	by
	mail101-db3.bigfish.com (Postfix) with ESMTP id F1F2B100048;
	Sat, 28 Jan 2012 02:16:02 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS011.bigfish.com
	(10.3.87.111) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Sat, 28 Jan 2012 02:16:03 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Fri, 27 Jan 2012 20:16:01 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Thread-Topic: [yocto] Is there a recipe for evtest package?
Thread-Index: AQHM3WLHn6JuWXO/a0W3dvwv5fFdvA==
Date: Sat, 28 Jan 2012 02:16:01 +0000
Message-ID: <CAEsOVNfPSCTTyVDmmOfqF52FXoWajDZtY-n9MNq0mVn+kUw_wg@mail.gmail.com>
References: <CAFZh4h_X5Ub+et3R68K1z3wvYpcZxdAv2mf2tQV6HtiWp7xNqw@mail.gmail.com>
	<4F201635.7090505@communistcode.co.uk>
	<CAFZh4h8nrZMK7mQeMBZOv8Y2+VkqsbE1EV0fVM3_G_MTKVyojQ@mail.gmail.com>
In-Reply-To: <CAFZh4h8nrZMK7mQeMBZOv8Y2+VkqsbE1EV0fVM3_G_MTKVyojQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a recipe for evtest package?
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
X-List-Received-Date: Sat, 28 Jan 2012 02:16:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E13B7DB69E881744948C4CE03F0D7587@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 25, 2012 at 7:36 AM, Brian Hutchinson <b.hutchman@gmail.com> wr=
ote:
> On Wed, Jan 25, 2012 at 9:48 AM, Jack Mitchell <ml@communistcode.co.uk> w=
rote:
>> Hi Brian,
>>
>> Your best bet is to adapt the one from meta-oe here:
>>
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-supp=
ort/evtest
>
> Hi Jack,
>
> I'm still trying to get up-to-speed on how to work with Yocto ....
> would adding this layer be just like adding say poky extras?

Yes, although other issues can present itself. If you start using
meta-oe you need to make sure you pick one that is compatible with
your oe-core layer.

-M=


