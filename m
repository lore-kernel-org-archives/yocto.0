Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0A584C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 14:52:41 -0500 (CDT)
Received: from mail154-ch1-R.bigfish.com (216.32.181.172) by
	CH1EHSOBE002.bigfish.com (10.43.70.52) with Microsoft SMTP Server id
	14.1.225.22; Wed, 3 Aug 2011 19:52:41 +0000
Received: from mail154-ch1 (localhost.localdomain [127.0.0.1])	by
	mail154-ch1-R.bigfish.com (Postfix) with ESMTP id 79D0711F047A;
	Wed,  3 Aug 2011 19:52:41 +0000 (UTC)
X-SpamScore: -15
X-BigFish: VS-15(zz9371K936eK1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail154-ch1 (localhost.localdomain [127.0.0.1]) by mail154-ch1
	(MessageSwitch) id 1312401161400144_17300;
	Wed,  3 Aug 2011 19:52:41 +0000 (UTC)
Received: from CH1EHSMHS022.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.249])	by mail154-ch1.bigfish.com (Postfix) with ESMTP id
	58F3718D0053;	Wed,  3 Aug 2011 19:52:41 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS022.bigfish.com
	(10.43.70.22) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 3 Aug 2011 19:52:40 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0289.008; Wed, 3 Aug 2011 14:52:40 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] [PATCH] Update intltool to set perl shebang correctly
	for installed tools
Thread-Index: AQHMUhbmEsHhPnJ0UkSga/RIyQnjVQ==
Date: Wed, 3 Aug 2011 19:52:39 +0000
Message-ID: <CAEsOVNf5eZ6PLkqw_Ya8XEEzr1uQprGXOeqc4aS7BCcja7Bsmw@mail.gmail.com>
References: <1312389206-15422-1-git-send-email-msm@freescale.com>
	<4E397AE8.5020707@mlbassoc.com>
In-Reply-To: <4E397AE8.5020707@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [50.57.127.49]
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
X-List-Received-Date: Wed, 03 Aug 2011 19:52:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8B2AF865415F334FAF76F3194F984DA6@freescale.net>
Content-Transfer-Encoding: quoted-printable

(Sorry if this get sent twice...)

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
causes the intltool scripts to just fail usually during the configure
task. intltools recipe itself will
build and install fine. However, when a package that requires
intltool's is being configured they will all fail withing invoking
intltools.=


