Return-Path: <meenakumari.s@hcl.com>
Received: from GWS06.hcl.com (gws06.avitas.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AC54E00C8B
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 23:59:39 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,784,1389724200"; d="scan'208";a="64906105"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 03 Apr 2014 12:25:02 +0530
Received: from NDA-HCLT-CSHT04.HCLT.CORP.HCL.IN (10.98.132.29) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 3 Apr 2014 12:29:06 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT04.HCLT.CORP.HCL.IN ([10.98.132.29]) with mapi id
	14.03.0123.003; Thu, 3 Apr 2014 12:29:07 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkP///EyAgAZ3sHCAAV3GAIAAirrQgAEjGrc=
Date: Thu, 3 Apr 2014 06:59:06 +0000
Message-ID: <E4938C0D959B3445943720B88F07213415615920@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415613B44@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LZt8JA25fpeCxbkdMH44rcNtKKE8vPvhrnPN8iLMcJYAA@mail.gmail.com>,
	<97272D6808818244BD88BD72F19D658B03CAC1EB@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <97272D6808818244BD88BD72F19D658B03CAC1EB@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Apr 2014 06:59:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We have checked avi, mp4, 3gp, ogv and many other extensions with gst-launc=
h-0.10 playbin, all are playing properly except 1080p-mp4; its playing kind=
 of slow-motion taking cpu usage >60%. Log reveals, lots of buffer drop in =
sink side.

gst-launch-0.10 playbin2 + mp4/avi is failing with following error,

libva: VA-API version 0.32.0
libva: va_getDriverName() returns 0
libva: Trying to open /usr/lib/dri/i965_drv_video.so
libva: Found init function __vaDriverInit_0_32
libva error: /usr/lib/dri/i965_drv_video.so init failed
libva: va_openDriver() returns -1
vaInitialize failed with error code -1 (unknown libva error),exit

Based on the log, it's clear that playbin is using soft-decoder incase hw-d=
ecoder fails, hence taking high cpu usage, however playbin2 is only taking =
hw-decoder.


Thanks and Regards
Meena

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]
Sent: Wednesday, April 02, 2014 4:20 PM
To: Meenakumari Shedole
Cc: yocto@yoctoproject.org; Dipesh Karmakar
Subject: Re: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback

On 1 April 2014 10:05, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> I have used libva-intel-driver-1.2.0 as a part of meta-intel on Dora as t=
he recipes provided by Intel. I can attach bb file also if its needed.
> Have build Intel va source manually and now we can able to sink with vaap=
isink in its own window.
> We are not able to use vaapisink with AVI/3GP files, asking for some miss=
ing video/x-surface.
>
> I have checked vaapisink source, it seems its supporting overlay on forei=
gn X window.
> https://gitorious.org/vaapi/gstreamer-vaapi/source/643d35e87a67376af9c
> d89cd868666368b105ac3:gst/vaapisink/gstvaapisink.c
> static gboolean gst_vaapisink_implements_interface_supported();
> static gboolean gst_vaapisink_ensure_window_xid();

The most important thing to do here is to do testing with gst-launch to rem=
ove your application causing problems.  Embedding pipelines (especially usi=
ng vaapi) into other windows isn't trivial and its
possible that your application is causing the problem.    If
"gst-launch playbin2" works fine for all of your files then your applicatio=
n is causing the problem.

Ross


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------


