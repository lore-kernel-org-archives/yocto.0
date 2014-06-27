Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FCE9E00571; Thu, 26 Jun 2014 23:29:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx1.kistler.com (mx1.kistler.com [195.49.77.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DAC3E00282
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 23:28:56 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,558,1400018400"; d="scan'208";a="10950314"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	27 Jun 2014 08:28:55 +0200
Received: from mx1.kistler.com (unknown [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Fri, 27 Jun 2014 08:28:54 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.01,558,1400018400"; d="scan'208";a="10950313"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/AES128-SHA; 27 Jun 2014 08:28:54 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%16]) with mapi
	id 14.03.0181.006; Fri, 27 Jun 2014 08:28:53 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: =?iso-8859-2?B?J0x1a+G5IE5vdm90bv0n?= <lukas@dramiel.com>
Thread-Topic: [yocto] Create own image type
Thread-Index: Ac+QfbZ17lC5jli2QW6VwgWVCqsQv///6oSA//1EPtA=
Date: Fri, 27 Jun 2014 06:28:53 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E66886162DF3@kihagwinex01.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886162A9F@kihagwinex01.int.kistler.com>
	<CC238BE1-8835-4D0B-9A22-45CBC530F7EF@dramiel.com>
In-Reply-To: <CC238BE1-8835-4D0B-9A22-45CBC530F7EF@dramiel.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Create own image type
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
X-List-Received-Date: Fri, 27 Jun 2014 06:29:13 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi Lukas,
=20
> Hello,
>=20
> I can't directly help you with this, however I recommend taking a look at=
 meta-
> raspberrypi ( https://github.com/djwillis/meta-raspberrypi ) as it adds i=
t's own
> image type "rpi-sdimg".

Thanks for the hint. Was really useful. Managed to generate my image by usi=
ng the "rpi-sdimg" recipe as base.

BR

Isak
>=20
> Lukas
>=20
> On 25 Jun 2014, at 16:04, Isak Lichtenstein <Isak.Lichtenstein@kistler.co=
m> wrote:
>=20
> > Hi all,
> >
> > I'm trying to create my own image type. I thought that it would be enou=
gh to
> create a myImage.bbclass file implementing IMAGE_CMD_myImage and extendin=
g
> IMAGE_TYPES +=3D " myImage".
> >
> > But this isn't working and I didn't find anything in the manual.
> >
> > It this possible at all ( can't imagine that it isn't) ?
> >
> > Would appreciate any hint possible.
> >
> > Best regards
> >
> > Isak
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


