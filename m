Return-Path: <texier.pj2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 706FDE00E21; Tue, 23 Jan 2018 23:41:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (texier.pj2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F537E00D8D
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 23:41:34 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id r71so6533289wmd.1
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 23:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DtjKJvsvSp40DDD5ZMpkTQa7cS86IIdMYwvmzvZmrsk=;
	b=WgYQyVR2IgAts6g7OIY59RQPguynwV1VmSpyj91bv+jWi6ESkDToKo41EPKXkGxxh+
	ZKsz/IiKBDjHfty5alfPcaGScZIrCPDaJ5b81VzIY9hoNzDlkDr1wcgtGXV9qfTuVaZw
	+spXBz82XCgkaA34VLHoBkixs2fifX6gKbH2Nb/DpBMxnIN8iyuQ5bWMlk8ORdcLbMZE
	lyLi7GUZ3UOAsA3i2YpZdmoeCbIGydNrCuu76PEyzf8FlrsTSNP4CWnYvm7x4tMPnNGc
	sk7dAeGlnt4lXPAcCCHlJoMiF1/iyUKOQLGBN68xHmSHiCAxEmBQwB1Vzx9ojdQMDGef
	Begg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DtjKJvsvSp40DDD5ZMpkTQa7cS86IIdMYwvmzvZmrsk=;
	b=ewStZ/+xGcAwEa5451Jnqxa8iVXub2TNyQa/czkzvhkirbubo+tcCDOBI+LT1/L9CB
	V984Gmfw/3a2fEiEpNyXUIl7uqowyy6u3y1o7jTCu7yFL2qrNs8yj41r+OHxQN+9lRVy
	fKPqKjpg38OTgsVmP+cwxGAeIMoYHUPt+ufBRXEvnLdVJyXCnNF5HJDrC+uXZUPvzjLC
	RoyUrmostSINXTfgSuOULkWH8gK0nu+SV57dacTQgHdYz7AxzUJGQK1dJGg/PHK3Fm0L
	S93xIe/FyR5Lfq51LFBhOa8uGUJp0F0bMzuc9UFGXZkx7Vcar6EMvks2jfTe/zq2trwf
	J+NA==
X-Gm-Message-State: AKwxytfjLlfoN3LhpZ6lMbsfNzJMT/4sAbD30Lb7Z+II12+4s+nFfhVm
	RsPHqKaZffovvHNyzMcHNI3iOIrFq0J3qLcAnQwoOQ==
X-Google-Smtp-Source: AH8x2266q+3hIxrZMxEPT55DO1gH5gsDM6jVcmSR+YM2L9ZM5nw/7ePFb9JAKNZp3FfL1kcydZk9I0iAWOwgDzbvSIw=
X-Received: by 10.80.182.181 with SMTP id d50mr23301842ede.116.1516779693989; 
	Tue, 23 Jan 2018 23:41:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.175.66 with HTTP; Tue, 23 Jan 2018 23:41:33 -0800 (PST)
In-Reply-To: <008f01d394e1$23ddfea0$6b99fbe0$@co.kr>
References: <008f01d394e1$23ddfea0$6b99fbe0$@co.kr>
From: TEXIER Pierre-Jean <texier.pj2@gmail.com>
Date: Wed, 24 Jan 2018 08:41:33 +0100
Message-ID: <CALRtUqsqyDYDSW0QjKHfOa_JL8nyJJyYi8F3qHmvDeEWLRnWgw@mail.gmail.com>
To: =?UTF-8?B?6rWs64+Z7ZiE?= <dhkoo@m2i.co.kr>
Cc: yocto@yoctoproject.org
Subject: Re: libQt5Core.so.5 not found
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
X-List-Received-Date: Wed, 24 Jan 2018 07:41:36 -0000
X-Groupsio-MsgNum: 39653
Content-Type: multipart/related; boundary="f403045c0d3edcfd2c056380caa3"

--f403045c0d3edcfd2c056380caa3
Content-Type: multipart/alternative; boundary="f403045c0d3edcfd2a056380caa2"

--f403045c0d3edcfd2a056380caa2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

2018-01-24 8:01 GMT+01:00 =EA=B5=AC=EB=8F=99=ED=98=84 <dhkoo@m2i.co.kr>:

> Hi.
>
>
>
> Since last year, I worked with Qt5 with Yocto, exactly 5.9.2.
>
> And few days ago, I lost whole working environment. So I should
> re-download openembedded layers, include meta-qt5.
>
> After that, when I going to use Qt5 applications, Kernel prints error
> likes below
>
>
>
> *# error while loading shared libraries: libQt5Core.so.5: cannot open
> shared object file: No such file or directory*
>
>
>
> And here is ldd message of Qt5.
>
> *libQt5Widgets.so.5 =3D> /usr/lib/libQt5Widgets.so.5 (0xb6ab8000)*
>
> *libQt5Gui.so.5 =3D> /usr/lib/libQt5Gui.so.5 (0xb665c000)*
>
> *libQt5Core.so.5 =3D> not found*
>
>
>
> As you see, every Qt5 library linked successfully except libQt5Core.so.5.
>
> I checked meta-qt5 repository, and found It upgraded to 5.10.0 at 17. Dec=
.
> 2017.
>
>
>
> If I downgrade Qt5 to 5.9.2, this error not occurs. I can solve my proble=
m
> by using Qt 5.9.2, but you know, some latest skills like Qt MQTT can only
> be used after Qt 5.10.
>

What is your Kernel version ?

---
Pierre-Jean Texier


>
>
> Is there any ideas?
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> [image: =EA=B5=AC=EB=8F=99=ED=98=84(=ED=95=9C=EA=B8=80)]
>
> *(**=EC=A3=BC)=EC=97=A0=ED=88=AC=EC=95=84=EC=9D=B4=EC=BD=94=ED=8D=BC=EB=
=A0=88=EC=9D=B4=EC=85=98 / **http://www.m2i.co.kr <http://www.m2i.co.kr>*
>
> *=EC=8B=A0) (14086) =EA=B2=BD=EA=B8=B0 =EC=95=88=EC=96=91=EC=8B=9C =EB=A7=
=8C=EC=95=88=EA=B5=AC =EC=A0=84=ED=8C=8C=EB=A1=9C24=EB=B2=88=EA=B8=B8 35-11=
(=EC=95=88=EC=96=91=EB=8F=99) =EC=97=A0=ED=88=AC=EC=95=84=EC=9D=B4=EB=B9=8C=
=EB=94=A9 *
>
> *=EA=B5=AC) (14086) =EA=B2=BD=EA=B8=B0 =EC=95=88=EC=96=91=EC=8B=9C =EB=A7=
=8C=EC=95=88=EA=B5=AC =EC=95=88=EC=96=917=EB=8F=99 196-38 =EC=97=A0=ED=88=
=AC=EC=95=84=EC=9D=B4=EB=B9=8C=EB=94=A9*
>
> *=EC=A7=81=ED=86=B5. 070-4844-3624  Fax. 031-465-3355  E-mail: dhkoo@m2i.=
co.kr
> <http://syjang@m2i.co.kr>*
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403045c0d3edcfd2a056380caa2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">2018-01-24 8:01 GMT+01:00 =EA=B5=AC=EB=8F=99=ED=98=84 <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:dhkoo@m2i.co.kr" target=3D"_blank">dhk=
oo@m2i.co.kr</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-color:rgb(204,204,204=
);border-left-width:1px;border-left-style:solid">









