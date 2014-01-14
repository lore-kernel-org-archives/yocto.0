Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F330DE007EB
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:01:57 -0800 (PST)
Received: by mail-oa0-f46.google.com with SMTP id l6so9627018oag.19
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:01:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xeWgUGKd6tLp/FsKonfMHP0x7NHjkMKj4sqGgxt/dw4=;
	b=bF2SWMCR0U31T6P04pP9rj9IsT0Bjzi5hSBXouTdU4vEdYxACFYWUh+KREkvgp9+hM
	uC/VwP8Ka1X2Gh1M2FU4MIYEaTsOrqhgomMgWZG3vwg3Wt6lnd86o7R2qlG7OWsv8uMy
	FFciVlwPzuOQrAExYTTBngacp/KWYCdhxRLS7BdJ7AN7f7bcGcn+oCHRLp3LuWIQT0fO
	b5AFPJsednH2BEHbf6loh+SZ/Y8/YbzB4I2VuDtFoQfw8CS2u2De/fi3VlV4CdWTHnkZ
	ijq+JWo3EDWjDCcQyk6v1vR5lZuH9x7uTHHpIVD65B2BrGmdNv7iXJhyl4zSk6k2qNHB
	n0iQ==
X-Gm-Message-State: ALoCoQlPuXRlMVsSv2a3pK+jllI8xYhU/T1yfesQK17JQCDY/Z/qNKTIy1P1MWKF/9qPXzI/gfv6
X-Received: by 10.60.62.199 with SMTP id a7mr1175281oes.64.1389708116667; Tue,
	14 Jan 2014 06:01:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.84.233 with HTTP; Tue, 14 Jan 2014 06:01:36 -0800 (PST)
In-Reply-To: <52D541E5.3040401@mlbassoc.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com> <20140114134754.GD3717@jama>
	<52D541E5.3040401@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 14 Jan 2014 15:01:36 +0100
Message-ID: <CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 14:01:58 -0000
Content-Type: multipart/alternative; boundary=001a11c2190ca2c2f204efeea212

--001a11c2190ca2c2f204efeea212
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 14, 2014 at 2:55 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> Sorry, no, when x11 is missing, I only get this error:
>

>
> [gthomas@titan imx6_test]$ bitbake -e gst-plugins-base
> NOTE: Started PRServer with DBfile: /home/local/imx6_test/cache/prserv.sqlite3,
> IP: 127.0.0.1, PORT: 45092, PID: 22974
> Loading cache: 100% |#############################
> #######################################################| ETA:  00:00:00
> Loaded 1564 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'virtual/libx11' (but /home/local/poky-multi/meta/
> recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bb DEPENDS on or
> otherwise requires it)
>
> ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing
> required distro feature ['x11'] (not in DISTRO_FEATURES)
> ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required
> distro feature ['x11'] (not in DISTRO_FEATURES)
> ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing
> required distro feature ['x11'] (not in DISTRO_FEATURES)
> ERROR: Required build target 'gst-plugins-base' has no buildable providers.
> Missing or unbuildable dependency chain was: ['gst-plugins-base',
> 'virtual/libx11']
>
> If I have x11 in DISTRO_FEATURES, I get a full dump and the grep shows
> something:
>
> [gthomas@titan imx6_test]$ bitbake -e gst-plugins-base | grep
> PACKAGECONFIG
> # $PACKAGECONFIG [7 operations]
> PACKAGECONFIG=" pango x11"
> [gthomas@titan imx6_test]$
>

pango looks suspicious here. it's not there by default. so something seems
to be setting PACKAGECONFIG in your config, and that could be the root
cause of your problem...


> Note this is using Poky master that's about a week old, but I doubt that
> anything has changed in this realm.
>

--001a11c2190ca2c2f204efeea212
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 14, 2014 at 2:55 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":26d" style=3D"overflow:hidden">S=
orry, no, when x11 is missing, I only get this error:=A0</div></blockquote>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div id=3D":26d" style=3D"overflow:hidden"><div class=3D"im"><br>
<br>
[gthomas@titan imx6_test]$ bitbake -e gst-plugins-base<br></div>
NOTE: Started PRServer with DBfile: /home/local/imx6_test/cache/<u></u>prse=
rv.sqlite3, IP: 127.0.0.1, PORT: 45092, PID: 22974<br>
Loading cache: 100% |#############################<u></u>##################=
############<u></u>#########################| ETA: =A000:00:00<br>
Loaded 1564 entries from dependency cache.<br>
NOTE: Resolving any missing task queue dependencies<br>
ERROR: Nothing PROVIDES &#39;virtual/libx11&#39; (but /home/local/poky-mult=
i/meta/<u></u>recipes-multimedia/gstreamer/<a href=3D"http://gst-plugins-ba=
se_0.10.36.bb" target=3D"_blank">g<u></u>st-plugins-base_0.10.36.bb</a> DEP=
ENDS on or otherwise requires it)<div class=3D"im">

<br>
ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing require=
d distro feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br>
ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required dis=
tro feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br>
ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing re=
quired distro feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br></div>
ERROR: Required build target &#39;gst-plugins-base&#39; has no buildable pr=
oviders.<br>
Missing or unbuildable dependency chain was: [&#39;gst-plugins-base&#39;, &=
#39;virtual/libx11&#39;]<br>
<br>
If I have x11 in DISTRO_FEATURES, I get a full dump and the grep shows some=
thing:<br>
<br>
[gthomas@titan imx6_test]$ bitbake -e gst-plugins-base | grep PACKAGECONFIG=
<br>
# $PACKAGECONFIG [7 operations]<br>
PACKAGECONFIG=3D&quot; pango x11&quot;<br>
[gthomas@titan imx6_test]$<br></div></blockquote><div><br></div><div>pango =
looks suspicious here. it&#39;s not there by default. so something seems to=
 be setting PACKAGECONFIG in your config, and that could be the root cause =
of your problem...</div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":26d" style=3D"ove=
rflow:hidden">
<br>
Note this is using Poky master that&#39;s about a week old, but I doubt tha=
t<br>
anything has changed in this realm.</div></blockquote></div><br><br></div><=
/div>

--001a11c2190ca2c2f204efeea212--
