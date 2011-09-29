Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE004.bigfish.com (db3ehsobe004.messaging.microsoft.com
	[213.199.154.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0093E004CF
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:58:47 -0700 (PDT)
Received: from mail110-db3-R.bigfish.com (10.3.81.250) by
	DB3EHSOBE004.bigfish.com (10.3.84.24) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:58:46 +0000
Received: from mail110-db3 (localhost.localdomain [127.0.0.1])	by
	mail110-db3-R.bigfish.com (Postfix) with ESMTP id 1BC738C84BA	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:58:46 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail110-db3 (localhost.localdomain [127.0.0.1]) by mail110-db3
	(MessageSwitch) id 1317275906897090_2654;
	Thu, 29 Sep 2011 05:58:26 +0000 (UTC)
Received: from DB3EHSMHS017.bigfish.com (unknown [10.3.81.241])	by
	mail110-db3.bigfish.com (Postfix) with ESMTP id CF92210C8052	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:58:26 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS017.bigfish.com
	(10.3.87.117) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:58:26 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.007; Thu, 29 Sep 2011 00:58:25 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 5/7] scripts/oe-buildenv-internal: Add
	SOCKS5_{USER, PASSWD} to BB_ENV_EXTRAWHITE
Thread-Index: AQHMfmzMuvbB4gwjIEy/ur9MsgpFrQ==
Date: Thu, 29 Sep 2011 05:58:24 +0000
Message-ID: <CAEsOVNe+8gAVDPQ3qrTOYmiApSa4EY7odqQTdnhQ94qF2cZv8g@mail.gmail.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
	<1317275552-19908-5-git-send-email-msm@freescale.com>
In-Reply-To: <1317275552-19908-5-git-send-email-msm@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Re: [PATCH 5/7] scripts/oe-buildenv-internal: Add SOCKS5_{USER, PASSWD} to BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Thu, 29 Sep 2011 05:58:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <867F8BA747FD1445A9D038B36CB59641@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 29, 2011 at 12:52 AM, Matthew McClintock <msm@freescale.com> wr=
ote:
> From: Kumar Gala <galak@kernel.crashing.org>
>
> If a SOCKS5 gateway is needed for a proxy access like git it might also
> require authentication to the proxy via a password and username. =A0Addin=
g
> SOCKS5_USER & SOCKS5_PASSWD to BB_ENV_EXTRAWHITE allow for automation
> of the authentication request to occur when something like a git fetch
> is going through the proxy.
>
> Also, add several require git variables to be exported to the fetcher

I did not realize this when I just sent, but should this be two
separate patches with one going to bitbake-devel?

-M=


