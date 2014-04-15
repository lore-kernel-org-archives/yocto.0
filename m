Return-Path: <meenakumari.s@hcl.com>
Received: from GWS05.hcl.com (gws05.hcl.com [203.105.185.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28AC3E00B82
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 21:47:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,861,1389724200"; d="scan'208";a="60007800"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS05.hcl.com with ESMTP/TLS/AES128-SHA; 15 Apr 2014 10:14:41 +0530
Received: from NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.98.132.27) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 15 Apr 2014 10:16:48 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT02.HCLT.CORP.HCL.IN ([10.98.132.27]) with mapi id
	14.03.0123.003; Tue, 15 Apr 2014 10:16:48 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "Beauchesne, Gwenole" <gwenole.beauchesne@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkP///EyAgAZ3sHCAAEJeQIABLiLAgAIeozCADB6SkoAGFDkg
Date: Tue, 15 Apr 2014 04:46:46 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341561891C@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415614CE4@NDA-HCLT-MBS02.hclt.corp.hcl.in>,
	<278E3B7DD17B744DAAB36F6424581BA61AE98D6D@IRSMSX103.ger.corp.intel.com>
	<E4938C0D959B3445943720B88F07213415617CDB@NDA-HCLT-MBS02.hclt.corp.hcl.in>
In-Reply-To: <E4938C0D959B3445943720B88F07213415617CDB@NDA-HCLT-MBS02.hclt.corp.hcl.in>
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
X-List-Received-Date: Tue, 15 Apr 2014 04:47:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi.

I hope someone can help me with my questions.


We have built following Gst packages in Ubuntu 13.04
gstreamer-1.2.3
gst-plugins-base-1.2.3
gst-plugins-good-1.2.3
gst-plugins-bad-1.2.3
gst-plugins-ugly-1.2.3
gst-libav-1.2.3
libva-1.3.0
libva-intel-driver-1.3.0
gstreamer-vaapi-0.5.8

Our objective is to build gst-1.2.3 with latest vaapi support. On the way w=
e have installed all other dependencies.

We have wrote an application(App1) to create a QT video widget and hence ha=
ve the window id.
....
    QWidget window;
    window.resize(1920, 1080);
    window.show();
    WId xwinid =3D window.winId();
....

And another application (app2) to create gst-video pipe (filesrc-> qtdemux-=
> vaapidecode-> vaapisink) to test video overlay, where we are using follow=
ing videooverlay api to test the foreign window,

gst_video_overlay_set_window_handle(GST_VIDEO_OVERLAY(vaapisink), aWindowId=
);

And App1 is sending wid to App2 through D-Bus.


Now Vaapi able to set the foreign window however, there is some troubling b=
ehaviors in vaapisink side.

a. First gst_video_overlay_set_window_handle to set the foreign window.
b. Play the pipe for some time (It works with foreign window) and Stop.
c. Second time Play, vaapisink creates its own window.
d. Stop the pipe.
e. Call gst_video_overlay_set_window_handle to set the foreign window again=
.
f. Start the pipe (It works with foreign window).

So instead of rending to the foreign window why vaapisink is creating its o=
wn window in all 2nd attempts to play?

Some time we are getting the following core dump while setting the windowid

Program received signal SIGSEGV, Segmentation fault.
[Switching to Thread 0xb7900b40 (LWP 24910)]
0xb6109d8f in glXMakeCurrentReadSGI ()
   from /usr/lib/i386-linux-gnu/mesa/libGL.so.1
(gdb) bt
#0  0xb6109d8f in glXMakeCurrentReadSGI ()
   from /usr/lib/i386-linux-gnu/mesa/libGL.so.1
#1  0xb6109f13 in glXMakeCurrent ()
   from /usr/lib/i386-linux-gnu/mesa/libGL.so.1
#2  0xb645c994 in gl_set_current_context (new_cs=3D0xb78ff64c, old_cs=3D0x0=
)
    at gstvaapiutils_glx.c:450
#3  0xb645e728 in gst_vaapi_window_glx_ensure_context (window=3D0xb6f14800,=
=20
    foreign_context=3D<optimized out>) at gstvaapiwindow_glx.c:217
