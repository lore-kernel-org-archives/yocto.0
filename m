Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE010.bigfish.com (va3ehsobe010.messaging.microsoft.com
	[216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 985E5E00599
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 20:06:31 -0800 (PST)
Received: from mail48-va3-R.bigfish.com (10.7.14.246) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.22; Thu, 19 Jan 2012 04:06:27 +0000
Received: from mail48-va3 (localhost [127.0.0.1])	by mail48-va3-R.bigfish.com
	(Postfix) with ESMTP id 00F5E3C020F;
	Thu, 19 Jan 2012 04:06:27 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371I1102K98dK853kzz1202hzz8275bhz2dhc1bhc31hc1ah2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail48-va3 (localhost.localdomain [127.0.0.1]) by mail48-va3
	(MessageSwitch) id 1326945984819089_7053;
	Thu, 19 Jan 2012 04:06:24 +0000 (UTC)
Received: from VA3EHSMHS026.bigfish.com (unknown [10.7.14.238])	by
	mail48-va3.bigfish.com (Postfix) with ESMTP id C4B856C0057;
	Thu, 19 Jan 2012 04:06:24 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS026.bigfish.com
	(10.7.99.36) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 19 Jan 2012 04:06:24 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Wed, 18 Jan 2012 22:06:13 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Yang, Fei" <fei.yang@intel.com>
Thread-Topic: [yocto] Making machine config a build dependency for
	core-image recipes
Thread-Index: AQHM1l+uQm6wgJtcFkadylYQ2Nlvxg==
Date: Thu, 19 Jan 2012 04:06:13 +0000
Message-ID: <CAEsOVNezSj6UaK6=Y7yKPnjn7duOhcXpKA-YEo5PiLr5AhjGOg@mail.gmail.com>
References: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making machine config a build dependency for core-image recipes
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
X-List-Received-Date: Thu, 19 Jan 2012 04:06:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <29F2B6192F2F9F4BBCE811DB822BFCA2@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 18, 2012 at 4:04 PM, Yang, Fei <fei.yang@intel.com> wrote:
> I encountered a build issue when trying to generate /etc/inittab.
> I have a meta-xxx/conf/machine/conf file which contains serial console in=
formation such as SERIAL_CONSOLE =3D "115200 ttyXYZ" or "115200 ttyS0" by d=
efault.
> When I update that conf file and make an incremental build, the /etc/init=
tab doesn't get updated, I finally have to remove all the binaries and forc=
e a complete re-build to generate correct /etc/inittab with updated serial =
console settings, which take more than an hour to finish.
> How do I create a dependency so that when I update my machine/conf file, =
an incremental build would take care of the change and re-generate the file=
s in root FS accordingly? If that is impossible for now, can I just delete =
one or a few task binaries to trigger a rebuild on /etc/inittab? This would=
 greatly reduce my build time.

You could try: 'bitbake sysvinit-inittab -c clean'.

Seems like there should be a better way to say sysvinit-inittab
depends on the machine/conf.

-M=


