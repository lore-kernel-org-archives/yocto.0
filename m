Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE010.bigfish.com (va3ehsobe004.messaging.microsoft.com
	[216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 524ABE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 13:43:35 -0800 (PST)
Received: from mail131-va3-R.bigfish.com (10.7.14.240) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.22; Thu, 16 Feb 2012 21:43:34 +0000
Received: from mail131-va3 (localhost [127.0.0.1])	by
	mail131-va3-R.bigfish.com (Postfix) with ESMTP id 563224C019B;
	Thu, 16 Feb 2012 21:43:34 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371I98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail131-va3 (localhost.localdomain [127.0.0.1]) by mail131-va3
	(MessageSwitch) id 1329428612956079_13736;
	Thu, 16 Feb 2012 21:43:32 +0000 (UTC)
Received: from VA3EHSMHS005.bigfish.com (unknown [10.7.14.238])	by
	mail131-va3.bigfish.com (Postfix) with ESMTP id DA45918004D;
	Thu, 16 Feb 2012 21:43:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS005.bigfish.com
	(10.7.99.15) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 16 Feb 2012 21:43:32 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Thu, 16 Feb 2012 15:43:31 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Hollis Blanchard <hollis_blanchard@mentor.com>
Thread-Topic: [yocto] trouble using a local kernel repo
Thread-Index: AQHM7PEi1zPgH4JkF0iwZMq/EertI5ZAb9OAgAAC0oA=
Date: Thu, 16 Feb 2012 21:43:30 +0000
Message-ID: <CAEsOVNeLEv_C7JY_a7aOW783wVv+JRH=eGikqvpRp4SfcOpg5A@mail.gmail.com>
References: <4F3D6431.70505@mentor.com>
	<CAEsOVNfdiouZJ=qvN_GLBoLtJojHvdnXzVUoL674KN1LnNudYQ@mail.gmail.com>
	<4F3D760F.6020105@mentor.com>
In-Reply-To: <4F3D760F.6020105@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 21:43:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7F4933FB4EAE1E4ABCE996AC2993C574@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2012 at 9:33 PM, Hollis Blanchard
<hollis_blanchard@mentor.com> wrote:
> Yeah, I've looked through there, but where should stdout (i.e. those echo
> commands) be appearing?

I'd guess it's failing before that... you can add your own echo's.
Also, this should be in that log file:
tmp/work/${ARCH}/linux-yocto-vZ-rX/temp/log.do_validate.${PID}

-M=


