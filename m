Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B63EE006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 09:08:37 -0700 (PDT)
Received: from mail101-ch1-R.bigfish.com (10.43.68.245) by
	CH1EHSOBE003.bigfish.com (10.43.70.53) with Microsoft SMTP Server id
	14.1.225.22; Tue, 25 Oct 2011 16:08:30 +0000
Received: from mail101-ch1 (localhost.localdomain [127.0.0.1])	by
	mail101-ch1-R.bigfish.com (Postfix) with ESMTP id 947BB182805F;
	Tue, 25 Oct 2011 16:08:32 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail101-ch1 (localhost.localdomain [127.0.0.1]) by mail101-ch1
	(MessageSwitch) id 1319558912525607_15014;
	Tue, 25 Oct 2011 16:08:32 +0000 (UTC)
Received: from CH1EHSMHS028.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.242])	by mail101-ch1.bigfish.com (Postfix) with ESMTP id
	3739CF4804C;	Tue, 25 Oct 2011 16:08:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS028.bigfish.com
	(10.43.70.28) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 25 Oct 2011 16:08:15 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0339.002; Tue, 25 Oct 2011 11:08:19 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Yu, Ke" <ke.yu@intel.com>
Thread-Topic: [yocto] Proposed roadmap and design for Hob improvement
Thread-Index: AQHMkDZTpBw+KHCQZkuO0BR9k/nt2JWKzEWwgALHpIA=
Date: Tue, 25 Oct 2011 16:08:19 +0000
Message-ID: <CAEsOVNdfJ_VRRNVRGNf3C7ziBdn4uaa3hNUk5hSAQnj9zimkYQ@mail.gmail.com>
References: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
	<CAEsOVNeCEA73vjHeaL8S4S7wxWgus3TZ5XSQr0i=5m8KOwJrvg@mail.gmail.com>
	<33AB447FBD802F4E932063B962385B3512DB2DBA09@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B3512DB2DBA09@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Tue, 25 Oct 2011 16:08:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <AAD5077ADA1D1B4D87DFA96D0E636666@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 23, 2011 at 10:12 PM, Yu, Ke <ke.yu@intel.com> wrote:
>> Seems like with the build packages and build image steps separated you c=
ould
>> skip the build step completly for most packages if we ship or host pre-b=
uilt build
>> packages
>>
>> -M
>
> Yes, current design supports this scenario, i.e. if some packages are alr=
eady pre-built, HOB will notice that and won't build them again.

It would be nice to be able to skip the package generation if the RPM
already exists somewhere. This could provide significant speedup above
what is already provided by sstate-cache. Although other issues might
need to be solved....

-M=


