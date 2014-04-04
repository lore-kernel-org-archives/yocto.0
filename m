Return-Path: <meenakumari.s@hcl.com>
Received: from GWS06.hcl.com (gws06.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0632EE00BE0
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 03:49:55 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,794,1389724200"; d="scan'208";a="65071813"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 04 Apr 2014 16:15:42 +0530
Received: from NDA-HCLT-CSHT06.HCLT.CORP.HCL.IN (10.98.132.31) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 4 Apr 2014 16:19:50 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT06.HCLT.CORP.HCL.IN ([10.98.132.31]) with mapi id
	14.03.0123.003; Fri, 4 Apr 2014 16:19:49 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "Beauchesne, Gwenole" <gwenole.beauchesne@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkP///EyAgAZ3sHCAAEJeQIABLiLAgAIeozCAAUvshQ==
Date: Fri, 4 Apr 2014 10:49:49 +0000
Message-ID: <E4938C0D959B3445943720B88F07213415615A67@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415614CE4@NDA-HCLT-MBS02.hclt.corp.hcl.in>,
	<278E3B7DD17B744DAAB36F6424581BA61AE98D6D@IRSMSX103.ger.corp.intel.com>
In-Reply-To: <278E3B7DD17B744DAAB36F6424581BA61AE98D6D@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
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
X-List-Received-Date: Fri, 04 Apr 2014 10:50:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for your resposne Gwenole.=0A=
=0A=
I downloaded updated gstreamer-vaapi-0.5.8 and GStreamer-0.10.36 with other=
 dependency plaugins and va deriver but after manually install no luck to e=
xecute vaapisink.=0A=
=0A=
can you please suggest, vaapi dependencies and their version to build.=0A=
=0A=
Regards=0A=
Meena.=0A=
________________________________________=0A=
From: Beauchesne, Gwenole [gwenole.beauchesne@intel.com]=0A=
Sent: Thursday, April 03, 2014 8:22 PM=0A=
To: Meenakumari Shedole; yocto@yoctoproject.org=0A=
Cc: Dipesh Karmakar=0A=
Subject: RE: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playbac=
k=0A=
=0A=
Hi,=0A=
=0A=
> I have checked vaapisink source, it seems its supporting overlay on forei=
gn X=0A=
> window.=0A=
> https://gitorious.org/vaapi/gstreamer-=0A=
> vaapi/source/643d35e87a67376af9cd89cd868666368b105ac3:gst/vaapisink/gs=0A=
> tvaapisink.c=0A=
> static gboolean gst_vaapisink_implements_interface_supported();=0A=
> static gboolean gst_vaapisink_ensure_window_xid();=0A=
=0A=
The version you mention looks very old. I have integrated a fix from anothe=
r user, who has been successfully using gstreamer-vaapi with GStreamer 0.10=
 in a scenario you describe (vaapisink + foreign window). Please update you=
r gstreamer-vaapi version to at least 0.5.8. Or, the current git master tre=
e. Other branches are not maintained any more. The fix I have in mind was f=
8666e2.=0A=
=0A=
Regards,=0A=
Gwenole.=0A=
=0A=
> -----Original Message-----=0A=
> From: Burton, Ross [mailto:ross.burton@intel.com]=0A=
> Sent: Friday, March 28, 2014 4:42 PM=0A=
> To: Meenakumari Shedole=0A=
> Cc: yocto@yoctoproject.org; Dipesh Karmakar=0A=
> Subject: Re: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4=0A=
> playback=0A=
>=0A=
> On 28 March 2014 06:05, Meenakumari Shedole <meenakumari.s@hcl.com>=0A=
> wrote:=0A=
> > 1. playbin2 + avi/3gp is working properly because of xvimagesink is use=
d=0A=
> interally.=0A=
> > 2. playbin2 + mp4 is not taking vaapi sink, we need to manually set vid=
eo-=0A=
> sink=3Dvaapisink.=0A=
> >    Also we are getting arbitrary crash while setting the qml video wind=
ow id=0A=
> to the vaapi sink.=0A=
> >    So we are not getting any single pipe to play mp4/avi/3gp stuff.=0A=
>=0A=
> The important question is what recipe are you using to get the vaapi=0A=
> elements?=0A=
>=0A=
> What happens if you use vaapisink with AVI/3GP?  You should still get som=
e=0A=
> acceleration.=0A=
>=0A=
> Note that especially when using vaapi sink you need to wait for the sink =
to=0A=
> create the window and then reparent it, you can't provide your own X=0A=
> window to vaapisink.  This is the usual cause for breakage.  Do testing w=
ith=0A=
> gst-launch before attempting to use your own application.=0A=
>=0A=
> Ross=0A=
>=0A=
>=0A=
> ::DISCLAIMER::=0A=
> -------------------------------------------------------------------------=
---------------------=0A=
> ------------------------------------------------------=0A=
>=0A=
> The contents of this e-mail and any attachment(s) are confidential and=0A=
> intended for the named recipient(s) only.=0A=
> E-mail transmission is not guaranteed to be secure or error-free as=0A=
> information could be intercepted, corrupted, lost, destroyed, arrive late=
 or=0A=
> incomplete, or may contain viruses in transmission. The e mail and its=0A=
> contents (with or without referred errors) shall therefore not attach any=
=0A=
> liability on the originator or HCL or its affiliates.=0A=
> Views or opinions, if any, presented in this email are solely those of th=
e=0A=
> author and may not necessarily reflect the views or opinions of HCL or it=
s=0A=
> affiliates. Any form of reproduction, dissemination, copying, disclosure,=
=0A=
> modification, distribution and / or publication of this message without t=
he=0A=
> prior written consent of authorized representative of HCL is strictly=0A=
> prohibited. If you have received this email in error please delete it and=
 notify=0A=
> the sender immediately.=0A=
> Before opening any email and/or attachments, please check them for viruse=
s=0A=
> and other defects.=0A=
>=0A=
> -------------------------------------------------------------------------=
---------------------=0A=
> ------------------------------------------------------=0A=

