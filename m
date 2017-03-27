Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9231CE00867; Mon, 27 Mar 2017 07:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B679E007AA
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 07:01:41 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id r142so9998835qke.2
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 07:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=KCxZeU3kP22HToHTYppcpwBmcrwxBEGuThRyyiNfyPQ=;
	b=uzipl0NE4emS/ja20aXbGkc4iP8UqMLIDw1FFSVTYtoAUOMyNAI3ryg1JUFpljHP+K
	5mpInA+Y6ZuvRQCGGl3UQ7agFdzGBnwLlgE13Xge91J/DY+ndm3wp8m6VSb93uCYh7UG
	r1+WTsiS0u5ZDk+/8dESCO5ceNhjkMLVxpsr5BbgJfyxgfxo6d84DRmLD33Ei+Es3y3J
	xH9RkKPxHScfp/VfhRgas3fDNW7hjyea4wrTn89T9RaeiVAL+Aa3lvMaqgdRo1bxdWIp
	NOmx/BEUFjktmeDC09ILVkaCwA4k0LxIlsbrzGbGiXxXwMi07V5gix20JRsEduW+7Bx8
	O9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=KCxZeU3kP22HToHTYppcpwBmcrwxBEGuThRyyiNfyPQ=;
	b=EAn42UR7qulSqyFUuxBwnuTtv7fU4yqEuTXI6BvrmnBkCbY2zJ7nwc6ws+HlAkMk2m
	shyNX7VXeuQuYTIMLnzAoYcxQpL52sxIqXiigcHyan0l4kviZFr7Vsz4UbSv5bPTjRHo
	e+Lxo0poSFo6a6CPzVee9CdZ63Sz1nhJZrAN9anQ+QOpA4F/eA0GvG1Y0zhylArirLwi
	NdzG30xP6xJUSZQdHNjcgJoDYnQCpKs5UsKcG7USLvetT8u8Td6OGvkQ0dzjuK9Akunu
	eSou3rqHIUOQ26KMfoNFBQZwTWZdI/2JEbgd/6foDxNRTmgJrpZS6iSWcBX9NYiVmNZ2
	5vkg==
X-Gm-Message-State: AFeK/H2ggN2RcIJ1n2vtm1knRUV1YuKIW+qgxnuEGal2S/uRZSpKj+is7cyBMRS9QqlUcf1PJgpi/cyo1UETIw==
X-Received: by 10.55.41.74 with SMTP id p71mr21290913qkh.246.1490623301031;
	Mon, 27 Mar 2017 07:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <579ec200-a223-5f6b-83d6-a6e7f26b66e1@iseg-hv.de>
In-Reply-To: <579ec200-a223-5f6b-83d6-a6e7f26b66e1@iseg-hv.de>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Mon, 27 Mar 2017 14:01:30 +0000
Message-ID: <CAP2S6e562AJn8rDgScBoAZfyqcTvgbPcZMboTwDBx20bmFdMgQ@mail.gmail.com>
To: Yuvarajesh Valleru <yv@iseg-hv.de>, yocto@yoctoproject.org
Subject: Re: Could not inherit qt5 in to custom linux image.
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
X-List-Received-Date: Mon, 27 Mar 2017 14:01:44 -0000
Content-Type: multipart/alternative; boundary=001a1147acdc5a2214054bb6c832

--001a1147acdc5a2214054bb6c832
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm also interested in this question. I am planning to write a qt5 app
recipe in the next few days.

I might be totally wrong but I looked a bit at the meta-qt5 examples (
https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/examples/quitba=
ttery_1.0.0.bb)
and it seems you should replace "inherit qt4e" with "require
recipes-qt/qt5/qt5.inc".

qt5.inc containing "inherit qmake5" but also many more stuff.
https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/qt5/qt5.inc

Can you try with that ?

Regards,

Le lun. 27 mars 2017 =C3=A0 15:30, Yuvarajesh Valleru <yv@iseg-hv.de> a =C3=
=A9crit :

