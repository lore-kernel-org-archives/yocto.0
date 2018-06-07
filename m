Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65BAFE02BFA; Tue, 12 Jun 2018 11:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CEC8E02AEC
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:42 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SncwfwXan; Tue, 12 Jun 2018 20:02:42 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 7 Jun 2018 17:09:05 +0200
Message-Id: <5CEB21E9-D704-4C29-A0CF-5F4E3C662178@emagii.com>
References: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
In-Reply-To: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
To: =?utf-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfGvoC4bUbtEt348lypRAZ3fvoa5wGaPwvuxwG4PvvgkPIPucxw6ivV5uXSkmVT9KP34fmEF765xPQgDKdNW95eX4gBSH7FVfCOxfUBvN9IbQ0boCMTpU
	YaDiR5wgLDuUl1PVfzrT5smW3qZO48fo6zTGMXW4heITd/PWA6TWONPSsrglIu5DjNLUHIzbovG0ZfLdFNxejX8eXe11te3fvL8=
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Issue when integrating different bsp-layers on a single bblayers.conf
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:44 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-F83EFFC4-1C74-4339-86BC-E0185CA07781
Content-Transfer-Encoding: 7bit

--Apple-Mail-F83EFFC4-1C74-4339-86BC-E0185CA07781
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You can BBMASK away that bbappend when you are not building the rockchip mac=
hine.

Best Regards,
Ulf Samuelsson

> 7 juni 2018 kl. 16:39 skrev Iv=C3=A1n Castell <icastell@nayarsystems.com>:=

>=20
> Hello forum.
>=20
> I am trying to integrate several BSP-layers for different platforms on a s=
ingle Yocto repository to build a Linux Yocto-based distro for all those pla=
tforms easily.
>=20
> The idea is maintaining a single bblayers.conf with all the layers availab=
le, set PLATFORM and DISTRO on local.conf, call bitbake <image> and get the f=
inal image for that platform.
>=20
> When setting the "build" directory with a bblayers.conf customized for a s=
ingle platform, each platform builds the image recipe properly.
>=20
> However, when I have integrated all bsp-layers in a single bblayers.conf, t=
he compilation of some platforms has been broken.
>=20
> The specific problem is this: one bsp layer (meta-rockchip + meta-rockchip=
-extra) defines a recipes-graphics/mesa/mesa_%.bbappend with this content in=
side:
>=20
>     PROVIDES_remove =3D "virtual/libgles1 virtual/libgles2 virtual/egl vir=
tual/libwayland-egl"
>=20
> That alters gstreamer recipe on the poky layer, getting this error when bu=
ilding for a meta-intel platform:
>=20
>     ERROR: Nothing PROVIDES 'virtual/egl' (but /data/yocto/yocto/sources/p=
oky/meta/recipes-multimedia/gstreamer/gstreamer1.0-vaapi_1.12.2.bb, /data/yo=
cto/yocto/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugin=
s-bad_1.12.2.bb DEPENDS on or otherwise requires it)
>=20
> My questions:
>=20
>     - Is a good practice to define a custom bblayers.conf depending on the=
 choosen PLATFORM?
>     - Is there some any other way to disable a BSP-layer completely when b=
uilding for a different one?
>     - Can you suggest a fix to solve this issue?
>=20
> Thanks a lot in advance! :)
>=20
> Kind regards.
>   -- Ivan
>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-F83EFFC4-1C74-4339-86BC-E0185CA07781
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You can BBMASK away that bbappend when you a=
re not building the rockchip machine.<div><br><div>Best Regards,<div>Ulf Sam=
uelsson</div></div><div><br>7 juni 2018 kl. 16:39 skrev Iv=C3=A1n Castell &l=
t;<a href=3D"mailto:icastell@nayarsystems.com">icastell@nayarsystems.com</a>=
&gt;:<br><br></div><blockquote type=3D"cite"><div><div dir=3D"ltr"><div>Hell=
o forum.</div><div><br></div><div><div><div>I am trying to integrate several=
 BSP-layers for different platforms on a single Yocto repository to build a L=
inux Yocto-based distro for all those platforms easily.</div><div><br></div>=
<div>The idea is maintaining a single bblayers.conf with all the layers avai=
lable, set PLATFORM and DISTRO on local.conf, call bitbake &lt;image&gt; and=
 get the final image for that platform.</div><div><br></div><div>When settin=
g the "build" directory with a bblayers.conf customized for a single platfor=
m, each platform builds the image recipe properly.</div><div><br></div><div>=
However, when I have integrated all bsp-layers in a single bblayers.conf, th=
e compilation of some platforms has been broken.<br></div><div><br></div><di=
v>The specific problem is this: one bsp layer (meta-rockchip + meta-rockchip=
-extra) defines a&nbsp;recipes-graphics/mesa/mesa_%.bbappend with this conte=
nt inside:<br></div><div><span style=3D"font-size:small;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><br></span></div><div><span style=3D"font-size:smal=
l;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><span style=3D"text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">&nb=
sp; &nbsp; PROVIDES_remove =3D "virtual/libgles1 virtual/libgles2 virtual/eg=
l virtual/libwayland-egl"</span><br></span></div><div><span style=3D"font-si=
ze:small;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline"><span style=3D"text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne"><br></span></span></div><div><span style=3D"font-size:small;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline"><span style=3D"text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline">That alters gstre=
amer recipe on the poky layer, getting this error when building for a meta-i=
ntel platform:</span></span></div><div><br></div><div>&nbsp; &nbsp; ERROR: N=
othing PROVIDES 'virtual/egl' (but /data/yocto/yocto/sources/poky/meta/recip=
es-multimedia/gstreamer/<a href=3D"http://gstreamer1.0-vaapi_1.12.2.bb">gstr=
eamer1.0-vaapi_1.12.2.bb</a>, /data/yocto/yocto/sources/poky/meta/recipes-mu=
ltimedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-bad_1.12.2.bb">gst=
reamer1.0-plugins-bad_1.12.2.bb</a> DEPENDS on or otherwise requires it)</di=
v><div><br></div><div>My questions:</div><div><br></div><div>&nbsp; &nbsp; -=
 Is a good practice to define a custom bblayers.conf depending on the choose=
n PLATFORM?</div><div>&nbsp; &nbsp; - Is there some any other way to disable=
 a BSP-layer completely when building for a different one?</div></div><div>&=
nbsp; &nbsp; - Can you suggest a fix to solve this issue?</div><div><br></di=
v><div>Thanks a lot in advance! :)</div><div><br></div><div>Kind regards.</d=
iv></div><div>&nbsp; -- Ivan</div><div><br></div><div><br></div>
</div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></div></body></html>=

--Apple-Mail-F83EFFC4-1C74-4339-86BC-E0185CA07781--
