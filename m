Return-Path: <brianz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F4AE00566; Thu,  4 Oct 2018 09:33:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (brianz[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
	[209.85.217.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 454A6E00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 09:33:09 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id v12-v6so5759427vsc.1
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 09:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dwb/UMjiDHiO/6msgH5EfXld+OXSjpCFWL+Y15c0IeI=;
	b=P5OqN8Ng4n3LknMR/qnPDQxWF+oGielDblQ83yhq5bZtga3L70hwNRZLDrAjVUqeLl
	arRdV6t1n1i9AnC15X6EHkLf+Q3fB6AJj54n8QzQ9iN+N+r/k4rj6LnzUKcodAKb1RBV
	KvyP+aXR4PnVIdGC60e6IVTavl71nAh2MCzr0+gIQnHPmuoSX9Fl7D3WlGHeu1trZiaw
	f2nK3X/rhWNrG2sdf6gaYfwpPjHZTGrfFWxXGjYcvfbagAEiXMVej+JIu4l0U/0SxmGb
	+BYG2fald9Pn5KSCQl2wZH3dm92GIcZk3KNpTvNNFxVK+IbzcJLKMLFsKWGKhax5ZlEb
	1FTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dwb/UMjiDHiO/6msgH5EfXld+OXSjpCFWL+Y15c0IeI=;
	b=R3uedllS/X3HK9dy5iUF5KFA/QzXOSz0Xmh0vXD9gkU/vGnwp8ZzMxP8mKaVYxzxoY
	NIsOonvDYS/4U6+4k4cilqNmVPR2Ni1sbrdqUEGBb6vGlMQ75tJf1bVxyUH7BkrBjIAL
	M+4I8dJ5Na/sCYVXuB4zTaLJvrFoNbD47QQHuup7w9hj0wvPCNTc+hSkfaU7sR0tEQnM
	YrmckT2YjHjKwSW5GAiXJXCqfKANcOEPcpNyGisxRRZ3xUgVi5ZdpdhpfsfAf0iUMwjQ
	LI15u1+7DS5xSjqg0DkuDSqEN2WiRQY6vQRwATXU36qu+PiV6Fio/woEgcJ6ffmIhYZm
	QA9w==
X-Gm-Message-State: ABuFfogq0BnPr64DFBE9CuTUt6WDVEIoe6GudH34YyYYo/oyv71rUZ9D
	fkmiksG4q8hew4Vs1kaR0cV0OEO8fd28wq1OKLa4zrU0
X-Google-Smtp-Source: ACcGV60XDZDTX62k80fHVQyxJuiMjlUlky+g/eQarXI2EHb92jUmqz6bq1PMUKnzFnnwFcHoI6UJ3naU/hOu46vV1QU=
X-Received: by 2002:a67:42c5:: with SMTP id
	p188-v6mr201680vsa.159.1538670788114; 
	Thu, 04 Oct 2018 09:33:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAE18oz8o-AKA5OBtV63odQx=gfMPa3MD=EU52BeU8Z2Zb26Ttw@mail.gmail.com>
	<000401d45bba$16c6d0c0$44547240$@uni-bremen.de>
In-Reply-To: <000401d45bba$16c6d0c0$44547240$@uni-bremen.de>
From: Brian Zambrano <brianz@gmail.com>
Date: Thu, 4 Oct 2018 10:32:56 -0600
Message-ID: <CAE18oz9A=Zwxu9QMzmLugkf3jMvg2yxzSCV8PWbkF9UvgXPWZw@mail.gmail.com>
To: desai@uni-bremen.de
Cc: yocto@yoctoproject.org
Subject: Re: Installing Python app from source
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
X-List-Received-Date: Thu, 04 Oct 2018 16:33:10 -0000
Content-Type: multipart/alternative; boundary="000000000000c07fc0057769b5f4"

--000000000000c07fc0057769b5f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks very much for this Shan. I have that book and was working through it
yesterday, as a matter of fact.

That part which is confusing to me in that recipe is that the SRC_URI
points to every single file, there is a "inherit setuptools" line and also
a do_install_append. I'm not sure how each of these are working together to
get the application installed. I believe that the "inherit setuptools" will
automatically run "python setup.py install", but when then is the source
code manually copied over?

BZ

On Thu, Oct 4, 2018 at 2:13 AM Shantanoo Desai <desai@uni-bremen.de> wrote:

> Hi Brian,
>
>
>
> What you need in the .bb is a runtime-dependency. RDEPENDS_${PN} +=3D =E2=
=80=9C
> ${PYTHON_PN}-flask ${PYTHON_PN}-jinja ${PYTHON_PN}-markdown=E2=80=9D and =
so on.
> This will add these modules in the root-filesystem and will be available =
on
> the target.
>
>
>
> If you need some basic help with a python recipe, there is a git
> repository YoctoCookbook
> https://github.com/yoctocookbook/meta-custom/tree/master/recipes-python/p=
ython-helloworld
> to get you some idea.
>
>
>
> Please not I am in no ways a Yocto expert on recipe creations but for the
> past few weeks this is what I have been able to discover. Due to lack of
> examples on custom recipes in python this is the best I can help you with=
.
>
>
>
>
>
> Best Regards,
>
>
>
> Shan
>
>
>
>
>
>
>
> *Von:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> *I=
m
> Auft**rag von *Brian Zambrano
> *Gesendet:* Donnerstag, 4. Oktober 2018 00:52
> *An:* yocto@yoctoproject.org
> *Betreff:* [yocto] Installing Python app from source
>
>
>
> I'm trying to install my own Python application from source, and having a
> hard time finding resources on how to accomplish it. I'm new to this
> ecosystem and am probably missing something fundamental.
>
> My recipe is structured like this...and my build is configure such that i=
t
> does actually find it.
>
> =E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend
>
> =E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb
>
> My application code which is for now just a "hello world" flask
> application, is in saunders_backend. The setup.py file in there works as
> expected when I use it in on my host machine.
>
> =E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend/
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 server
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 requirements.txt
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 config.py
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 __init__.=
py
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 models.py
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 static/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 templates=
/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 views.py
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 setup.py
>
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend/
> =E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb
>
>
> I've been hacking on the .bb files to get it to install this into the
> resulting image. I do have IMAGE_INSTALL_append =3D " firmware" in the
> top-level local.conf.
>
>
>
> My primary confusion is that I don't know what I should be using for the
> python application. do_install, do_install_append? What should SRC_UIR be=
?
> In effect is that I want the exact same behavior of "cd saunders_backend
> && pip install ." My setup.py file has install_requires with a list of
> all dependencies, which now is merely Flask.
>
>
>
> Pointers would be appreciated.
>
> BZ
>

--000000000000c07fc0057769b5f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks very=C2=A0much for this Shan. I ha=
ve that book and was working through it yesterday, as a matter of fact.<div=
><br></div><div>That part which is confusing to me in that recipe is that t=
he SRC_URI points to every single file, there is a &quot;<span style=3D"col=
or:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&=
quot;,Menlo,Courier,monospace;font-size:12px;white-space:pre">inherit setup=
tools&quot; </span>line and also a do_install_append. I&#39;m not sure how =
each of these are working together to get the application installed. I beli=
eve that the &quot;inherit setuptools&quot; will automatically run &quot;py=
thon setup.py install&quot;, but when then is the source code manually copi=
ed over?</div><div><br></div><div>BZ</div></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Thu, Oct 4, 2018 at 2:13 AM Shantanoo Desai &=
lt;<a href=3D"mailto:desai@uni-bremen.de">desai@uni-bremen.de</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-GB" link=3D"blue"=
 vlink=3D"purple"><div class=3D"m_-419232267919913050WordSection1"><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">Hi Brian,<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNo=
rmal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:#1f497d">What you need in the .bb is a runtime-dependency. RDEP=
ENDS_${PN} +=3D =E2=80=9C ${PYTHON_PN}-flask ${PYTHON_PN}-jinja ${PYTHON_PN=
}-markdown=E2=80=9D and so on. This will add these modules in the root-file=
system and will be available on the target. <u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&=
quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"=
MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:#1f497d">If you need some basic help with a python recipe,=
 there is a git repository YoctoCookbook <a href=3D"https://github.com/yoct=
ocookbook/meta-custom/tree/master/recipes-python/python-helloworld" target=
=3D"_blank">https://github.com/yoctocookbook/meta-custom/tree/master/recipe=
s-python/python-helloworld</a> to get you some idea.<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibr=
i&quot;,sans-serif;color:#1f497d">Please not I am in no ways a Yocto expert=
 on recipe creations but for the past few weeks this is what I have been ab=
le to discover. Due to lack of examples on custom recipes in python this is=
 the best I can help you with.<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;col=
or:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"DE" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#1f497d">Best Regards,<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"DE" style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"DE" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1f497d">Shan<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b>=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
>Von:</span></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=
=3D"_blank">yocto-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:yocto-=
bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org<=
/a>&gt; <b>Im Auft</b></span><b><span lang=3D"DE" style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif">rag von </span></b><span lang=
=3D"DE" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f">Brian Zambrano<br><b>Gesendet:</b> Donnerstag, 4. Oktober 2018 00:52<br>=
<b>An:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br><b>Betreff:</b> [yocto] Installing Python app fro=
m source<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u=
></p><div><div><div><div><div><div><div><p class=3D"MsoNormal">I&#39;m tryi=
ng to install my own Python application from source, and having a hard time=
 finding resources on how to accomplish it. I&#39;m new to this ecosystem a=
nd am probably missing something fundamental.<br><br>My recipe is structure=
d like this...and my build is configure such that it does actually find it.=
<br><br><span style=3D"font-family:&quot;Courier New&quot;">=E2=94=9C=E2=94=
=80=E2=94=80 firmware-1.0<br>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 s=
aunders_backend<br>=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 saunders_fr=
ontend</span><u></u><u></u></p><div><p class=3D"MsoNormal"><span style=3D"f=
ont-family:&quot;Courier New&quot;">=E2=94=94=E2=94=80=E2=94=80 <a href=3D"=
http://firmware_1.0.bb" target=3D"_blank">firmware_1.0.bb</a></span><br><br=
>My application code which is for now just a &quot;hello world&quot; flask =
application, is in saunders_backend. The setup.py file in there works as ex=
pected when I use it in on my host machine.<br><br><span style=3D"font-fami=
ly:&quot;Courier New&quot;">=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0<br>=E2=
=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 saunders_backend/<br>=E2=94=82 =
=C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 bin/<br>=E2=94=82 =C2=
=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 server<br=
>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in<=
br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 requiremen=
ts.txt<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sau=
nders_apollo/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 config.py<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 __init__.py<br>=E2=94=82 =C2=A0 =E2=
=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 models.py<br>=E2=
=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80=
 static/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 templates/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =
=C2=A0 =E2=94=94=E2=94=80=E2=94=80 views.py<br>=E2=94=82 =C2=A0 =E2=94=82 =
=C2=A0=C2=A0=E2=94=94=E2=94=80=E2=94=80 setup.py</span><u></u><u></u></p></=
div><div><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier Ne=
w&quot;">=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 saunders_frontend/<br=
>=E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://firmware_1.0.bb" target=3D"_=
blank">firmware_1.0.bb</a></span><u></u><u></u></p></div><div><p class=3D"M=
soNormal"><span style=3D"font-family:&quot;Courier New&quot;"><br></span>I&=
#39;ve been hacking on the .bb files to get it to install this into the res=
ulting image. I do have=C2=A0<span style=3D"font-family:&quot;Courier New&q=
uot;">IMAGE_INSTALL_append =3D &quot; firmware&quot; </span>in the top-leve=
l local.conf.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p></div><div><p class=3D"MsoNormal">My primary confusion is tha=
t I don&#39;t know what I should be using for the python application. do_in=
stall, do_install_append? What should SRC_UIR be? In effect is that I want =
the exact same behavior of &quot;cd=C2=A0<span style=3D"font-family:&quot;C=
ourier New&quot;">saunders_backend &amp;&amp; pip install .&quot;=C2=A0</sp=
an>My setup.py file has <span style=3D"font-family:&quot;Courier New&quot;"=
>install_requires</span> with a list of all dependencies, which now is mere=
ly Flask.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<=
u></u></p></div><div><p class=3D"MsoNormal">Pointers would be appreciated.<=
u></u><u></u></p></div><div><p class=3D"MsoNormal">BZ<u></u><u></u></p></di=
v></div></div></div></div></div></div></div></div></div></blockquote></div>

--000000000000c07fc0057769b5f4--