> Hi,
>
> I am building a linux image using yocto project. I have an apalis imx6
> module in which i already deployed an image with toradex console image
> (image from toradex). Now i have an own custom image meta-ball in which i
> have copied the recipes-qt from console-trdx-image. And i am trying to
> build my image in the same way like toradex image but could not build.
>
> one examle how my own recipe contains.
>
> SUMMARY =3D "ball include to get access to the devices"
> HOMEPAGE =3D "http://www.google.com"
> License =3D "CLOSED"
>
> inherit =3D qmake5
> inherit =3D systemd
> SYSTEMD_SERVICE_${PN} =3D "vrl.service vrl.socket"
>
> SRC_URI =3D " \git://.............
> "
> S =3D "${WORKDIR}/git"
>
> DEPENDS +=3D " "
> PROVIDES +=3D " "
>
> QMAKE_PROFILES =3D "${S}/vrl.pro
> "
> EXTRA_QMAKEVARS_PRE =3D "
> CONFIG+=3DSYSTEMD_SOCKET_ACTIVATION
> "
> do_install () {
> install -d ${D}${libdir}
> #use here cp instead of install because of symlinks
> cp -pr ${S}libvrl* ${D}${libdir}
>
> .........................................................................=
.................
>
> .........................................................................=
..............
>
> previously this vrl.inc file contains inherit qt4e in place of qmake5
> now for updating to qt5 i have an error : install cannot stat
> '/home/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gn=
ueabi/vrl/1.0.-r0/git/vrl'
> : no such file or directory.
>
>
> Regards,
>
> yv
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1147acdc5a2214054bb6c832
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m also int=
erested in this question. I am planning to write a qt5 app recipe in the ne=
xt few days.<br><br> </div>I might be totally wrong but I looked a bit at t=
he meta-qt5 examples (<a href=3D"https://github.com/meta-qt5/meta-qt5/blob/=
master/recipes-qt/examples/quitbattery_1.0.0.bb">https://github.com/meta-qt=
5/meta-qt5/blob/master/recipes-qt/examples/quitbattery_1.0.0.bb</a>) and it=
 seems you should replace &quot;inherit qt4e&quot; with &quot;require recip=
es-qt/qt5/qt5.inc&quot;.<br><br></div>qt5.inc containing &quot;inherit qmak=
e5&quot; but also many more stuff. <br><a href=3D"https://github.com/meta-q=
t5/meta-qt5/blob/master/recipes-qt/qt5/qt5.inc">https://github.com/meta-qt5=
/meta-qt5/blob/master/recipes-qt/qt5/qt5.inc</a><br></div></div><div><br></=
div><div>Can you try with that ?<br></div><div><br></div>Regards,<br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0lun. 27 mars 2017 =
=C3=A0=C2=A015:30, Yuvarajesh Valleru &lt;<a href=3D"mailto:yv@iseg-hv.de">=
yv@iseg-hv.de</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"gmail_msg">
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg"><span class=3D"m_8497770895668845428Apple-converted-space gm=
ail_msg">Hi, <br class=3D"gmail_msg">
      </span></p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg"><span class=3D"m_8497770895668845428Apple-converted-space gm=
ail_msg"></span>I am building a linux image
      using yocto project. I have an apalis imx6 module in which i
      already deployed an image with toradex console image (image from
      toradex). Now i have an own custom image meta-ball in which i have
      copied the recipes-qt from console-trdx-image. And i am trying to
      build my image in the same way like toradex image but could not
      build.</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">one examle how my own
      recipe contains.</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">SUMMARY =3D &quot;ball include to
      get access to the devices&quot;<br style=3D"box-sizing:border-box" cl=
ass=3D"gmail_msg">
      HOMEPAGE =3D &quot;<a href=3D"http://www.google.com/" rel=3D"nofollow=
" style=3D"box-sizing:border-box;background-color:transparent;color:rgb(51,=
122,183);text-decoration:none" class=3D"gmail_msg" target=3D"_blank">http:/=
/www.google.com</a>&quot;<br style=3D"box-sizing:border-box" class=3D"gmail=
_msg">
      License =3D &quot;CLOSED&quot;</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">inherit =3D qmake5<br style=3D"box-sizing:border-box" class=
=3D"gmail_msg">
      inherit =3D systemd<br style=3D"box-sizing:border-box" class=3D"gmail=
_msg">
      SYSTEMD_SERVICE_${PN} =3D &quot;vrl.service vrl.socket&quot;</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">SRC_URI =3D &quot;
      \git://.............<br style=3D"box-sizing:border-box" class=3D"gmai=
l_msg">
      &quot;<br style=3D"box-sizing:border-box" class=3D"gmail_msg">
      S =3D &quot;${WORKDIR}/git&quot;</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">DEPENDS +=3D &quot; &quot;<br style=3D"box-sizing:border-box=
" class=3D"gmail_msg">
      PROVIDES +=3D &quot; &quot;</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">QMAKE_PROFILES =3D
      &quot;${S}/<a href=3D"http://vrl.pro" class=3D"gmail_msg" target=3D"_=
blank">vrl.pro</a><span class=3D"m_8497770895668845428Apple-converted-space=
 gmail_msg">=C2=A0</span><br style=3D"box-sizing:border-box" class=3D"gmail=
_msg">
      &quot;<br style=3D"box-sizing:border-box" class=3D"gmail_msg">
      EXTRA_QMAKEVARS_PRE =3D &quot;<span class=3D"m_8497770895668845428App=
le-converted-space gmail_msg">=C2=A0</span><br style=3D"box-sizing:border-b=
ox" class=3D"gmail_msg">
      CONFIG+=3DSYSTEMD_SOCKET_ACTIVATION<span class=3D"m_84977708956688454=
28Apple-converted-space gmail_msg">=C2=A0</span><br style=3D"box-sizing:bor=
der-box" class=3D"gmail_msg">
      &quot;<br style=3D"box-sizing:border-box" class=3D"gmail_msg">
      do_install () {<br style=3D"box-sizing:border-box" class=3D"gmail_msg=
">
      install -d ${D}${libdir}<br style=3D"box-sizing:border-box" class=3D"=
gmail_msg">
      #use here cp instead of install because of symlinks<br style=3D"box-s=
izing:border-box" class=3D"gmail_msg">
      cp -pr ${S}libvrl* ${D}${libdir}<br style=3D"box-sizing:border-box" c=
lass=3D"gmail_msg">
...........................................................................=
...............<br style=3D"box-sizing:border-box" class=3D"gmail_msg">
...........................................................................=
............</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">previously this vrl.inc
      file contains inherit qt4e in place of qmake5<br style=3D"box-sizing:=
border-box" class=3D"gmail_msg">
      now for updating to qt5 i have an error : install cannot stat
&#39;/home/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-=
gnueabi/vrl/1.0.-r0/git/vrl&#39;
      : no such file or directory.</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg"><br class=3D"gmail_msg">
    </p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">Regards,</p>
    <p style=3D"box-sizing:border-box;margin:0px 0px 10px;color:rgb(51,51,5=
1);font-family:&quot;Titillium Web&quot;;font-size:14px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255)" class=
=3D"gmail_msg">yv<br class=3D"gmail_msg">
    </p>
  </div>

--<br class=3D"gmail_msg">
_______________________________________________<br class=3D"gmail_msg">
yocto mailing list<br class=3D"gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
</blockquote></div>

--001a1147acdc5a2214054bb6c832--
