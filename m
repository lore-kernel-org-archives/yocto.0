Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 650B6E00A31; Mon, 31 Aug 2015 11:23:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B82E00A31
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 11:23:05 -0700 (PDT)
Received: by lbbsx3 with SMTP id sx3so65394073lbb.0
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 11:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+DJvcE9gjFmA4sqHuGkR+8ixnuVEUHOGVlaPjdqguRU=;
	b=ggQ30fJ0yo3zEXYaaGNY45sGv8RlPrqtKVsZ/snb9vfdd2cwDEKNotdzYudbePX3uM
	InWNUVG5R7aWqfmM/z6emMict3/9QQR4JTtfmSiYz5LAm36bncRrp6pyy98ZLzeD3AVc
	SsQI7xlI/tu9EA6NwM6vKrsgxMPb8Vuj99jcJL3Q52sOcCv0pFQuwEW29MVPkHSDYkZW
	IINWA7lhqHObxfvraUGOwCOamNaXvlrOgYeHWRA8+G2w25pylBKkAJ4RxhdaLEY+8tLu
	gcJ1xIcf3Kk1sVpdAOGmS+llD8LaMDcZnRsvP8AConQ9tUOf/EqID+gzToxpC0Kr26GP
	JIPA==
MIME-Version: 1.0
X-Received: by 10.112.85.204 with SMTP id j12mr10903831lbz.47.1441045383912;
	Mon, 31 Aug 2015 11:23:03 -0700 (PDT)
Received: by 10.112.161.231 with HTTP; Mon, 31 Aug 2015 11:23:03 -0700 (PDT)
In-Reply-To: <8195BD6B-483A-4A8F-8D70-241225B6D0DC@gmail.com>
References: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
	<8195BD6B-483A-4A8F-8D70-241225B6D0DC@gmail.com>
Date: Mon, 31 Aug 2015 15:23:03 -0300
Message-ID: <CAJqtCyawZ4cRSexa+eUw+vHbn5eRfDrCciXZ5wbZPTnRPC1Ufw@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] Missing qt5declarative rootfs
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
X-List-Received-Date: Mon, 31 Aug 2015 18:23:08 -0000
Content-Type: multipart/alternative; boundary=001a1134710636a757051e9f8698

--001a1134710636a757051e9f8698
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Khem,

I fix the typo but the problem still remains.

Thank you.

Caio Pereira

2015-08-31 12:51 GMT-03:00 Khem Raj <raj.khem@gmail.com>:

>
> On Aug 31, 2015, at 8:13 AM, Caio <caiortp@gmail.com> wrote:
>
> VIRTUAL_KEYBOARD ?=3D "maliit-framework-qt5 maliit-plugins-qt5"
>
> IMAGE_INSTALL+ =3D =E2=80=9C \
>
>                                  ^
>
> if you pasted the recipe verbatim then there is a typo there there should
> be no space between + and =3D
>
>
>     dbus \
>     qtbase \
>     qtbase-plugins \
>     qtbase-fonts \
>     qtdeclarative \
>     qtdeclarative-plugins \
>     qtdeclarative-qmlplugins \
>     qtmultimedia \
>     qtmultimedia-plugins \
>     qtmultimedia-qmlplugins \
>     qtserialport \
>     qtscript \
>     qtgraphicaleffects-qmlplugins \
>     qtconnectivity-qmlplugins \
>     qtxmlpatterns \
>     qtquick1 \
>     qtquickcontrols \
>     qtquickcontrols-qmlplugins \
>     qtgstreamer \
>     qtsvg \
>     qtsvg-plugins \
>     qtimageformats \
>     qtimageformats-plugin \
>     "
>
>
>


--=20
----------------------------------------------
Caio Pereira

--001a1134710636a757051e9f8698
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Khem,<br><br></div><span id=3D"result_box" =
class=3D"" lang=3D"en"><span class=3D"">I fix the</span> <span class=3D"">t=
ypo</span> <span class=3D"">but</span> <span class=3D"">the problem still</=
span> <span class=3D"">remains</span><span class=3D"">.</span></span><br><b=
r></div>Thank you.<br><br></div>Caio Pereira</div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">2015-08-31 12:51 GMT-03:00 Khem Raj <span =
dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div sty=
le=3D"word-wrap:break-word"><br><div><blockquote type=3D"cite"><span class=
=3D""><div>On Aug 31, 2015, at 8:13 AM, Caio &lt;<a href=3D"mailto:caiortp@=
gmail.com" target=3D"_blank">caiortp@gmail.com</a>&gt; wrote:</div><br></sp=
an><div><span style=3D"font-family:Helvetica;font-size:13px;font-style:norm=
al;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;float:none;display:inline!important">VIRTUAL_KEYBOARD=
 ?=3D &quot;maliit-framework-qt5 maliit-plugins-qt5&quot;</span><br style=
