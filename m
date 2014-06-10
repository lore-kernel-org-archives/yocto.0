Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54FC0E00BAE; Tue, 10 Jun 2014 11:48:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D53D7E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:48:50 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id u56so5911753wes.36
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:48:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=yx/WPwbp/oqHXKXh/YD4beBnLGhT5UJRpsKbMtEQpW0=;
	b=WjDJvH5cP+cSG3mt9LhnwE8Iya/6elCyS9Vmwf9okQsvLmiZKpN9XUy9xOIGGnpbpz
	eWz/Qlfz2/Fgpe3NdciwAl67NuI/tnV6rssJ7mH1sTgpBgjeO70EBODUJL8eU8JLQpg6
	oJwG8pwB9WY+wye+zn6TURkOiYBkwzUjGGCSgCm9P0Ug+AM6qwFBej8Osc7FfyMT5uOz
	GmtQUhPSC5i1pgvc1s8WqqxgdUnLGuhf/57OsOsdzj/7NhH72Z7sMIYxQ+UG0Ya7yXjH
	HBlm4dCnCvGlt1IIR9Qma/BOADXsMWHDB8MqPauGNb4xZ1zqTh25/O/Tjj6E8vqwThFU
	e5Qw==
X-Gm-Message-State: ALoCoQnQF9znjthg8PHqdp98XgRWM/bgZHWLAGBJ9DnCUnlAErTG66+5uYmSvlaEbL2SJEXgQPH4
X-Received: by 10.180.94.163 with SMTP id dd3mr40349374wib.26.1402426129357;
	Tue, 10 Jun 2014 11:48:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 11:48:28 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <9c061d514d5c846032c672ae42b6a1119e4e69db.1402296985.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
	<9c061d514d5c846032c672ae42b6a1119e4e69db.1402296985.git.ajlennon@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 21:48:28 +0300
Message-ID: <CAK18fxGg1sCKbsKS=Qg4n8==sJJgEME4_N11CriNa+irL-ziBg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-plugins-bad: Build eglglessink for Raspberry Pi
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
X-List-Received-Date: Tue, 10 Jun 2014 18:48:52 -0000
Content-Type: multipart/alternative; boundary=f46d04462e5e43b96b04fb7fc74e

--f46d04462e5e43b96b04fb7fc74e
Content-Type: text/plain; charset=UTF-8

Hi Alex,


On Mon, Jun 9, 2014 at 10:23 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

> The eglglessink needs to be built to target the Raspberry Pi or it will
> seg-fault in use.
>
> Autoconf attempts to detect whether to build for RPi but there are some
> include files needed, the search path to which must be specified.
>

Format lines - max 78 chars per line.


>
> ref: https://github.com/raspberrypi/firmware/issues/34
>
> ref: https://github.com/raspberrypi/firmware/issues/99
>
> This patch adds the needed include paths and forces the plugin to be built
> for Raspberry Pi.
>
> With this patch the following pipeline works on RPi,
>
> modprobe bcm2835-v4l2 gst_v4l2src_is_broken=1
> gst-launch-1.0 --gst-debug-no-color v4l2src !
> 'video/x-raw,format=RGB,width=1280,height=720,framerate=(fraction)30/1' !
> eglglessink max-lateness=-1
>
> Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>
> diff --git
> a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
> b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
> new file mode 100644
> index 0000000..199e0c1
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF += "
> CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads
> -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'
> --with-egl-window-system=rpi"
>

This append should be done only for raspberrypi machine. Having this append
(EXTRA_OECONF) for other machines too would break gstreamer1.0-plugins-bad
as most of the times bblayers.conf includes many layers not always related
to the MACHINE selected.

Thanks.
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d04462e5e43b96b04fb7fc74e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alex,<br><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Mon, Jun 9, 2014 at 10:23 AM, Alex J Lennon <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_bl=
ank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">The eglglessink needs to be built to tar=
get the Raspberry Pi or it will seg-fault in use.<br>


<br>
Autoconf attempts to detect whether to build for RPi but there are some inc=
lude files needed, the search path to which must be specified.<br></div></b=
lockquote><div><br></div><div>Format lines - max 78 chars per line.</div>

<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex"><div class=3D"im">
<br>
ref: <a href=3D"https://github.com/raspberrypi/firmware/issues/34" target=
=3D"_blank">https://github.com/raspberrypi/firmware/issues/34</a><br>
<br>
ref: <a href=3D"https://github.com/raspberrypi/firmware/issues/99" target=
=3D"_blank">https://github.com/raspberrypi/firmware/issues/99</a><br>
<br>
This patch adds the needed include paths and forces the plugin to be built =
for Raspberry Pi.<br>
<br>
With this patch the following pipeline works on RPi,<br>
<br>
modprobe bcm2835-v4l2 gst_v4l2src_is_broken=3D1<br>
gst-launch-1.0 --gst-debug-no-color v4l2src ! &#39;video/x-raw,format=3DRGB=
,width=3D1280,height=3D720,framerate=3D(fraction)30/1&#39; ! eglglessink ma=
x-lateness=3D-1<br>
<br>
Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f<br>
Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.=
co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
---<br>
</div><div class=3D"im">=C2=A0recipes-multimedia/gstreamer/gstreamer1.0-plu=
gins-bad_1.2.3.bbappend | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
=C2=A0create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-=
bad_1.2.3.bbappend<br>
<br>
</div><div class=3D"im">diff --git a/recipes-multimedia/gstreamer/gstreamer=
1.0-plugins-bad_1.2.3.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-=
plugins-bad_1.2.3.bbappend<br>
new file mode 100644<br>
index 0000000..199e0c1<br>
--- /dev/null<br>
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend<=
br>
@@ -0,0 +1 @@<br>
+EXTRA_OECONF +=3D &quot; CPPFLAGS=3D&#39;-I${STAGING_DIR_TARGET}/usr/inclu=
de/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vm=
cs_host/linux&#39; --with-egl-window-system=3Drpi&quot;<br></div></blockquo=
te>

<div><br></div><div>This append should be done only for raspberrypi machine=
. Having this append (EXTRA_OECONF) for other machines too would break=C2=
=A0gstreamer1.0-plugins-bad as most of the times bblayers.conf includes man=
y layers not always related to the MACHINE selected.</div>

</div><br clear=3D"all"><div>Thanks.</div>-- <br><div dir=3D"ltr"><div styl=
e=3D"text-align:center"></div><div style=3D"text-align:center"><div align=
=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">=
<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--f46d04462e5e43b96b04fb7fc74e--
