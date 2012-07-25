Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe002.messaging.microsoft.com [213.199.154.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEC00E01304
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 13:51:47 -0700 (PDT)
Received: from mail86-am1-R.bigfish.com (10.3.201.254) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Wed, 25 Jul 2012 20:51:46 +0000
Received: from mail86-am1 (localhost [127.0.0.1])	by mail86-am1-R.bigfish.com
	(Postfix) with ESMTP id 7C6CBC0105;
	Wed, 25 Jul 2012 20:51:46 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -8
X-BigFish: VS-8(zz98dI9371I542M1432I4015Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail86-am1 (localhost.localdomain [127.0.0.1]) by mail86-am1
	(MessageSwitch) id 1343249504678317_31674;
	Wed, 25 Jul 2012 20:51:44 +0000 (UTC)
Received: from AM1EHSMHS008.bigfish.com (unknown [10.3.201.252])	by
	mail86-am1.bigfish.com (Postfix) with ESMTP id 9A49510005D;
	Wed, 25 Jul 2012 20:51:44 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS008.bigfish.com
	(10.3.207.108) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 25 Jul 2012 20:51:44 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Wed, 25 Jul 2012 15:51:38 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Liu, Song" <song.liu@intel.com>
Thread-Topic: [yocto] Minutes: Yocto Project Technical Team Meeting -
	Tuesday, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US &
	Canada).
Thread-Index: AQHNafYfAEIm2IItLUGewDgaA5fLWJc5bjsAgAFgIgA=
Date: Wed, 25 Jul 2012 20:51:37 +0000
Message-ID: <CAEsOVNfeq61YK2v14OC5pGEDQv4KXzC0Xfaz4wQsx5cm-DZH6Q@mail.gmail.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A484D0C2F@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNfabpUDqQakX23OTh51bYmm4H_8n6rnKaa1-gd0ZD-O0g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A484D0D25@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A484D0D25@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 25 Jul 2012 20:51:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <3711F2E3595BBE498CFB4A4E7C744FD9@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 24, 2012 at 6:50 PM, Liu, Song <song.liu@intel.com> wrote:
> Hi Matthew,
>
> We have tested these distros for the release:
>
> Fedora 17, OpenSuse 12.1 and Ubuntu 12.04
>
> You can also see it here in the full test report: https://wiki.yoctoproje=
ct.org/wiki/Yocto_1.1.2_Test_Report

Song,

I don't think this release builds on Fedora 17... I think testing was
using sstate-cache and not actually building the release on this
distro.

-M

>
> Thanks,
> Song
>
> -----Original Message-----
> From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]
> Sent: Tuesday, July 24, 2012 4:43 PM
> To: Liu, Song
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Minutes: Yocto Project Technical Team Meeting - Tues=
day, July 24, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
>
> On Tue, Jul 24, 2012 at 6:14 PM, Liu, Song <song.liu@intel.com> wrote:
>>   - Micahel: working on 1.1.2, working on releasing that, should be out =
today. Log aggregation. Working on optimizing backups. Cutting out what we =
don't need. Improve efficiency. Oscon, meet yocto team f2f, continue to pla=
n for the future upgrade rack to be able to use more electricity without pa=
ying more.
>
> I have more questions about what 1.1.2 was tested on.... sorry I have not=
 made these calls recently. But, what distro's was it tested against?
>
> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