=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:nor=
mal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px"><br style=3D"font-family:Helvetica;font-size:13px;font-style:normal;fon=
t-variant:normal;font-weight:normal;letter-spacing:normal;line-height:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px"><span style=3D"font-family:Helvetica;font-size:13px;font-s=
tyle:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;li=
ne-height:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;float:none;display:inline!important">IMAGE_I=
NSTALL+ =3D =E2=80=9C \</span><br style=3D"font-family:Helvetica;font-size:=
13px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacin=
g:normal;line-height:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px"></div></blockquote><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div><br></div><div>if you pas=
ted the recipe verbatim then there is a typo there there should be no space=
 between + and =3D</div><span class=3D""><div><br></div><br><blockquote typ=
e=3D"cite"><div><span style=3D"font-family:Helvetica;font-size:13px;font-st=
yle:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;lin=
e-height:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;float:none;display:inline!important">=C2=A0=
=C2=A0=C2=A0 dbus \</span><br style=3D"font-family:Helvetica;font-size:13px=
;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:no=
rmal;line-height:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px"><span style=3D"font-family:Helvetica=
;font-size:13px;font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;float:none;display:inl=
ine!important">=C2=A0=C2=A0=C2=A0 qtbase \</span><br style=3D"font-family:H=
elvetica;font-size:13px;font-style:normal;font-variant:normal;font-weight:n=
ormal;letter-spacing:normal;line-height:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px"><span style=
=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:nor=
mal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtbase-plugins \=
<span>=C2=A0</span></span><br style=3D"font-family:Helvetica;font-size:13px=
;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:no=
rmal;line-height:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px"><span style=3D"font-family:Helvetica=
;font-size:13px;font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;float:none;display:inl=
ine!important">=C2=A0=C2=A0=C2=A0 qtbase-fonts \</span><br style=3D"font-fa=
mily:Helvetica;font-size:13px;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px"><span s=
tyle=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant=
:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtdeclarativ=
e \</span><br style=3D"font-family:Helvetica;font-size:13px;font-style:norm=
al;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px"><span style=3D"font-family:Helvetica;font-size:13px;=
font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:nor=
mal;line-height:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;float:none;display:inline!important">=
=C2=A0=C2=A0=C2=A0 qtdeclarative-plugins \</span><br style=3D"font-family:H=
elvetica;font-size:13px;font-style:normal;font-variant:normal;font-weight:n=
ormal;letter-spacing:normal;line-height:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px"><span style=
=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:nor=
mal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtdeclarative-qm=
lplugins \</span><br style=3D"font-family:Helvetica;font-size:13px;font-sty=
le:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line=
-height:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px"><span style=3D"font-family:Helvetica;font-siz=
e:13px;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;line-height:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;float:none;display:inline!impor=
tant">=C2=A0=C2=A0=C2=A0 qtmultimedia \</span><br style=3D"font-family:Helv=
etica;font-size:13px;font-style:normal;font-variant:normal;font-weight:norm=
al;letter-spacing:normal;line-height:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px"><span style=3D"f=
ont-family:Helvetica;font-size:13px;font-style:normal;font-variant:normal;f=
ont-weight:normal;letter-spacing:normal;line-height:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;fl=
oat:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtmultimedia-plugins =
\</span><br style=3D"font-family:Helvetica;font-size:13px;font-style:normal=
;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px"><span style=3D"font-family:Helvetica;font-size:13px;fo=
nt-style:normal;font-variant:normal;font-weight:normal;letter-spacing:norma=
l;line-height:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;float:none;display:inline!important">=C2=
=A0=C2=A0=C2=A0 qtmultimedia-qmlplugins \</span><br style=3D"font-family:He=
lvetica;font-size:13px;font-style:normal;font-variant:normal;font-weight:no=
rmal;letter-spacing:normal;line-height:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px"><span style=3D=
"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:normal=
;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtserialport \<span=
>=C2=A0</span></span><br style=3D"font-family:Helvetica;font-size:13px;font=
-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;=
line-height:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px"><span style=3D"font-family:Helvetica;font=
-size:13px;font-style:normal;font-variant:normal;font-weight:normal;letter-=
spacing:normal;line-height:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;float:none;display:inline!i=
mportant">=C2=A0=C2=A0=C2=A0 qtscript \</span><br style=3D"font-family:Helv=
etica;font-size:13px;font-style:normal;font-variant:normal;font-weight:norm=
al;letter-spacing:normal;line-height:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px"><span style=3D"f=
ont-family:Helvetica;font-size:13px;font-style:normal;font-variant:normal;f=
ont-weight:normal;letter-spacing:normal;line-height:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;fl=
oat:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtgraphicaleffects-qm=
lplugins \</span><br style=3D"font-family:Helvetica;font-size:13px;font-sty=
le:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line=
-height:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px"><span style=3D"font-family:Helvetica;font-siz=
e:13px;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;line-height:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;float:none;display:inline!impor=
tant">=C2=A0=C2=A0=C2=A0 qtconnectivity-qmlplugins \=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0<span>=C2=A0</span></span><br style=3D"font-family:Helvetica=
;font-size:13px;font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px"><span style=3D"font-f=
amily:Helvetica;font-size:13px;font-style:normal;font-variant:normal;font-w=
eight:normal;letter-spacing:normal;line-height:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;float:n=
one;display:inline!important">=C2=A0=C2=A0=C2=A0 qtxmlpatterns \</span><br =
style=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-varian=
t:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px"><span style=3D"font-family:Helvetica;font-size:13px;font-style:nor=
mal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-heigh=
t:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;float:none;display:inline!important">=C2=A0=C2=A0=C2=
=A0 qtquick1 \</span><br style=3D"font-family:Helvetica;font-size:13px;font=
-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;=
line-height:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px"><span style=3D"font-family:Helvetica;font=
-size:13px;font-style:normal;font-variant:normal;font-weight:normal;letter-=
spacing:normal;line-height:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;float:none;display:inline!i=
mportant">=C2=A0=C2=A0=C2=A0 qtquickcontrols \</span><br style=3D"font-fami=
ly:Helvetica;font-size:13px;font-style:normal;font-variant:normal;font-weig=
ht:normal;letter-spacing:normal;line-height:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px"><span sty=
le=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:n=
ormal;font-weight:normal;letter-spacing:normal;line-height:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtquickcontrol=
s-qmlplugins \</span><br style=3D"font-family:Helvetica;font-size:13px;font=
-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;=
line-height:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px"><span style=3D"font-family:Helvetica;font=
-size:13px;font-style:normal;font-variant:normal;font-weight:normal;letter-=
spacing:normal;line-height:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;float:none;display:inline!i=
mportant">=C2=A0=C2=A0=C2=A0 qtgstreamer \</span><br style=3D"font-family:H=
elvetica;font-size:13px;font-style:normal;font-variant:normal;font-weight:n=
ormal;letter-spacing:normal;line-height:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px"><span style=
=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:nor=
mal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 qtsvg \<span>=C2=
=A0</span></span><br style=3D"font-family:Helvetica;font-size:13px;font-sty=
le:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line=
-height:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px"><span style=3D"font-family:Helvetica;font-siz=
e:13px;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;line-height:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;float:none;display:inline!impor=
tant">=C2=A0=C2=A0=C2=A0 qtsvg-plugins \<span>=C2=A0</span></span><br style=
=3D"font-family:Helvetica;font-size:13px;font-style:normal;font-variant:nor=
mal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px"><span style=3D"font-family:Helvetica;font-size:13px;font-style:normal;f=
ont-variant:normal;font-weight:normal;letter-spacing:normal;line-height:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;float:none;display:inline!important">=C2=A0=C2=A0=C2=A0 q=
timageformats \<span>=C2=A0</span></span><br style=3D"font-family:Helvetica=
;font-size:13px;font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px"><span style=3D"font-f=
amily:Helvetica;font-size:13px;font-style:normal;font-variant:normal;font-w=
eight:normal;letter-spacing:normal;line-height:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;float:n=
one;display:inline!important">=C2=A0=C2=A0=C2=A0 qtimageformats-plugin \</s=
pan><br style=3D"font-family:Helvetica;font-size:13px;font-style:normal;fon=
t-variant:normal;font-weight:normal;letter-spacing:normal;line-height:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px"><span style=3D"font-family:Helvetica;font-size:13px;font-s=
tyle:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;li=
ne-height:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;float:none;display:inline!important">=C2=A0=
=C2=A0=C2=A0 &quot;</span><br style=3D"font-family:Helvetica;font-size:13px=
;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:no=
rmal;line-height:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px"></div></blockquote></span></div><br>=
</div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gma=
il_signature">----------------------------------------------<br>Caio Pereir=
a</div>
</div>

--001a1134710636a757051e9f8698--
