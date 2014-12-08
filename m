Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B98FBE0092B; Mon,  8 Dec 2014 00:32:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935D2E00916
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 00:32:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 3DBE610122;
	Mon,  8 Dec 2014 09:32:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iSwxajBfWxt9; Mon,  8 Dec 2014 09:32:13 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Mon,  8 Dec 2014 09:32:13 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id EC6BA2716A;
	Mon,  8 Dec 2014 09:32:12 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Mon, 8 Dec 2014 09:32:12 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <gary@mlbassoc.com>, <yocto@yoctoproject.org>
Date: Mon, 8 Dec 2014 09:32:11 +0100
Thread-Topic: [yocto] u-boot precompiled ?
Thread-Index: AdAQlviW/2JKrXj/Q/66+hSzTw9QjwCKZ1Tw
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A76@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A72@MSSRVS5.atlas.de>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A73@MSSRVS5.atlas.de>
	<4B07ADD556F70043925DA2E9C5D4346D2FDB562272@MSXBEBVT12.planar.net>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A75@MSSRVS5.atlas.de>
	<5481BF8F.4030403@mlbassoc.com>
In-Reply-To: <5481BF8F.4030403@mlbassoc.com>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: Re: u-boot precompiled ?
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
X-List-Received-Date: Mon, 08 Dec 2014 08:32:29 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> -----Urspr=FCngliche Nachricht-----
> Von: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] Im Auftrag von Gary Thomas
> Gesendet: Freitag, 5. Dezember 2014 15:22
> An: yocto@yoctoproject.org
> Betreff: Re: [yocto] u-boot precompiled ?
>=20
> On 2014-12-05 05:48, Matthias.Heise@atlas-elektronik.com wrote:
> > Hello Matt,
> >
> > thanks very much for your reply, I was able to create a simple patch
> > changing an u-boot setting as test and "bbappended" it. I just didn't
> believe before that the various u-boot settings are "hard-coded" but they
> obviously are in the "<board>.h", so patching it seems to be the only way=
 for
> changing settings from within yocto, right?
>=20
> What U-Boot settings are you asking about?

Starting with setting the boot-delay, via disabling the console, to setting=
 up nfs- or other network-boot with it's parameters , or other boot sources


