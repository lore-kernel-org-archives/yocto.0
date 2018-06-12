Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 953B5E02BFE; Tue, 12 Jun 2018 11:03:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0BB5E02BFE
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:03:01 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SndFfwXcY; Tue, 12 Jun 2018 20:03:01 +0200
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15B202)
In-Reply-To: <CAALXFYyic2am_6wjJGtfZmcC4Uaby=J6oLzGqux--Xof1_KWeQ@mail.gmail.com>
Date: Tue, 12 Jun 2018 20:03:01 +0200
Message-Id: <30BD6853-8C00-44EA-A154-C2EF96E91238@emagii.com>
References: <CAMrvBPP=9vaErzvHjjxNrg674N+Hm3YE-La9ouxL+5DHkqW2TA@mail.gmail.com>
	<CAALXFYyic2am_6wjJGtfZmcC4Uaby=J6oLzGqux--Xof1_KWeQ@mail.gmail.com>
To: =?utf-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
X-CMAE-Envelope: MS4wfLhficEIjb/zQiY+ahXtiQIt+po8+mmbDxk96Ar2XNLm9rQfq0GIkzqZ6c36LmyGZIDBeLm2a3H4oqlDK5KaghrUwnxp2kxNLqT6GenF24Qk6JQJe+jc
	RD29OOdTgwkYxPDpWebKxnK3KWI+6ZH5rh9uL/IMl4pt8h4ONl6fpWIrR5InaEZGmZwmJsddWXX3PGxnih1rzHTuU0AMJRib7cODWW1G/uCHulYY/3EXcfTB
	wUiaDd6NI8IZrhqNPUsJQQ==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding kernel module to yocto core-image-base
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
X-List-Received-Date: Tue, 12 Jun 2018 18:03:02 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-54175896-AC71-407E-B57E-D72B7A16CF1C
Content-Transfer-Encoding: 7bit

--Apple-Mail-54175896-AC71-407E-B57E-D72B7A16CF1C
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There is an example in meta-skeleton/recipes-kernel

Best Regards,
Ulf Samuelsson

> 12 juni 2018 kl. 09:33 skrev Iv=C3=A1n Castell <icastell@nayarsystems.com>=
:
>=20
> Hello.
>=20
> First you need to reconfigure your kernel configuration (ncurses must be p=
roperly installed in your host PC):
>=20
>     $ bitbake -c menuconfig virtual/kernel
>=20
> After you need to generate a fragment.cfg (containing a diff betweeen your=
 default and your recently customized kernel config):
>=20
>     $ bitbake -c diffconfig  virtual/kernel
>=20
> Thak will generate the fragment.cfg fine into your ${WORKDIR}
>=20
> Then you need to create a bbappend in your own BSP layer extending the con=
tent of your working kernel recipe. Something similar to this:
>=20
>     $ cat your-custom-bsp-layer/recipes-kernel/linux/linux-kernel_%.bbappe=
nd
>=20
>     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
>     SUMMARY =3D "Linux kernel customization for your board"
>     LINUX_VERSION =3D "x.y.z"
>=20
>     inherit kernel
>=20
>     SRC_URI +=3D " \
>         file://fragment.cfg \
>     "
>=20
> Just replace x.y.z by your specific kernel version. The fragment.cfg file m=
ust be available inside your own kernel recipe, in a directory named ${PN} (=
as indicated by FILESEXTRAPATHS_prepend):
>=20
>     $ ls your-custom-bsp-layer/recipes-kernel/linux/linux-kernel
>     fragment.cfg
>=20
> Then you already can build your new kernel:
>=20
>     $ bitbake virtual/kernel
>=20
> Hope this helps!
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-54175896-AC71-407E-B57E-D72B7A16CF1C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><span></span></div><div><meta http-equ=
iv=3D"content-type" content=3D"text/html; charset=3Dutf-8">There is an examp=
le in meta-skeleton/recipes-kernel<br><br><div>Best Regards,<div>Ulf Samuels=
son</div></div><div><br>12 juni 2018 kl. 09:33 skrev Iv=C3=A1n Castell &lt;<=
a href=3D"mailto:icastell@nayarsystems.com">icastell@nayarsystems.com</a>&gt=
;:<br><br></div><blockquote type=3D"cite"><div><div dir=3D"ltr">Hello.<div><=
br></div><div>First you need to reconfigure your kernel configuration (ncurs=
es must be properly installed in your host PC):</div><div><br></div><div>&nb=
sp; &nbsp; $ bitbake -c menuconfig virtual/kernel</div><div><br></div><div>A=
fter you need to generate a fragment.cfg (containing a diff betweeen your de=
fault and your recently customized kernel config):</div><div><br></div><div>=
&nbsp; &nbsp; $ bitbake -c diffconfig&nbsp; virtual/kernel<br></div><div><br=
></div><div>Thak will generate the fragment.cfg fine into your ${WORKDIR}</d=
iv><div><br></div><div>Then you need to create a bbappend in your own BSP la=
yer extending the content of your working kernel recipe. Something similar t=
o this:</div><div><br></div><div>&nbsp; &nbsp; $ cat your-custom-bsp-layer/r=
ecipes-kernel/linux/linux-kernel_%.bbappend</div><div><br></div><div><div>&n=
bsp; &nbsp; FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"</div><div><br><=
/div><div>&nbsp; &nbsp; SUMMARY =3D "Linux kernel customization for your boa=
rd"</div><div>&nbsp; &nbsp; LINUX_VERSION =3D "x.y.z"</div><div><br></div><d=
iv>&nbsp; &nbsp; inherit kernel</div><div><br></div><div>&nbsp; &nbsp; SRC_U=
RI +=3D " \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; file://fragment.cfg \</div=
><div>&nbsp; &nbsp; "<br></div></div><div><br></div><div><span style=3D"font=
-size:small;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">Just replace x.y.z b=
y your specific kernel version.&nbsp;</span>The fragment.cfg file must be av=
ailable inside your own kernel recipe, in a directory named ${PN} (as indica=
ted by&nbsp;FILESEXTRAPATHS_prepend):</div><div><br></div><div>&nbsp; &nbsp;=
 $ ls&nbsp;<span style=3D"font-size:small;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">your-custom-bsp-layer/recipes-kernel/linux/linux-kernel</span></d=
iv><div><span style=3D"font-size:small;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">&nbsp; &nbsp; fragment.cfg</span></div><div><span style=3D"font-size=
:small;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><br></span></div><div><s=
pan style=3D"font-size:small;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">Th=
en you already can build your new kernel:</span></div><div><span style=3D"fo=
nt-size:small;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><br></span></div>=
<div><span style=3D"font-size:small;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">&nbsp; &nbsp; $ bitbake virtual/kernel</span></div><div><span style=3D"=
font-size:small;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline"><br></span></di=
v><div><span style=3D"font-size:small;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:i=
nline">Hope this helps!</span></div><div><br></div></div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></div></body></html>=

--Apple-Mail-54175896-AC71-407E-B57E-D72B7A16CF1C--
