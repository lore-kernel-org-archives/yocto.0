Return-Path: <meenakumari.s@hcl.com>
Received: from GWS06.hcl.com (gws06.avitas.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19849E00CE2
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 00:54:19 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,840,1389724200"; d="scan'208";a="65724195"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 11 Apr 2014 13:19:41 +0530
Received: from NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.98.132.27) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 11 Apr 2014 13:24:11 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN ([10.98.132.27]) with mapi id
	14.03.0123.003; Fri, 11 Apr 2014 13:24:11 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "Beauchesne, Gwenole" <gwenole.beauchesne@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkP///EyAgAZ3sHCAAEJeQIABLiLAgAIeozCADB6Skg==
Date: Fri, 11 Apr 2014 07:54:12 +0000
Message-ID: <E4938C0D959B3445943720B88F07213415617CDB@NDA-HCLT-MBS02.hclt.corp.hcl.in>
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
X-List-Received-Date: Fri, 11 Apr 2014 07:54:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All.=0A=
=0A=
We have built following Gst packages in Ubuntu 13.04=0A=
gstreamer-1.2.3=0A=
gst-plugins-base-1.2.3=0A=
gst-plugins-good-1.2.3=0A=
gst-plugins-bad-1.2.3=0A=
gst-plugins-ugly-1.2.3=0A=
gst-libav-1.2.3=0A=
libva-1.3.0=0A=
libva-intel-driver-1.3.0=0A=
gstreamer-vaapi-0.5.8=0A=
=0A=
Our objective is to build gst-1.2.3 with latest vaapi support. On the way w=
e have installed all other dependencies.=0A=
=0A=
We have wrote an application(App1) to create a QT video widget and hence ha=
ve the window id.=0A=
....=0A=
    QWidget window;=0A=
    window.resize(1920, 1080);=0A=
    window.show();=0A=
    WId xwinid =3D window.winId();=0A=
....=0A=
=0A=
And another application (app2) to create gst-video pipe (filesrc-> qtdemux-=
> vaapidecode-> vaapisink) to test video overlay, where we are using follow=
ing videooverlay api to test the foreign window,=0A=
=0A=
gst_video_overlay_set_window_handle(GST_VIDEO_OVERLAY(vaapisink), aWindowId=
);=0A=
=0A=
And App1 is sending wid to App2 through D-Bus.=0A=
=0A=
=0A=
Now Vaapi able to set the foreign window however, there is some troubling b=
ehaviors in vaapisink side.=0A=
=0A=
a. First gst_video_overlay_set_window_handle to set the foreign window.=0A=
b. Play the pipe for some time (It works with foreign window) and Stop.=0A=
c. Second time Play, vaapisink creates its own window.=0A=
d. Stop the pipe.=0A=
e. Call gst_video_overlay_set_window_handle to set the foreign window again=
.=0A=
f. Start the pipe (It works with foreign window).=0A=
=0A=
So instead of rending to the foreign window why vaapisink is creating its o=
wn window in all 2nd attempts to play?=0A=
=0A=
Some time we are getting the following core dump while setting the windowid=
=0A=
=0A=
Program received signal SIGSEGV, Segmentation fault.=0A=
[Switching to Thread 0xb7900b40 (LWP 24910)]=0A=
0xb6109d8f in glXMakeCurrentReadSGI ()=0A=
   from /usr/lib/i386-linux-gnu/mesa/libGL.so.1=0A=
(gdb) bt=0A=
#0  0xb6109d8f in glXMakeCurrentReadSGI ()=0A=
   from /usr/lib/i386-linux-gnu/mesa/libGL.so.1=0A=
#1  0xb6109f13 in glXMakeCurrent ()=0A=
   from /usr/lib/i386-linux-gnu/mesa/libGL.so.1=0A=
#2  0xb645c994 in gl_set_current_context (new_cs=3D0xb78ff64c, old_cs=3D0x0=
)=0A=
    at gstvaapiutils_glx.c:450=0A=
#3  0xb645e728 in gst_vaapi_window_glx_ensure_context (window=3D0xb6f14800,=
 =0A=
    foreign_context=3D<optimized out>) at gstvaapiwindow_glx.c:217=0A=
#4  gst_vaapi_window_glx_ensure_context (window=3D0xb6f14800, =0A=
    foreign_context=3D<optimized out>) at gstvaapiwindow_glx.c:185=0A=
#5  0xb645e986 in gst_vaapi_window_glx_new_with_xid (=0A=
    display=3Ddisplay@entry=3D0xb6f0f8e8, xid=3Dxid@entry=3D62914566)=0A=
    at gstvaapiwindow_glx.c:413=0A=
#6  0xb648f72b in gst_vaapisink_ensure_window_xid (window_id=3D62914566, =
=0A=
    sink=3D0xb6319000) at gstvaapisink.c:553=0A=
#7  gst_vaapisink_video_overlay_set_window_handle (overlay=3D0xb6319000, =
=0A=
    window=3D62914566) at gstvaapisink.c:179=0A=
#8  0xb7cd11a7 in gst_video_overlay_set_window_handle (overlay=3D0xb6319000=
, =0A=
    handle=3D62914566) at videooverlay.c:357=0A=
=0A=
BTW, is there any way to test this scenario (setting the foreign window) wi=
th gst- commands only, which will remove our application overhead?=0A=
=0A=
Thanks in advance,=0A=
Meena=0A=
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

