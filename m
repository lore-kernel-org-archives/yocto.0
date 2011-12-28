Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE004.bigfish.com (am1ehsobe004.messaging.microsoft.com
	[213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD80E00744
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2011 16:50:54 -0800 (PST)
Received: from mail88-am1-R.bigfish.com (10.3.201.247) by
	AM1EHSOBE004.bigfish.com (10.3.204.24) with Microsoft SMTP Server id
	14.1.225.23; Wed, 28 Dec 2011 00:50:33 +0000
Received: from mail88-am1 (localhost [127.0.0.1])	by mail88-am1-R.bigfish.com
	(Postfix) with ESMTP id E3A7870021A;
	Wed, 28 Dec 2011 00:48:53 +0000 (UTC)
X-SpamScore: -4
X-BigFish: VS-4(zz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9n)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail88-am1 (localhost.localdomain [127.0.0.1]) by mail88-am1
	(MessageSwitch) id 1325033333851934_30940;
	Wed, 28 Dec 2011 00:48:53 +0000 (UTC)
Received: from AM1EHSMHS015.bigfish.com (unknown [10.3.201.242])	by
	mail88-am1.bigfish.com (Postfix) with ESMTP id CC8916C0042;
	Wed, 28 Dec 2011 00:48:53 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS015.bigfish.com
	(10.3.207.153) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 28 Dec 2011 00:50:32 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Tue, 27 Dec 2011 18:50:51 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Chris Larson <kergoth@gmail.com>
Thread-Topic: [yocto] [RFC PATCH 0/9] New distribution definition for poky-tiny
Thread-Index: AQHMxPq+c9PS7kenb0qgtXksHmVshw==
Date: Wed, 28 Dec 2011 00:50:50 +0000
Message-ID: <CAEsOVNeUwsNPrFc5Q-cQquc2mfJTqCL9Sa6KyjEms9HhwsUHaw@mail.gmail.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<CABcZANmbKdn+dzftgQwNRN1ExYEUkhO906LJG8Pw0Cu+U0cRYg@mail.gmail.com>
	<4EF204E8.8020009@linux.intel.com>
	<CABcZANmBvROnETAu6Zvvmxpbxc9NowwiRiiprY+pxwaAjf+mOQ@mail.gmail.com>
In-Reply-To: <CABcZANmBvROnETAu6Zvvmxpbxc9NowwiRiiprY+pxwaAjf+mOQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [RFC PATCH 0/9] New distribution definition for poky-tiny
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
X-List-Received-Date: Wed, 28 Dec 2011 00:50:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D3CE1AD9F0CB9E42BAEA57DCDC6596AA@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2011 at 11:33 AM, Chris Larson <kergoth@gmail.com> wrote:
>>> problem with the :=3D + oe_filter_out method is that it forces an
>>> immediate variable expansion right there, which can cause problems in
>>> some cases.
>>
>> Right. That and using it in a .conf file results in parsing errors. :-)
>
> :=3D is *technically* perfectly valid in a .conf file, as is
> oe_filter_out, but it's so sensitive to location as to be of limited
> usefulness. All the variables used by the var you're expanding would
> have to have been defined already as of that point in the config.

Also using :=3D is bad for sstate-cache has it expands variables
immediately and often these include references to paths/machines/etc
that will change for each build. For me so far, using :=3D also means
removing the variable in question from all dependencies....

-M=


