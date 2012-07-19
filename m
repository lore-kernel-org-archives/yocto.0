Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75ED4E0070B
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 21:54:16 -0700 (PDT)
Received: from mail113-am1-R.bigfish.com (10.3.201.247) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.23; Thu, 19 Jul 2012 04:54:15 +0000
Received: from mail113-am1 (localhost [127.0.0.1])	by
	mail113-am1-R.bigfish.com (Postfix) with ESMTP id BA8D94604D6	for
	<yocto@yoctoproject.org>; Thu, 19 Jul 2012 04:54:14 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I1432I14ffIzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail113-am1 (localhost.localdomain [127.0.0.1]) by mail113-am1
	(MessageSwitch) id 1342673652922436_13695;
	Thu, 19 Jul 2012 04:54:12 +0000 (UTC)
Received: from AM1EHSMHS002.bigfish.com (unknown [10.3.201.230])	by
	mail113-am1.bigfish.com (Postfix) with ESMTP id DE06A3C0048;
	Thu, 19 Jul 2012 04:54:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS002.bigfish.com
	(10.3.207.102) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 19 Jul 2012 04:54:12 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Wed, 18 Jul 2012 23:54:07 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Tim Bird <tim.bird@am.sony.com>
Thread-Topic: [yocto] Manually fetching files (and disabling the
	sanity-checker)
Thread-Index: AQHNZWqH7o738cubhEOCLfJPSgmSDA==
Date: Thu, 19 Jul 2012 04:54:06 +0000
Message-ID: <CAEsOVNdAK9tuUhtfZx9fWbcDk+uXg9bnKuj1NjFgXz3bK=jrjA@mail.gmail.com>
References: <50074BA9.5050506@am.sony.com>
In-Reply-To: <50074BA9.5050506@am.sony.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Manually fetching files (and disabling the sanity-checker)
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
X-List-Received-Date: Thu, 19 Jul 2012 04:54:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A67EA951DFB8724880EE0521AAFDD649@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 18, 2012 at 6:50 PM, Tim Bird <tim.bird@am.sony.com> wrote:
> Hi all,
>
> I've given up trying to work around Sony's firewall.  After repeated atte=
mpts
> I still can't get any 'git:'-based URLS to work through the firewall.
>
> I vaguely recall the last time I worked on this (about 5.0 timeframe) the=
re
> was a mirror where tarballs could be downloaded, if the git fetch didn't =
work.
>
> Is this mirror still available?  If not, is there any way to disable
> the sanity-checker, and have bitbake tell me what repositories it's
> looking for, so I can manually construct a local mirror for yoctoproject
> to work off of?
>
> Is there any way to extract the tarballs from a build appliance image?
>
> Any advice or pointers would be appreciated.

Another less fun option is to create a siteconfig of some sort and
start overriding git SRC_URI...

SRC_URI_pn-linux-yocto =3D "proto://some/internal/mirror/you/setup.git"

This might be useful for stuff that's not yet mirrored on yp.org

-M=


