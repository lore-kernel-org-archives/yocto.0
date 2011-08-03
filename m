Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE009.bigfish.com (tx2ehsobe004.messaging.microsoft.com
	[65.55.88.14])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A41F4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 15:25:37 -0500 (CDT)
Received: from mail163-tx2-R.bigfish.com (10.9.14.240) by
	TX2EHSOBE009.bigfish.com (10.9.40.29) with Microsoft SMTP Server id
	14.1.225.22; Wed, 3 Aug 2011 20:25:36 +0000
Received: from mail163-tx2 (localhost.localdomain [127.0.0.1])	by
	mail163-tx2-R.bigfish.com (Postfix) with ESMTP id AD17816E0443;
	Wed,  3 Aug 2011 20:25:36 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail163-tx2 (localhost.localdomain [127.0.0.1]) by mail163-tx2
	(MessageSwitch) id 1312403136607941_3288;
	Wed,  3 Aug 2011 20:25:36 +0000 (UTC)
Received: from TX2EHSMHS027.bigfish.com (unknown [10.9.14.251])	by
	mail163-tx2.bigfish.com (Postfix) with ESMTP id 7980417C8046;
	Wed,  3 Aug 2011 20:25:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS027.bigfish.com
	(10.9.99.127) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 3 Aug 2011 20:25:35 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0289.008; Wed, 3 Aug 2011 15:25:33 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Thread-Topic: [OE-core] [yocto] [PATCH] Update intltool to set perl shebang
	correctly for installed tools
Thread-Index: AQHMUhbmEsHhPnJ0UkSga/RIyQnjVZUL3/2AgAAGiwA=
Date: Wed, 3 Aug 2011 20:25:32 +0000
Message-ID: <CAEsOVNce5iFEm8tyFoYmeiy750zgnsX=D3txSAt4z=2MmsaMdA@mail.gmail.com>
References: <1312389206-15422-1-git-send-email-msm@freescale.com>
	<4E397AE8.5020707@mlbassoc.com>
	<CAEsOVNf5eZ6PLkqw_Ya8XEEzr1uQprGXOeqc4aS7BCcja7Bsmw@mail.gmail.com>
	<4E39A92B.5040207@mlbassoc.com>
In-Reply-To: <4E39A92B.5040207@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [50.57.127.49]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@openembedded.org" <openembedded-core@openembedded.org>
Subject: Re: [OE-core] [PATCH] Update intltool to set perl shebang correctly for installed tools
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
X-List-Received-Date: Wed, 03 Aug 2011 20:25:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <59E4918F8846E24CA9C4F628CFB6E033@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 3, 2011 at 3:01 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> What I don't see is the "why" - why does defining PERL vs
> PERL_virtclass-native
> have this effect?

That's an I don't know.

-M=


