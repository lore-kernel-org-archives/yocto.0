Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by mx1.pokylinux.org (Postfix) with ESMTP id E89CD4C8009D
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 11:32:22 -0500 (CDT)
Received: from mail152-ch1-R.bigfish.com (216.32.181.172) by
	CH1EHSOBE008.bigfish.com (10.43.70.58) with Microsoft SMTP Server id
	14.1.225.22; Thu, 21 Jul 2011 16:32:22 +0000
Received: from mail152-ch1 (localhost.localdomain [127.0.0.1])	by
	mail152-ch1-R.bigfish.com (Postfix) with ESMTP id 0759B4B8334;
	Thu, 21 Jul 2011 16:32:22 +0000 (UTC)
X-SpamScore: -8
X-BigFish: VS-8(zz9371M98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail152-ch1 (localhost.localdomain [127.0.0.1]) by mail152-ch1
	(MessageSwitch) id 1311265941956683_4037;
	Thu, 21 Jul 2011 16:32:21 +0000 (UTC)
Received: from CH1EHSMHS031.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.248])	by mail152-ch1.bigfish.com (Postfix) with ESMTP id
	E47B0176004B;	Thu, 21 Jul 2011 16:32:21 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS031.bigfish.com
	(10.43.70.31) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 21 Jul 2011 16:32:18 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0289.008; Thu, 21 Jul 2011 11:32:17 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Scott Garman <scott.a.garman@intel.com>
Thread-Topic: [yocto] best cfg for building all of yocto?
Thread-Index: AQHMR8PBv8A2+wfLyUetBnRveXVodw==
Date: Thu, 21 Jul 2011 16:32:17 +0000
Message-ID: <CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
	<4E2829B1.7080506@intel.com>
In-Reply-To: <4E2829B1.7080506@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best cfg for building all of yocto?
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
X-List-Received-Date: Thu, 21 Jul 2011 16:32:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <153CF3A13176B24B9DC96DD73C8BD20D@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 21, 2011 at 8:29 AM, Scott Garman <scott.a.garman@intel.com> wr=
ote:
> bitbake world should build all of the available packages that aren't
> explicitly excluded due to machine incompatibilities. It doesn't generate=
 a
> final image though, just all of the output packages.

Is there an easy way to remove a specific package from being built
with running bitbake world? There are unmet dependencies:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'libmad'
ERROR: Required build target 'libomxil' has no buildable providers.
Missing or unbuildable dependency chain was: ['libomxil', 'libmad']

-M=


