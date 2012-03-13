Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9CD5E0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 11:55:05 -0700 (PDT)
Received: from mail184-ch1-R.bigfish.com (10.43.68.241) by
	CH1EHSOBE009.bigfish.com (10.43.70.59) with Microsoft SMTP Server id
	14.1.225.23; Tue, 13 Mar 2012 18:55:05 +0000
Received: from mail184-ch1 (localhost [127.0.0.1])	by
	mail184-ch1-R.bigfish.com (Postfix) with ESMTP id E3E694E016D;
	Tue, 13 Mar 2012 18:55:05 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371I98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail184-ch1 (localhost.localdomain [127.0.0.1]) by mail184-ch1
	(MessageSwitch) id 133166490360746_8683;
	Tue, 13 Mar 2012 18:55:03 +0000 (UTC)
Received: from CH1EHSMHS018.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.247])	by mail184-ch1.bigfish.com (Postfix) with ESMTP id
	0A5C440048;	Tue, 13 Mar 2012 18:55:03 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS018.bigfish.com
	(10.43.70.18) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 13 Mar 2012 18:55:01 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Tue, 13 Mar 2012 13:55:00 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Liu, Song" <song.liu@intel.com>, Mark Hatle <mark.hatle@windriver.com>,
	"Hudson, Sean" <Sean_Hudson@mentor.com>
Thread-Topic: [yocto] Minutes: Yocto Project Technical Team Meeting -
	Tuesday, March 13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US &
	Canada).
Thread-Index: AQHNAUrKwNh+fz6ubUqyoXI4z48pEQ==
Date: Tue, 13 Mar 2012 18:54:59 +0000
Message-ID: <CAEsOVNe9fHCf3h=yNtu0ULBBR6PMcQQz7ZcSfLFuFbuWuhaksg@mail.gmail.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A3D0A15D2@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A3D0A15D2@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 13 Mar 2012 18:55:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <C0E71AC927278040912C9B209191D558@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 13, 2012 at 1:25 PM, Liu, Song <song.liu@intel.com> wrote:
> * Opens - 10 min
> =A0- Mark: Reusing sstate cache, missing a testcase: found a bug in 1.1, =
found a new bug in 1.2, try to use the st cache, the compiler will try to u=
se compiler from previous compiler.
> =A0 =A0Sean: Mentor are testing sstate cache. There is at least one issue=
 identified. Sean to take a look at what's going on, make sure we are augme=
nting what's done. We should see more mentor involvement in upstream.
> =A0 =A0RP: Many sstate issues are known. There are warning messages the t=
eam can help to fix and that should improve sstate stability.

Are any of these sstate cache issues specific to 1.1.1 or new issues?
(Just trying to track fixes to 1.1.1)

-M=


