Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE005.bigfish.com (db3ehsobe005.messaging.microsoft.com
	[213.199.154.143])
	by mx1.pokylinux.org (Postfix) with ESMTP id 108944C8009A
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 22:38:44 -0500 (CDT)
Received: from mail116-db3-R.bigfish.com (10.3.81.252) by
	DB3EHSOBE005.bigfish.com (10.3.84.25) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 03:38:43 +0000
Received: from mail116-db3 (localhost.localdomain [127.0.0.1])	by
	mail116-db3-R.bigfish.com (Postfix) with ESMTP id 0343311682A4;
	Thu,  4 Aug 2011 03:38:44 +0000 (UTC)
X-SpamScore: -15
X-BigFish: VS-15(zz9371K936eK1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail116-db3 (localhost.localdomain [127.0.0.1]) by mail116-db3
	(MessageSwitch) id 1312429123933489_25988;
	Thu,  4 Aug 2011 03:38:43 +0000 (UTC)
Received: from DB3EHSMHS017.bigfish.com (unknown [10.3.81.252])	by
	mail116-db3.bigfish.com (Postfix) with ESMTP id D763D69004F;
	Thu,  4 Aug 2011 03:38:43 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS017.bigfish.com
	(10.3.87.117) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 4 Aug 2011 03:38:43 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0289.008; Wed, 3 Aug 2011 22:38:43 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] [PATCH] Update intltool to set perl shebang correctly
	for installed tools
Thread-Index: AQHMUlgBDgLj7K1p4EyusORbGBS77w==
Date: Thu, 4 Aug 2011 03:38:42 +0000
Message-ID: <CAEsOVNdO-s97vJCAMh=PX4C4u6NGMQ2LaCd3y--gBKU10hfYvA@mail.gmail.com>
References: <1312389206-15422-1-git-send-email-msm@freescale.com>
	<4E397AE8.5020707@mlbassoc.com>
In-Reply-To: <4E397AE8.5020707@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@openembedded.org" <openembedded-core@openembedded.org>
Subject: Re: [PATCH] Update intltool to set perl shebang correctly for installed tools
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
X-List-Received-Date: Thu, 04 Aug 2011 03:38:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <25B872EB6240C74AA775C961F44A9DF6@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 3, 2011 at 11:44 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2011-08-03 10:33, Matthew McClintock wrote:
>>
>> Several installed scripts set the perl shebang that is too long
>> which can cause failures on certian older bash versions.
>
> How does the change below correspond to this comment? =A0It's not
> clear [at least to me] how changing that environment variable
> affects shebang constructs. =A0Can you give a more thorough explanation?

The scripts intltool-{update,etc} installed in sysroot end up having
*really* long shebangs without this change. On older distros this
causes the intltool scripts to just fail. intltools recipe itself will
build and install fine. However, when a package that requires
intltool's is being configured they will all fail withing invoking
intltools.

-M=