#4  gst_vaapi_window_glx_ensure_context (window=3D0xb6f14800,=20
    foreign_context=3D<optimized out>) at gstvaapiwindow_glx.c:185
#5  0xb645e986 in gst_vaapi_window_glx_new_with_xid (
    display=3Ddisplay@entry=3D0xb6f0f8e8, xid=3Dxid@entry=3D62914566)
    at gstvaapiwindow_glx.c:413
#6  0xb648f72b in gst_vaapisink_ensure_window_xid (window_id=3D62914566,=20
    sink=3D0xb6319000) at gstvaapisink.c:553
#7  gst_vaapisink_video_overlay_set_window_handle (overlay=3D0xb6319000,=20
    window=3D62914566) at gstvaapisink.c:179
#8  0xb7cd11a7 in gst_video_overlay_set_window_handle (overlay=3D0xb6319000=
,=20
    handle=3D62914566) at videooverlay.c:357

BTW, is there any way to test this scenario (setting the foreign window) wi=
th gst- commands only, which will remove our application overhead?

Thanks in advance,
Meena
________________________________________
From: Beauchesne, Gwenole [gwenole.beauchesne@intel.com]
Sent: Thursday, April 03, 2014 8:22 PM
To: Meenakumari Shedole; yocto@yoctoproject.org
Cc: Dipesh Karmakar
Subject: RE: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playbac=
k

Hi,

> I have checked vaapisink source, it seems its supporting overlay on forei=
gn X
> window.
> https://gitorious.org/vaapi/gstreamer-
> vaapi/source/643d35e87a67376af9cd89cd868666368b105ac3:gst/vaapisink/gs
> tvaapisink.c
> static gboolean gst_vaapisink_implements_interface_supported();
> static gboolean gst_vaapisink_ensure_window_xid();

The version you mention looks very old. I have integrated a fix from anothe=
r user, who has been successfully using gstreamer-vaapi with GStreamer 0.10=
 in a scenario you describe (vaapisink + foreign window). Please update you=
r gstreamer-vaapi version to at least 0.5.8. Or, the current git master tre=
e. Other branches are not maintained any more. The fix I have in mind was f=
8666e2.

Regards,
Gwenole.

> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Friday, March 28, 2014 4:42 PM
> To: Meenakumari Shedole
> Cc: yocto@yoctoproject.org; Dipesh Karmakar
> Subject: Re: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4
> playback
>
> On 28 March 2014 06:05, Meenakumari Shedole <meenakumari.s@hcl.com>
> wrote:
> > 1. playbin2 + avi/3gp is working properly because of xvimagesink is use=
d
> interally.
> > 2. playbin2 + mp4 is not taking vaapi sink, we need to manually set vid=
eo-
> sink=3Dvaapisink.
> >    Also we are getting arbitrary crash while setting the qml video wind=
ow id
> to the vaapi sink.
> >    So we are not getting any single pipe to play mp4/avi/3gp stuff.
>
> The important question is what recipe are you using to get the vaapi
> elements?
>
> What happens if you use vaapisink with AVI/3GP?  You should still get som=
e
> acceleration.
>
> Note that especially when using vaapi sink you need to wait for the sink =
to
> create the window and then reparent it, you can't provide your own X
> window to vaapisink.  This is the usual cause for breakage.  Do testing w=
ith
> gst-launch before attempting to use your own application.
>
> Ross
>
>
> ::DISCLAIMER::
> -------------------------------------------------------------------------=
---------------------
> ------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted, lost, destroyed, arrive late=
 or
> incomplete, or may contain viruses in transmission. The e mail and its
> contents (with or without referred errors) shall therefore not attach any
> liability on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of th=
e
> author and may not necessarily reflect the views or opinions of HCL or it=
s
> affiliates. Any form of reproduction, dissemination, copying, disclosure,
> modification, distribution and / or publication of this message without t=
he
> prior written consent of authorized representative of HCL is strictly
> prohibited. If you have received this email in error please delete it and=
 notify
> the sender immediately.
> Before opening any email and/or attachments, please check them for viruse=
s
> and other defects.
>
> -------------------------------------------------------------------------=
---------------------
> ------------------------------------------------------

