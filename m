Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD96E00B78; Sun,  1 Jun 2014 14:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduva.jan.alexandru[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04452E00B0B
	for <yocto@yoctoproject.org>; Sun,  1 Jun 2014 14:22:04 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id q59so4164732wes.21
	for <yocto@yoctoproject.org>; Sun, 01 Jun 2014 14:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WAik+78dMWu7xdXVW0rFRGRGIwd/E3C61nBTH6Aca4M=;
	b=JzHGIDgNoDdXj+7IL8xLCm1YKbIU2kRir42kMW+VCtsE3GvzGjsgxg8nHjjqjYR868
	PtXqXXOPj9/QToMUSz2vu1MfgrMooVCC2jgHUN5d+hllBH/Gm5uke4GC3xTmxFyVneW+
	FiGQQjTshM0CKJcs9b5U3R5JUjKItQvrP992BKuRu+zR2qUxA4K6CWVj25s5Pwc6bCuK
	GHMzohN9v5B46Th6S7Q2DpneO1af7PdVvRqXVUlp2D/ocSWFsLpt+dFzfgRUStEO9IV/
	8juH/vAAMSGmFOyf+VjLFpRMI1PfUgGtoVntz5UIUD1mdn/1Yj+Cg0l0FLa7tdd/YBqI
	uvFA==
MIME-Version: 1.0
X-Received: by 10.180.72.243 with SMTP id g19mr16950512wiv.44.1401657723381;
	Sun, 01 Jun 2014 14:22:03 -0700 (PDT)
Received: by 10.194.133.1 with HTTP; Sun, 1 Jun 2014 14:22:03 -0700 (PDT)
In-Reply-To: <538B95F6.6070008@dynamicdevices.co.uk>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
	<5383805E.4020603@dynamicdevices.co.uk>
	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
	<5383891A.4050109@dynamicdevices.co.uk>
	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
	<538B95F6.6070008@dynamicdevices.co.uk>
Date: Mon, 2 Jun 2014 00:22:03 +0300
Message-ID: <CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
From: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>,
	Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Sun, 01 Jun 2014 21:22:12 -0000
Content-Type: multipart/alternative; boundary=f46d043c813eb2ef2d04faccde75

--f46d043c813eb2ef2d04faccde75
Content-Type: text/plain; charset=UTF-8

This are indeed some very good news Alex J Lennon.
I have some questions, but those maybe can be answered by the
maintainers of the meta-raspberrypi layer:
Why was this change done?
     -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
     -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
     +PREFERRED_PROVIDER_virtual/egl ?= "userland"
     +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
How it may affect other applications?
Andrei: Do you have any input on this?


Thanks,
Alex





On Mon, Jun 2, 2014 at 12:07 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 26/05/2014 19:40, Alexandru Vaduva wrote:
> > It`s really hard to just offer impressions or suggestion.
> > Also I agree with the fact that the camera is ok cause I also tested
> > it with raspbian. No problems there.
> > But never the less I hope to keep me posted on any progress and
> > observations.
> > When I will have the time I will try some things of my own.
> >
> > Alex
>
> I've made a certain amount of progress with this Alex.
>
> 1) I've been comparing Raspbian with a Yocto meta-raspberrypi armhf
> build, as raspivid works for me with Raspbian, but not with my
> meta-raspberrypi poky build.
>
>      To cut a long story short the raspivid in Raspian is v1.3.9 and it
> comes from raspiberrypi/firmware which as you know is the binary-only
> release
>
>      If I copy only the raspivid executable from the Raspbian
> installation over to the Yocto installation then raspivid runs up ok,
> shows the cam onscreen and so forth.
>      (so shared libs, config and so forth all would seem to be fine)
>
>      I tried building the same v1.3.9 version of raspivid from the
> userland repository, but I get the same error as before,
>
> root@raspberrypi:~# raspivid -o test
> mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
> mmal: Failed to create camera component
> mmal: main: Failed to create camera component
> mmal: Failed to run camera app. Please check for firmware updates
>
>      So it looks to me as though there's something different between the
> firmware binary release and the more recent open-sourced userland code
>
>     I can show that by just doing my armhf build then pulling down the
> binary, which runs up,
>
>
>
> https://github.com/raspberrypi/firmware/raw/master/hardfp/opt/vc/bin/raspivid
>
>     Looking back through the meta-raspberrypi commit logs it looks as
> though userland replaced vc-graphics-hardfp back at 33d2e1d7
>
> -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> +PREFERRED_PROVIDER_virtual/egl ?= "userland"
> +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>
>     If I build with vc-graphics-hardfp I get a raspivid that runs up
>
> 2) I was wrong about the Bellagio support. Instead there are a set of
> library mappings in /etc/xdg/gstomx.conf
>   These need to be modified to point to libopenmaxil.so not the bellagio
> library
>
> e.g.
>
> [omxh264enc]
> type-name=GstOMXH264Enc
> core-name=/opt/vc/lib/libopenmaxil.so
> component-name=OMX.broadcom.video_encode
> rank=256
> in-port-index=200
> out-port-index=201
> hacks=no-component-role
>
>   With this in place we can do some hardware encoding of h.264 video
> with gstreamer-1.0, both to file and via RTP over UDP.
>
> 3) I believe gstreamer1.0-omx may need to be configured to target RPi
> not Bellagio
>
> e.g. GSTREAMER_1_0_OMX_TARGET="rpi"
>
>
> https://github.com/openembedded/oe-core/blob/master/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
>
> There's also a patch needed in gstreamer1.0-omx.inc as the RPi headers
> are as incomplete as the Bellagio headers .
>
> 4) There are some issues using the v4l2 driver with gstreamer. It seems
> to block on polling
>
> As v4l2src doesn't currently support h.264 for Gstreamer1.0 inherently
> (my reading is that there's some uvch264_src code for this in
> development) I'm concentrating on getting raspivid working for now and
> then piping into an Gstreamer1.0 fdsrc which works for me on Raspbian,
> and I'll see what the overhead is with that approach.
>
> Cheers,
>
> Alex
>
>

--f46d043c813eb2ef2d04faccde75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>This are indeed some very good news Alex J Lenno=
n.<br></div>I have some questions, but those maybe can be answered by the <=
br>maintainers of the meta-raspberrypi layer:<br></div><div>Why was this ch=
ange done?<br>
=C2=A0=C2=A0=C2=A0=C2=A0 -PREFERRED_PROVIDER_virtual/egl ?=3D &quot;vc-grap=
hics-hardfp&quot;<br><div id=3D":nq" class=3D"">=C2=A0=C2=A0=C2=A0=C2=A0
-PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;vc-graphics-hardfp&quot;<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 +PREFERRED_PROVIDER_virtual/egl ?=3D &quot;userla=
nd&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 +PREFERRED_PROVIDER_virtual/libgles2 ?=
=3D &quot;userland&quot;<br></div><div id=3D":nq" class=3D"">
How it may affect other applications?<br></div><div id=3D":nq" class=3D"">A=
ndrei: Do you have any input on this?<br></div><div id=3D":nq" class=3D""><=
br><br></div><div id=3D":nq" class=3D"">Thanks,<br>Alex<br></div><div id=3D=
":nq" class=3D"">
<br></div><br></div><br></div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Mon, Jun 2, 2014 at 12:07 AM, Alex J Lennon <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_bl=
ank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D""><br>
On 26/05/2014 19:40, Alexandru Vaduva wrote:<br>
&gt; It`s really hard to just offer impressions or suggestion.<br>
&gt; Also I agree with the fact that the camera is ok cause I also tested<b=
r>
&gt; it with raspbian. No problems there.<br>
&gt; But never the less I hope to keep me posted on any progress and<br>
&gt; observations.<br>
&gt; When I will have the time I will try some things of my own.<br>
&gt;<br>
&gt; Alex<br>
<br>
</div>I&#39;ve made a certain amount of progress with this Alex.<br>
<br>
1) I&#39;ve been comparing Raspbian with a Yocto meta-raspberrypi armhf<br>
build, as raspivid works for me with Raspbian, but not with my<br>
meta-raspberrypi poky build.<br>
<br>
=C2=A0 =C2=A0 =C2=A0To cut a long story short the raspivid in Raspian is v1=
.3.9 and it<br>
comes from raspiberrypi/firmware which as you know is the binary-only<br>
release<br>
<br>
=C2=A0 =C2=A0 =C2=A0If I copy only the raspivid executable from the Raspbia=
n<br>
installation over to the Yocto installation then raspivid runs up ok,<br>
shows the cam onscreen and so forth.<br>
=C2=A0 =C2=A0 =C2=A0(so shared libs, config and so forth all would seem to =
be fine)<br>
<br>
=C2=A0 =C2=A0 =C2=A0I tried building the same v1.3.9 version of raspivid fr=
om the<br>
userland repository, but I get the same error as before,<br>
<br>
root@raspberrypi:~# raspivid -o test<br>
mmal: mmal_component_create_core: could not find component &#39;vc.ril.came=
ra&#39;<br>
<div class=3D"">mmal: Failed to create camera component<br>
</div>mmal: main: Failed to create camera component<br>
mmal: Failed to run camera app. Please check for firmware updates<br>
<br>
=C2=A0 =C2=A0 =C2=A0So it looks to me as though there&#39;s something diffe=
rent between the<br>
firmware binary release and the more recent open-sourced userland code<br>
<br>
=C2=A0 =C2=A0 I can show that by just doing my armhf build then pulling dow=
n the<br>
binary, which runs up,<br>
<br>
<br>
<a href=3D"https://github.com/raspberrypi/firmware/raw/master/hardfp/opt/vc=
/bin/raspivid" target=3D"_blank">https://github.com/raspberrypi/firmware/ra=
w/master/hardfp/opt/vc/bin/raspivid</a><br>
<br>
=C2=A0 =C2=A0 Looking back through the meta-raspberrypi commit logs it look=
s as<br>
though userland replaced vc-graphics-hardfp back at 33d2e1d7<br>
<br>
-PREFERRED_PROVIDER_virtual/egl ?=3D &quot;vc-graphics-hardfp&quot;<br>
-PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;vc-graphics-hardfp&quot;<br=
>
+PREFERRED_PROVIDER_virtual/egl ?=3D &quot;userland&quot;<br>
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;userland&quot;<br>
<br>
=C2=A0 =C2=A0 If I build with vc-graphics-hardfp I get a raspivid that runs=
 up<br>