<div lang=3D"KO" vlink=3D"purple" link=3D"blue">

<div class=3D"m_5274363018362467074Section1">

<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">Since last year, I worked with =
Qt5 with
Yocto, exactly 5.9.2.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">And few days ago, I lost whole =
working
environment. So I should re-download openembedded layers, include meta-qt5.=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">After that, when I going to use=
 Qt5
applications, Kernel prints error likes below<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><b><span lang=3D"EN-US"># error while loading shared=
 libraries:
libQt5Core.so.5: cannot open shared object file: No such file or directory<=
u></u><u></u></span></b></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">And here is ldd message of Qt5.=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><b><span lang=3D"EN-US">libQt5Widgets.so.5 =3D&gt;
/usr/lib/libQt5Widgets.so.5 (0xb6ab8000)<u></u><u></u></span></b></p>

<p class=3D"MsoNormal"><b><span lang=3D"EN-US">libQt5Gui.so.5 =3D&gt;
/usr/lib/libQt5Gui.so.5 (0xb665c000)<u></u><u></u></span></b></p>

<p class=3D"MsoNormal"><b><span lang=3D"EN-US">libQt5Core.so.5 =3D&gt; not =
found<u></u><u></u></span></b></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">As you see, every Qt5 library l=
inked
successfully except libQt5Core.so.5.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">I checked meta-qt5 repository, =
and found It
upgraded to 5.10.0 at 17. Dec. 2017.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">If I downgrade Qt5 to 5.9.2, th=
is error not
occurs. I can solve my problem by using Qt 5.9.2, but you know, some latest
skills like Qt MQTT can only be used after Qt 5.10.</span></p></div></div><=
/blockquote><div><br></div><div>What is your Kernel version ?</div><div><br=
></div><div>---</div><div>Pierre-Jean Texier</div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;padding-left:1e=
x;border-left-color:rgb(204,204,204);border-left-width:1px;border-left-styl=
e:solid"><div lang=3D"KO" vlink=3D"purple" link=3D"blue"><div class=3D"m_52=
74363018362467074Section1"><p class=3D"MsoNormal"><span lang=3D"EN-US"><u><=
/u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there any ideas?<u></u><u></=
u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><img width=3D"311" height=3D"76=
" id=3D"m_5274363018362467074=EA=B7=B8=EB=A6=BC_x0020_1" alt=3D"=EA=B5=AC=
=EB=8F=99=ED=98=84(=ED=95=9C=EA=B8=80)" src=3D"cid:image001.jpg@01D3952C.92=
EA61D0"><u></u><u></u></span></p>

