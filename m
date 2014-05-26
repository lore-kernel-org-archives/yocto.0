Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AA6DE00B20; Mon, 26 May 2014 11:30:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduva.jan.alexandru[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 365 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 May 2014 11:30:28 PDT
Received: from mail-wg0-f43.google.com (unknown [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F87E0073D
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 11:30:27 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id l18so8406752wgh.14
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 11:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=k90x5agTOEY+Rq6KeaixE0lXrx9Qtmgu/LKV8UJa3jE=;
	b=Fy/qyeQlv+hHfS3qOS6/jiGV3MXnjtV93fZRCe4CwQZvHiprONSQEbNNovy+J2IIr8
	pu4qw0fai1ZUF/M2Q0oYscIyUffTbOgyG3WlHB50xNqVSVo4fYvnLi25a9UK5qE14Qy8
	q1sdK1qaGOarWyaOST4HOpBMMe5NQe5ivp4WQDdI7dGme6lpi9BeYl3EeTfkTUYnkEA/
	yvUG89PK0NcMA1FzSOa8W/Nf0Oi4zFX/lVBIWqlF2FIv+bVoPK+aLhyDweOQvr+m1Wju
	JBYssJxWJaOJb3TzAnIzWCRSesJD1+FfR63c6Uo1Vr4iobRlbwQAVOvcudl5pp4GaZGA
	V1Ag==
MIME-Version: 1.0
X-Received: by 10.194.5.5 with SMTP id o5mr33022402wjo.16.1401128662598; Mon,
	26 May 2014 11:24:22 -0700 (PDT)
Received: by 10.194.133.1 with HTTP; Mon, 26 May 2014 11:24:22 -0700 (PDT)
In-Reply-To: <5383805E.4020603@dynamicdevices.co.uk>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
	<5383805E.4020603@dynamicdevices.co.uk>
Date: Mon, 26 May 2014 21:24:22 +0300
Message-ID: <CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
From: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Mon, 26 May 2014 18:30:33 -0000
Content-Type: multipart/alternative; boundary=047d7b5d43fe3809be04fa51b0a7

--047d7b5d43fe3809be04fa51b0a7
Content-Type: text/plain; charset=UTF-8

I do not believe the mmal_component is missing from the rootfs or it is not
enabled somehow.
I hate to mention this but it may have something to do with the the
functionality of the component.
Try this: https://github.com/raspberrypi/linux/issues/435
Also something like strace or even 'sudo vcdbg syms | grep -i cam' would be
useful if available of
the rootfs.

Sorry for this type of interaction. I am really busy with some other
project.
If nothing works we could use OpenMax as you suggested to interact with the
camera, but I still hope
this problem can be fixed.


Alex


On Mon, May 26, 2014 at 8:56 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 26/05/2014 11:39, Alex J Lennon wrote:
>
>
> On 25/05/2014 21:51, Alexandru Vaduva wrote:
>
>  Hello,
>
>  Sorry for my late response, I put on pause the investigation with this
> bug.
> Hope to return to it next month (or at least after 13 June).
> Right now in my head there are more questions then answers regarding
> this bug, so I cannot really help.
> A quick suggestion would be to inspect the config.txt for raspbian for
> example
> and investigate the differences.
> Also try GPU_MEM = "256" just to make a confirmation of my assumption that
> something is missing.
>
>
> Thanks Alex. I will try that. I'm going to have another look today and see
> if I can get to the bottom of it
>
>
> Hi Alex,
>
> I've been taking a look at various things. I don't have a solution though
> unfortunately at present
>
> - The GPU_MEM = "256" doesn't help unfortunately
>
> - The raspivid call is failing here, when it tries to instantiate a camera
> component
>
>
> https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c#L1674
>
> calls,
>
>
> https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c#L708
>
> This seems to be because there is no supplier registered for the camera
> component. Why I am not sure...
>
> ...
>
> As I was investigating this I came across OpenMAX Bellagio which seems to
> provide an intermediary registry of OpenMax components.
>
> I'm not sure whether this relates to the RaspiVid issue but I believe it
> does relate to an issue I am seeing when I try to run a Gstreamer pipeline
>
> gst-launch-0.10 -v videotestsrc pattern=smpte !
> 'video/x-raw-rgb,width=1920,height=1080' ! omx_h264enc ! rpth264pay !
> udpsink=192.168.0.13 port=5000
> OMX-Component not found with current ST static component loader.
>
> Now apparently we are supposed to have run omxregister-bellagio which
> registers up components.
>
> (omxregister-bellagio is provided by the
> poky/meta/recipes-multimedia/libomxil recipe.)
>
> On Raspbian there are a set of components registered with bellagio, and
> provided by individual libomx-foo packages.
> (e.g. libomxvideosrc.so, libomxfbdev.so, libomxclocksrc.so,
> libomxcamera.so, libomxaudio_effects.so, libomxxvideo.so)
>
> ref:
> http://www.nielsmayer.com/bin/view/Raspberry+Pi/Notes+on+Qt5,+Multimedia,+OpenMax+Acceleration,+5.1+Audio
>
> These are missing on my Yocto Poky RPi image.
>
> It looks as though at some time in the past these components may have been
> present in the core bellagio build, but then at some point they were broken
> out into separate components tarballs.
>
> e.g. http://sourceforge.net/projects/omxil/files/components/
>
> I can't see recipes for these anywhere so I am wondering if they need to
> be added in...
>
> Cheers,
>
> Alex
>
>
> Looking at
>
>
>

--047d7b5d43fe3809be04fa51b0a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I do not believe the mmal_component is=
 missing from the rootfs or it is not enabled somehow.<br></div>I hate to m=
ention this but it may have something to do with the the functionality of t=
he component.<br>
</div>Try this: <a href=3D"https://github.com/raspberrypi/linux/issues/435"=
>https://github.com/raspberrypi/linux/issues/435</a><br></div><div>Also som=
ething like strace or even <code>&#39;sudo vcdbg syms | grep -i cam&#39; </=
code>would be useful if available of <br>
the rootfs. <br></div><div>=C2=A0<br></div>Sorry for this type of interacti=
on. I am really busy with some other project.<br></div><div>If nothing work=
s we could use OpenMax as you suggested to interact with the camera, but I =
still hope<br>
</div><div>this problem can be fixed.<br></div><div><br><br></div>Alex<br><=
/div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, =
May 26, 2014 at 8:56 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevice=
s.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div><div class=3D"h5">
    <br>
    <div>On 26/05/2014 11:39, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <br>
      <div>On 25/05/2014 21:51, Alexandru Vaduva
        wrote:<br>
      </div>
      <blockquote type=3D"cite">
        <div style=3D"color:#000;background-color:#fff;font-family:Helvetic=
aNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;font-size:12p=
t">
          <div><span>Hello,</span></div>
          <div style=3D"color:rgb(0,0,0);font-size:16px;font-family:Helveti=
caNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;background-c=
olor:transparent;font-style:normal"><br>
            <span></span></div>
          <div style=3D"color:rgb(0,0,0);font-size:16px;font-family:Helveti=
caNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;background-c=
olor:transparent;font-style:normal"><span>Sorry for my late response, I put=
 on
              pause the investigation with this bug.</span></div>
          <div style=3D"color:rgb(0,0,0);font-size:16px;font-family:Helveti=
caNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;background-c=
olor:transparent;font-style:normal"><span>Hope to return to it next month (=
or at
              least after 13 June).</span></div>
          <div style=3D"color:rgb(0,0,0);font-size:16px;font-family:Helveti=
caNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;background-c=
olor:transparent;font-style:normal"><span>Right now in my head there are mo=
re
              questions then answers regarding<br>
              this bug, so I cannot really help.</span></div>
          A quick suggestion would be to inspect the config.txt for
          raspbian for example <br>
          and investigate the differences. <br>
          Also try GPU_MEM =3D &quot;256&quot; just to make a confirmation =
of my
          assumption that <br>
          something is missing.<br>
          <br>
        </div>
      </blockquote>
      <br>
      Thanks Alex. I will try that. I&#39;m going to have another look toda=
y
      and see if I can get to the bottom of it</blockquote>
    <br></div></div>
    Hi Alex,<br>
    <br>
    I&#39;ve been taking a look at various things. I don&#39;t have a solut=
ion
    though unfortunately at present<br>
    <br>
    - The GPU_MEM =3D &quot;256&quot; doesn&#39;t help unfortunately<br>
    <br>
    - The raspivid call is failing here, when it tries to instantiate a
    camera component<br>
    <br>
<a href=3D"https://github.com/raspberrypi/userland/blob/master/host_applica=
tions/linux/apps/raspicam/RaspiVid.c#L1674" target=3D"_blank">https://githu=
b.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspica=
m/RaspiVid.c#L1674</a><br>

    <br>
    calls,<br>
    <br>
<a href=3D"https://github.com/raspberrypi/userland/blob/master/interface/mm=
al/core/mmal_component.c#L708" target=3D"_blank">https://github.com/raspber=
rypi/userland/blob/master/interface/mmal/core/mmal_component.c#L708</a><br>

    <br>
    This seems to be because there is no supplier registered for the
    camera component. Why I am not sure...<br>
    <br>
    ...<br>
    <br>
    As I was investigating this I came across OpenMAX Bellagio which
    seems to provide an intermediary registry of OpenMax components.<br>
    <br>
    I&#39;m not sure whether this relates to the RaspiVid issue but I
    believe it does relate to an issue I am seeing when I try to run a
    Gstreamer pipeline<br>
    <br>
    gst-launch-0.10 -v videotestsrc pattern=3Dsmpte !
    &#39;video/x-raw-rgb,width=3D1920,height=3D1080&#39; ! omx_h264enc ! rp=
th264pay
    ! udpsink=3D192.168.0.13 port=3D5000<br>
    OMX-Component not found with current ST static component loader.<br>
    <br>
    Now apparently we are supposed to have run omxregister-bellagio
    which registers up components.<br>
    <br>
    (omxregister-bellagio is provided by the
    poky/meta/recipes-multimedia/libomxil recipe.)<br>
    <br>
    On Raspbian there are a set of components registered with bellagio,
    and provided by individual libomx-foo packages.<br>
    (e.g. libomxvideosrc.so, libomxfbdev.so, libomxclocksrc.so,
    libomxcamera.so, libomxaudio_effects.so, libomxxvideo.so)<br>
    <br>
    ref:
<a href=3D"http://www.nielsmayer.com/bin/view/Raspberry+Pi/Notes+on+Qt5,+Mu=
ltimedia,+OpenMax+Acceleration,+5.1+Audio" target=3D"_blank">http://www.nie=
lsmayer.com/bin/view/Raspberry+Pi/Notes+on+Qt5,+Multimedia,+OpenMax+Acceler=
ation,+5.1+Audio</a><br>

    <br>
    These are missing on my Yocto Poky RPi image.<br>
    <br>
    It looks as though at some time in the past these components may
    have been present in the core bellagio build, but then at some point
    they were broken out into separate components tarballs.<br>
    <br>
    e.g. <a href=3D"http://sourceforge.net/projects/omxil/files/components/=
" target=3D"_blank">http://sourceforge.net/projects/omxil/files/components/=
</a><br>
    <br>
    I can&#39;t see recipes for these anywhere so I am wondering if they
    need to be added in...<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <br>
    Looking at <br>
    <br>
    <br>
  </div>

</blockquote></div><br></div>

--047d7b5d43fe3809be04fa51b0a7--
