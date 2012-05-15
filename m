Return-Path: <John.Willis@Distant-earth.com>
Received: from omta2.brinkster.com (omta2.brinkster.com [65.182.109.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54AD0E006C7
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 07:51:27 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by omta2.brinkster.com (Postfix) with ESMTP id CDDDB1C19F00;
	Tue, 15 May 2012 07:51:25 -0700 (MST)
X-DSPAM-Result: Spam
X-DSPAM-Class: Spam
X-DSPAM-Confidence: 0.52
X-DSPAM-Probability: 0.9649
X-DSPAM-Signature: N/A
X-Virus-Scanned: amavisd-new at 
Received: from omta2.brinkster.com ([127.0.0.1])
	by localhost (omta2.brinkster.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbTdGw-2bLcK; Tue, 15 May 2012 07:51:25 -0700 (MST)
Received: from mta5.brinkster.com (unknown [65.182.109.84])
	by omta2.brinkster.com (Postfix) with ESMTPS id 8D4F31C19F03;
	Tue, 15 May 2012 07:51:25 -0700 (MST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mta5.brinkster.com (Postfix) with ESMTP id B3718284644;
	Tue, 15 May 2012 10:51:23 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mta5.brinkster.com
Received: from mta5.brinkster.com ([127.0.0.1])
	by localhost (mta5.brinkster.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H875-1bsnUmC; Tue, 15 May 2012 10:51:22 -0400 (EDT)
Received: from MareImbrium (cpc1-bath5-2-0-cust122.aztw.cable.virginmedia.com
	[77.99.62.123]) (Authenticated sender: John.Willis@Distant-earth.com)
	by mta5.brinkster.com (Postfix) with ESMTPA id D991F2C2A15;
	Tue, 15 May 2012 10:51:21 -0400 (EDT)
From: "John Willis" <John.Willis@Distant-earth.com>
To: "'Tomas Frydrych'" <tf+lists.yocto@r-finger.com>, <yocto@yoctoproject.org>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com>
In-Reply-To: <4FB21EBC.1000106@r-finger.com>
Date: Tue, 15 May 2012 15:51:20 +0100
Message-ID: <025701cd32aa$31600d60$94202820$@Distant-earth.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
thread-index: AQJnJZGXbdhFACSTLxopVN3R29NV+AJqHPLflYO0guA=
Subject: Re: Raspberry Pi [was Re: Kernel modules fail to compile for ARM]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 May 2012 14:51:27 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

Hi Tomas,

> On 14/05/12 19:52, Chris Tapp wrote:
> > I'm trying to put a BSP together for an ARM system (Raspberry Pi,
> ARM1176JZF-S CPU).
>=20
> I got the feeling that there might be multiple OE/RPI efforts going on =
at the
> same time unaware of each other, e.g., I noticed this meta-raspberrypi =
layer
> on github that seems to be well on the way,
> https://github.com/djwillis/meta-raspberrypi ... perhaps getting =
various
> folk interested in this together would be beneficial.

If anyone wants to pitch in with patches that would be great. There is =
also a little more information on the layer from a post of mine a few =
weeks back - http://blogs.distant-earth.com/wp/?p=3D377.

I tend to build my layers using Angstrom as the distro (in fact it is =
now referenced in the Angstrom setup scripts) or straight OE-core and no =
distro so I can't claim this layer is well tested on Yocto but there are =
very few, if any, reasons it will not work well. Pull requests are great =
;).

There are a few things missing at the moment, mainly the binary GPU libs =
but as the proprietary licence has now been sorted for the blobs I'll =
push the recipe in the next few days.=20

Other than that it works pretty well on both variants of the hardware =
but there is always room for improvement.

Regards,

John