<p align=3D"left" class=3D"MsoNormal" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"color:black;font-size:10.5pt">(</span></b><b><span st=
yle=3D"color:black;font-size:10.5pt">=EC=A3=BC<span lang=3D"EN-US">)</span>=
=EC=97=A0=ED=88=AC=EC=95=84=EC=9D=B4=EC=BD=94=ED=8D=BC=EB=A0=88=EC=9D=B4=EC=
=85=98<span lang=3D"EN-US"> / </span></span></b><b><span lang=3D"EN-US" sty=
le=3D"color:black;font-size:9pt"><a href=3D"http://www.m2i.co.kr" target=3D=
"_blank"><span style=3D"color:blue">http://www.m2i.co.kr</span></a></span><=
/b><b><span lang=3D"EN-US" style=3D"color:black;font-size:10.5pt"><u></u><u=
></u></span></b></p>

<p class=3D"MsoNormal"><b><span style=3D"color:black;font-size:9pt">=EC=8B=
=A0<span lang=3D"EN-US">) (14086) </span>=EA=B2=BD=EA=B8=B0 =EC=95=88=EC=96=
=91=EC=8B=9C =EB=A7=8C=EC=95=88=EA=B5=AC =EC=A0=84=ED=8C=8C=EB=A1=9C<span l=
ang=3D"EN-US">24</span>=EB=B2=88=EA=B8=B8<span lang=3D"EN-US"> 35-11(</span=
>=EC=95=88=EC=96=91=EB=8F=99<span lang=3D"EN-US">) </span>=EC=97=A0=ED=88=
=AC=EC=95=84=EC=9D=B4=EB=B9=8C=EB=94=A9 <span lang=3D"EN-US"><u></u><u></u>=
</span></span></b></p>

<p class=3D"MsoNormal"><b><span style=3D"color:black;font-size:9pt">=EA=B5=
=AC<span lang=3D"EN-US">) (14086) </span>=EA=B2=BD=EA=B8=B0 =EC=95=88=EC=96=
=91=EC=8B=9C =EB=A7=8C=EC=95=88=EA=B5=AC =EC=95=88=EC=96=91<span lang=3D"EN=
-US">7</span>=EB=8F=99<span lang=3D"EN-US"> 196-38 </span>=EC=97=A0=ED=88=
=AC=EC=95=84=EC=9D=B4=EB=B9=8C=EB=94=A9<span lang=3D"EN-US"><u></u><u></u><=
/span></span></b></p>

<p class=3D"MsoNormal"><b><span style=3D"color:black">=EC=A7=81=ED=86=B5<sp=
an lang=3D"EN-US">.
070-4844-3624=C2=A0 Fax. 031-465-3355=C2=A0 E-mail: <a href=3D"http://syjan=
g@m2i.co.kr" target=3D"_blank"><span style=3D"color:blue">dhkoo@m2i.co.kr</=
span></a></span></span></b><b><span lang=3D"EN-US" style=3D"color:black"><u=
></u><u></u></span></b></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>

</div>

</div>


<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
 rel=3D"noreferrer">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--f403045c0d3edcfd2a056380caa2--

--f403045c0d3edcfd2c056380caa3
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image001.jpg@01D3952C.92EA61D0>
X-Attachment-Id: 3a55a307cf953a82_0.0.1

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

--f403045c0d3edcfd2c056380caa3--
