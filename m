Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe004.messaging.microsoft.com [216.32.181.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42A7EE01363
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 22:16:34 -0700 (PDT)
Received: from mail36-ch1-R.bigfish.com (10.43.68.247) by
	CH1EHSOBE010.bigfish.com (10.43.70.60) with Microsoft SMTP Server id
	14.1.225.22; Thu, 3 Nov 2011 05:16:17 +0000
Received: from mail36-ch1 (localhost.localdomain [127.0.0.1])	by
	mail36-ch1-R.bigfish.com (Postfix) with ESMTP id B78C1139037B;
	Thu,  3 Nov 2011 05:16:26 +0000 (UTC)
X-SpamScore: -10
X-BigFish: VS-10(zz9371K1454I1432N98dK853kzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail36-ch1 (localhost.localdomain [127.0.0.1]) by mail36-ch1
	(MessageSwitch) id 1320297386649080_3959;
	Thu,  3 Nov 2011 05:16:26 +0000 (UTC)
Received: from CH1EHSMHS024.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.252])	by mail36-ch1.bigfish.com (Postfix) with ESMTP id
	99EEA10E0051;	Thu,  3 Nov 2011 05:16:26 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS024.bigfish.com
	(10.43.70.24) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 3 Nov 2011 05:16:16 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0339.002; Thu, 3 Nov 2011 00:16:31 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] Help diagnosing a build failure involving ncurses,
	gettext, and eglibc
Thread-Index: AQHMmee+GJd5pEosu0uYnewojtZoZQ==
Date: Thu, 3 Nov 2011 05:16:30 +0000
Message-ID: <CAEsOVNcRQGEszBiG=KhoaWeeH9ynX4xB+YVMsT++tvgh6PAcjA@mail.gmail.com>
References: <4EB1E5F1.3050106@linux.intel.com>
	<4EB222D0.6050301@linux.intel.com>
In-Reply-To: <4EB222D0.6050301@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Help diagnosing a build failure involving ncurses, gettext, and eglibc
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
X-List-Received-Date: Thu, 03 Nov 2011 05:16:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8E955E38B794E841BAD73F7D1292963C@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 3, 2011 at 12:12 AM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> I came up with the following to ensure I have a log of every bitbake
> command I run along with some useful stats. Feel free to use it or flame =
it:
>
>
> #!/bin/bash
> TIMESTAMP=3D$(date -u "+%Y%m%d%H%M%S")
> LOG=3D$(mktemp --suffix=3D".log" bb-$TIMESTAMP-XXX)
> if [ -z "$LOG" ]; then
> =A0 =A0 =A0 =A0echo "ERROR: failed to create log file"
> =A0 =A0 =A0 =A0exit 1
> fi
>
> (
> =A0 =A0 =A0 =A0echo "Start: $TIMESTAMP"
> =A0 =A0 =A0 =A0echo "=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D"
> =A0 =A0 =A0 =A0/usr/bin/time 2>&1 -v bitbake $@
> =A0 =A0 =A0 =A0echo "=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D"
> =A0 =A0 =A0 =A0echo "End: $(date -u '+%Y%m%d%H%M%S')"
> ) | tee $LOG
>
> echo "Logfile: $LOG"

It would be nice if we had this as a selectable option in the bitbake
wrapper somehow and it saved off logs to tmp/bitbake/logs/ or
something appropriate.

-M=


