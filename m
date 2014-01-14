Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15B60E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:13:05 -0800 (PST)
Received: by mail-ob0-f182.google.com with SMTP id wn1so7241539obc.13
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:13:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=e63zbh5/lWpvmtcTZ0taYX3pTyjJ0nl7JhBAEg/Evd8=;
	b=JG8c6DpJMGcKOEN/EEDNx+JEpvbl5UNvnRSGPiGWTi60xOWAADPZxOJSl5jcgEywri
	sF6LRVsU7YamzR9Oxy6MW74ID4FXTuVcY/HKmy8DZoI8EO4wiMHqLVW4ct4X6AK73Ihu
	NXGNIr8G4ZwHkwWNdFaYpr324qTQg/KHBYW532YGskTA7fkx/bkJydqcougkuYqdao8w
	eZNvBKed7PRMLJ+HBMBT/zMVr9YFmXnFxtrVdYb+eIAxGamlecb+oOEEeokFo0QeqPHj
	g9K1Yw7eBaPw03oOJC6GMmb7065FkshWB7MUL4bSSMQBW1TTnvZbP2kPcFX9nU+pc8Ls
	Y0Hw==
X-Gm-Message-State: ALoCoQmRZiLQ9gw5tkGEFcWsuiWofrMrxER0FynXwCe/yF77mNZQ8zOzf3nsnTVq/l2QvodMjLji
X-Received: by 10.60.47.116 with SMTP id c20mr1031704oen.60.1389705184724;
	Tue, 14 Jan 2014 05:13:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.84.233 with HTTP; Tue, 14 Jan 2014 05:12:44 -0800 (PST)
In-Reply-To: <52D536A0.5060307@mlbassoc.com>
References: <52D536A0.5060307@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 14 Jan 2014 14:12:44 +0100
Message-ID: <CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 14 Jan 2014 13:13:15 -0000
Content-Type: multipart/alternative; boundary=047d7b450dc0e0e1f504efedf367

--047d7b450dc0e0e1f504efedf367
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 14, 2014 at 2:07 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to build QTE with a distribution that does not include x11.
> However, I'm getting this error:
>
> ERROR: Nothing PROVIDES 'virtual/libx11' (but /home/local/poky-multi/meta/
> recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bb DEPENDS on or
> otherwise requires it)
> ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing
> required distro feature ['x11'] (not in DISTRO_FEATURES)
> ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required
> distro feature ['x11'] (not in DISTRO_FEATURES)
> ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing
> required distro feature ['x11'] (not in DISTRO_FEATURES)
> NOTE: Runtime target 'qwt-e' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['qwt-e', 'qt4-embedded',
> 'gst-plugins-base', 'virtual/libx11']
> ERROR: Required build target 'my-qte-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['my-qte-image',
> 'packagegroup-core-qt4e', 'qwt-e', 'qt4-embedded', 'gst-plugins-base',
> 'virtual/libx11']
>
> I don't understand why this happens though as the gst-plugins-base
> recipe uses PKGCONFIG to control this:
>   PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'x11', 'x11',
> '', d)}"
>   PACKAGECONFIG[x11] = "--enable-x --enable-xvideo,--disable-x
> --disable-xvideo,virtual/libx11 libxv libsm libice"
>
> How can the depencency on virtual/libx11 still be there if DISTRO_FEATURES
> does not contain x11?
>

obvious question... are you sure DISTRO_FEATURES does not contain x11? did
you define you own distro config? it is there by default, so unless you did
something to remove it, it will be there.

you can display the value of the variable with

bitbake -e gst-plugins-base | grep ^DISTRO_FEATURES

you can check the value of PACKAGECONFIG as well to get more information.

--047d7b450dc0e0e1f504efedf367
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 14, 2014 at 2:07 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":21w" style=3D"overflow:hidden">I=
&#39;m trying to build QTE with a distribution that does not include x11.<b=
r>
However, I&#39;m getting this error:<br>
<br>
ERROR: Nothing PROVIDES &#39;virtual/libx11&#39; (but /home/local/poky-mult=
i/meta/<u></u>recipes-multimedia/gstreamer/<a href=3D"http://gst-plugins-ba=
se_0.10.36.bb" target=3D"_blank">g<u></u>st-plugins-base_0.10.36.bb</a> DEP=
ENDS on or otherwise requires it)<br>


ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing require=
d distro feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br>
ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required dis=
tro feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br>
ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing re=
quired distro feature [&#39;x11&#39;] (not in DISTRO_FEATURES)<br>
NOTE: Runtime target &#39;qwt-e&#39; is unbuildable, removing...<br>
Missing or unbuildable dependency chain was: [&#39;qwt-e&#39;, &#39;qt4-emb=
edded&#39;, &#39;gst-plugins-base&#39;, &#39;virtual/libx11&#39;]<br>
ERROR: Required build target &#39;my-qte-image&#39; has no buildable provid=
ers.<br>
Missing or unbuildable dependency chain was: [&#39;my-qte-image&#39;, &#39;=
packagegroup-core-qt4e&#39;, &#39;qwt-e&#39;, &#39;qt4-embedded&#39;, &#39;=
gst-plugins-base&#39;, &#39;virtual/libx11&#39;]<br>
<br>
I don&#39;t understand why this happens though as the gst-plugins-base<br>
recipe uses PKGCONFIG to control this:<br>
=A0 PACKAGECONFIG ??=3D &quot;${@base_contains(&#39;DISTRO_<u></u>FEATURES&=
#39;, &#39;x11&#39;, &#39;x11&#39;, &#39;&#39;, d)}&quot;<br>
=A0 PACKAGECONFIG[x11] =3D &quot;--enable-x --enable-xvideo,--disable-x --d=
isable-xvideo,virtual/<u></u>libx11 libxv libsm libice&quot;<br>
<br>
How can the depencency on virtual/libx11 still be there if DISTRO_FEATURES =
does not contain x11?</div></blockquote></div><br>obvious question... are y=
ou sure DISTRO_FEATURES does not contain x11? did you define you own distro=
 config? it is there by default, so unless you did something to remove it, =
it will be there.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">you can dis=
play the value of the variable with=A0</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">bitbake -e gst-plugins-base | grep ^DISTRO=
_FEATURES</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">you can che=
ck the value of PACKAGECONFIG as well to get more information.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">

<br></div></div>

--047d7b450dc0e0e1f504efedf367--