<br>
2) I was wrong about the Bellagio support. Instead there are a set of<br>
library mappings in /etc/xdg/gstomx.conf<br>
=C2=A0 These need to be modified to point to libopenmaxil.so not the bellag=
io<br>
library<br>
<br>
e.g.<br>
<br>
[omxh264enc]<br>
type-name=3DGstOMXH264Enc<br>
core-name=3D/opt/vc/lib/libopenmaxil.so<br>
component-name=3DOMX.broadcom.video_encode<br>
rank=3D256<br>
in-port-index=3D200<br>
out-port-index=3D201<br>
hacks=3Dno-component-role<br>
<br>
=C2=A0 With this in place we can do some hardware encoding of h.264 video<b=
r>
with gstreamer-1.0, both to file and via RTP over UDP.<br>
<br>
3) I believe gstreamer1.0-omx may need to be configured to target RPi<br>
not Bellagio<br>
<br>
e.g. GSTREAMER_1_0_OMX_TARGET=3D&quot;rpi&quot;<br>
<br>
<a href=3D"https://github.com/openembedded/oe-core/blob/master/meta/recipes=
-multimedia/gstreamer/gstreamer1.0-omx.inc" target=3D"_blank">https://githu=
b.com/openembedded/oe-core/blob/master/meta/recipes-multimedia/gstreamer/gs=
treamer1.0-omx.inc</a><br>

<br>
There&#39;s also a patch needed in gstreamer1.0-omx.inc as the RPi headers<=
br>
are as incomplete as the Bellagio headers .<br>
<br>
4) There are some issues using the v4l2 driver with gstreamer. It seems<br>
to block on polling<br>
<br>
As v4l2src doesn&#39;t currently support h.264 for Gstreamer1.0 inherently<=
br>
(my reading is that there&#39;s some uvch264_src code for this in<br>
development) I&#39;m concentrating on getting raspivid working for now and<=
br>
then piping into an Gstreamer1.0 fdsrc which works for me on Raspbian,<br>
and I&#39;ll see what the overhead is with that approach.<br>
<br>
Cheers,<br>
<br>
Alex<br>
<br>
</blockquote></div><br></div>

--f46d043c813eb2ef2d04faccde75--
