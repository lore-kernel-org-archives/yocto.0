Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2335E01341
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2011 14:13:54 -0700 (PDT)
Received: from mail138-ch1-R.bigfish.com (10.43.68.245) by
	CH1EHSOBE002.bigfish.com (10.43.70.52) with Microsoft SMTP Server id
	14.1.225.22; Fri, 21 Oct 2011 21:13:52 +0000
Received: from mail138-ch1 (localhost.localdomain [127.0.0.1])	by
	mail138-ch1-R.bigfish.com (Postfix) with ESMTP id E1F07D78329;
	Fri, 21 Oct 2011 21:13:51 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail138-ch1 (localhost.localdomain [127.0.0.1]) by mail138-ch1
	(MessageSwitch) id 1319231629765453_2727;
	Fri, 21 Oct 2011 21:13:49 +0000 (UTC)
Received: from CH1EHSMHS018.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.253])	by mail138-ch1.bigfish.com (Postfix) with ESMTP id
	B4DAF3C0046;	Fri, 21 Oct 2011 21:13:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS018.bigfish.com
	(10.43.70.18) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 21 Oct 2011 21:13:49 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Fri, 21 Oct 2011 16:13:49 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Yu, Ke" <ke.yu@intel.com>
Thread-Topic: [yocto] Proposed roadmap and design for Hob improvement
Thread-Index: AQHMkDZTpBw+KHCQZkuO0BR9k/nt2A==
Date: Fri, 21 Oct 2011 21:13:48 +0000
Message-ID: <CAEsOVNeCEA73vjHeaL8S4S7wxWgus3TZ5XSQr0i=5m8KOwJrvg@mail.gmail.com>
References: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Proposed roadmap and design for Hob improvement
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
X-List-Received-Date: Fri, 21 Oct 2011 21:13:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <6B3B16518DA64A4080A7C93CB91B6334@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 20, 2011 at 10:16 PM, Yu, Ke <ke.yu@intel.com> wrote:
> Hi,
>
> As the Yocto 1.2. plan is starting (https://wiki.yoctoproject.org/wiki/Yo=
cto_1.2_Features ), here I draft a proposal for the roadmap and design on H=
OB improvement task (http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D158=
8) . Please review. Any feedback is welcome.

Seems like with the build packages and build image steps separated you
could skip the build step completly for most packages if we ship or
host pre-built build packages

-M=


