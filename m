Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE186E00BE6; Tue, 10 Jun 2014 12:00:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4F2CE00BE1
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:00:16 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id z12so4300047wgg.25
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:00:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=uJPT1a24wOTzLxQDSXvNvorqiYO+hRaMKd3F/so0/iQ=;
	b=S8l2IBbJCCoiK/1lBT45sW+hFldGjJnIzd+z5njKyproIrPsmXTokpgcoL6c8cso4i
	BFY2u1wG+xNsbEoQ7eeoXntCflNsosU0c/s8VppJTsdM8jqvIiVvHSxM4IRsgNCHKf0e
	mB6vVb4VquEnFzaI0EPksvRs9YqYuJGiYvczlOgnogHZXj1rmehbkHqLE8hHDa9hQUTO
	5BXybnCM+24DByHkL0nu/W+auzar1DetnwCr7UB/lRkgiWctcuWNi2sBU7abV6x/VDSR
	879xlvooopbHrPlNBKpomNbQheYbf+PPWwf9gQgm8oNlBM9+hO+2WVVIMbAOSDaA22nQ
	Eplg==
X-Gm-Message-State: ALoCoQmr/5k13lCGmIbXmvC1q3F9IzlkmQYaJYFuNks5WFDdnAOAQMGq1+fDRPGWHVxb/cHhobU6
X-Received: by 10.180.228.39 with SMTP id sf7mr38784675wic.26.1402426815229;
	Tue, 10 Jun 2014 12:00:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 11:59:55 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 21:59:55 +0300
Message-ID: <CAK18fxHboa0uRC0YfeGZmuFGUzWHnzTy8F25S6xtpWb+2UdRXw@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.
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
X-List-Received-Date: Tue, 10 Jun 2014 19:00:36 -0000
Content-Type: multipart/alternative; boundary=001a1134d18a2545f004fb7ff0a7

--001a1134d18a2545f004fb7ff0a7
Content-Type: text/plain; charset=UTF-8

Hello Alex.

On Sun, Jun 8, 2014 at 1:50 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

> This changes the build slightly as there are some #ifdefs in there for
> Raspberry Pi.
>
> Also the codec configuration file used by gstreamer1.0-omx codecs,
> /etc/xdg/gstomx.conf,  is set correctly to
> core-name=/usr/lib/libopenmaxil.so
>
> Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  recipes-multimedia/gstreamer/gstreamer1.0-omx.inc            | 2 ++
>  recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +
>

I was thinking we we really need two files for this... I know that yocto
has an inc too. But i don't know if that really makes sense for one line.
What do you think?


>  2 files changed, 3 insertions(+)
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
>  create mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
> b/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
> new file mode 100644
> index 0000000..eb7cca4
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
> @@ -0,0 +1,2 @@
> +GSTREAMER_1_0_OMX_TARGET="rpi"
> +GSTREAMER_1_0_OMX_CORE_NAME="/usr/lib/libopenmaxil.so"
>

These changes should be machine specific.


> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
> b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
> new file mode 100644
> index 0000000..bd54419
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
> @@ -0,0 +1 @@
> +require ${PN}.inc
> --
> 2.0.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a1134d18a2545f004fb7ff0a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hello Alex.</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Sun, Jun 8, 2014 at 1:50 PM,=
 Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevi=
ces.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> w=
rote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">This changes the build slightly as there are=
 some #ifdefs in there for Raspberry Pi.<br>
<br>
Also the codec configuration file used by gstreamer1.0-omx codecs, /etc/xdg=
/gstomx.conf, =C2=A0is set correctly to core-name=3D/usr/lib/libopenmaxil.s=
o<br>
<br>
Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4<br>
Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.=
co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
---<br>
<div class=3D"">=C2=A0recipes-multimedia/gstreamer/gstreamer1.0-omx.inc =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +<br=
></div></blockquote><div><br></div><div>I was thinking we we really need tw=
o files for this... I know that yocto has an inc too. But i don&#39;t know =
if that really makes sense for one line. What do you think?=C2=A0</div>

<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"">
=C2=A02 files changed, 3 insertions(+)<br>
=C2=A0create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx.inc<=
br>
=C2=A0create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.=
0.bbappend<br>
<br>
</div>diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc b/reci=
pes-multimedia/gstreamer/gstreamer1.0-omx.inc<br>
new file mode 100644<br>
index 0000000..eb7cca4<br>
--- /dev/null<br>
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc<br>
@@ -0,0 +1,2 @@<br>
+GSTREAMER_1_0_OMX_TARGET=3D&quot;rpi&quot;<br>
+GSTREAMER_1_0_OMX_CORE_NAME=3D&quot;/usr/lib/libopenmaxil.so&quot;<br></bl=
ockquote><div><br></div><div>These changes should be machine specific.=C2=
=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend b=
/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend<br>
new file mode 100644<br>
index 0000000..bd54419<br>
--- /dev/null<br>
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend<br>
@@ -0,0 +1 @@<br>
+require ${PN}.inc<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
2.0.0<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--001a1134d18a2545f004fb7ff0a7--
