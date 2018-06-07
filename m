Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ADD8E02AEC; Tue, 12 Jun 2018 11:02:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 919B3E02AEC
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:44 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SncyfwXay; Tue, 12 Jun 2018 20:02:44 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 7 Jun 2018 17:27:04 +0200
Message-Id: <545BDFE1-411A-4211-BB1C-A597FADB9A08@emagii.com>
References: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
In-Reply-To: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
To: =?utf-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfGp9ko5O51NS6oMcJl9DhHfAqlchlAj8oD9IuIjVARpmI8QSf7LIUQXpkvWeuVKm/RJWyBunyhl92XRI/RjatIM6KRQwa31Z6hL9MR3a9vPVTU9Odu8q
	lR+iPCVOwE9HD5eQOLWSu0lNFj4/lk7dNNagev98mf23GEArkXjKDsF4vs1AlDTC+pTRMxorud/ootNIfCG/VKWK1ycHf0gWMvI=
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:45 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-56FBA04D-0632-42CD-815C-54DF79D670C6
Content-Transfer-Encoding: 7bit

--Apple-Mail-56FBA04D-0632-42CD-815C-54DF79D670C6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Maybe something similar to this in local.conf

BBMASK .=3D "${@base_conditional('MACHINE', '<rockchip>', '','|meta-rockchip=
/recipes-*', d)}"
(did not test)
If there are multiple machines in the meta-rockchip layer, you have to look f=
or a unique variable which is true only if a machine in the meta-rockchip la=
yer is used.


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

--Apple-Mail-56FBA04D-0632-42CD-815C-54DF79D670C6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Maybe something similar to this in local.co=
nf<div><br></div><div><pre style=3D"color: rgb(69, 69, 69); font-style: inhe=
rit; font-variant-caps: inherit; margin-top: 0px; margin-bottom: 1em; paddin=
g: 5px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-a=
lign: baseline; box-sizing: inherit; width: auto; max-height: 600px; overflo=
w: auto; word-wrap: normal;"><code style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant-caps: inherit; font-stretch: inher=
it; line-height: inherit; vertical-align: baseline; box-sizing: inherit; whi=
te-space: normal; background-color: rgba(255, 255, 255, 0);"><font face=3D"U=
ICTFontTextStyleBody">BBMASK .=3D "${@base_conditional('MACHINE',&nbsp;</fon=
t></code><span style=3D"font-style: inherit; font-variant-caps: inherit;">'<=
/span><span style=3D"font-family: UICTFontTextStyleBody; font-style: inherit=
; font-variant-caps: inherit; white-space: normal; background-color: rgba(25=
5, 255, 255, 0);">&lt;rockchip&gt;',&nbsp;</span><span style=3D"font-style: i=
nherit; font-variant-caps: inherit;">'',</span><span style=3D"font-family: U=
ICTFontTextStyleBody; font-style: inherit; font-variant-caps: inherit; white=
-space: normal; background-color: rgba(255, 255, 255, 0);">'|meta-rockchip/r=
ecipes-*', d)}"</span></pre>(did not test)</div><div>If there are multiple m=
achines in the meta-rockchip layer, you have to look for a unique variable w=
hich is true only if a machine in the meta-rockchip layer is used.</div><div=
><br></div><div><br></div><div><div>Best Regards,<div>Ulf Samuelsson</div></=
div><div><br>7 juni 2018 kl. 16:39 skrev Iv=C3=A1n Castell &lt;<a href=3D"ma=
ilto:icastell@nayarsystems.com">icastell@nayarsystems.com</a>&gt;:<br><br></=
div><blockquote type=3D"cite"><div><div dir=3D"ltr"><div>Hello forum.</div><=
div><br></div><div><div><div>I am trying to integrate several BSP-layers for=
 different platforms on a single Yocto repository to build a Linux Yocto-bas=
ed distro for all those platforms easily.</div><div><br></div><div>The idea i=
s maintaining a single bblayers.conf with all the layers available, set PLAT=
FORM and DISTRO on local.conf, call bitbake &lt;image&gt; and get the final i=
mage for that platform.</div><div><br></div><div>When setting the "build" di=
rectory with a bblayers.conf customized for a single platform, each platform=
 builds the image recipe properly.</div><div><br></div><div>However, when I h=
ave integrated all bsp-layers in a single bblayers.conf, the compilation of s=
ome platforms has been broken.<br></div><div><br></div><div>The specific pro=
blem is this: one bsp layer (meta-rockchip + meta-rockchip-extra) defines a&=
nbsp;recipes-graphics/mesa/mesa_%.bbappend with this content inside:<br></di=
v><div><span style=3D"font-size:small;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:i=
nline"><br></span></div><div><span style=3D"font-size:small;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline"><span style=3D"text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">&nbsp; &nbsp; PROVIDE=
S_remove =3D "virtual/libgles1 virtual/libgles2 virtual/egl virtual/libwayla=
nd-egl"</span><br></span></div><div><span style=3D"font-size:small;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline"><span style=3D"text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><br></span></s=
pan></div><div><span style=3D"font-size:small;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><span style=3D"text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline">That alters gstreamer recipe on the=
 poky layer, getting this error when building for a meta-intel platform:</sp=
an></span></div><div><br></div><div>&nbsp; &nbsp; ERROR: Nothing PROVIDES 'v=
irtual/egl' (but /data/yocto/yocto/sources/poky/meta/recipes-multimedia/gstr=
eamer/<a href=3D"http://gstreamer1.0-vaapi_1.12.2.bb">gstreamer1.0-vaapi_1.1=
2.2.bb</a>, /data/yocto/yocto/sources/poky/meta/recipes-multimedia/gstreamer=
/<a href=3D"http://gstreamer1.0-plugins-bad_1.12.2.bb">gstreamer1.0-plugins-=
bad_1.12.2.bb</a> DEPENDS on or otherwise requires it)</div><div><br></div><=
div>My questions:</div><div><br></div><div>&nbsp; &nbsp; - Is a good practic=
e to define a custom bblayers.conf depending on the choosen PLATFORM?</div><=
div>&nbsp; &nbsp; - Is there some any other way to disable a BSP-layer compl=
etely when building for a different one?</div></div><div>&nbsp; &nbsp; - Can=
 you suggest a fix to solve this issue?</div><div><br></div><div>Thanks a lo=
t in advance! :)</div><div><br></div><div>Kind regards.</div></div><div>&nbs=
p; -- Ivan</div><div><br></div><div><br></div>
</div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></div></body></html>=

--Apple-Mail-56FBA04D-0632-42CD-815C-54DF79D670C6--
