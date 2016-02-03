Return-Path: <yannickkiekens@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D66E00C2D; Tue,  2 Feb 2016 23:41:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yannickkiekens[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30A49E00C2A
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 23:40:56 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id bc4so6910216lbc.2
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 23:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xr8StZfVgHULyTRqJoSi66qTrsqdaSS2b3MTKwnc0ms=;
	b=nMsCU+KnLarZ6WU/4fIRSRlhbdc7zndl8FAptFH6Axw5l52zNAzbK1THcijjqBKFKt
	bf45s2ll/2EDS7P15TMG7pqzIssCgM806wjilkdCJJbZB04ZAciDR/pFFNCoERLXL0ns
	zRBWnaBDWjFwLLZLEgcWz+CdeA+24InWLiQeyUL2eDzLY3arcmu4hozKcDrf+Tm6Co+k
	Las3JAg6XelupAzAYZiPv94uzHbDtUE3x7rtZIWluBkiC4VBMXZyl72fND2dzEVtndlo
	v1ZXYnW4y7MoaEsjWw7/51HBfRK1gWDWf6hCZIxYFlEtovxk8y4UPfyeqbGoBO7yLJQt
	B0uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=xr8StZfVgHULyTRqJoSi66qTrsqdaSS2b3MTKwnc0ms=;
	b=LE5vrhIL0lZkvh2gPA6LzEcFF3A8gIfV1VI41sjF3BwUYa7dcyBOipjq71VkuhAGFg
	oHg9GGmrthwr8Zl1ilRUttM+nSryL+brgNnhzU61c1gbiKfCkMhDR1J254lA7WtBGHRJ
	36D+ij5FY3xLBw8kwqR/FHuG3wMxpwDl+pDr3Ga/axG6PELZQ+Y8NXO0VEBgtuCwQaEf
	P2H0zWYtgof4uhASl8elO8FqifUp3xmR+VPdiylxliqRB8K7sH5JZVTXkH1zBbw1RUE9
	OSZD6Tm2E2n1Lhdcf02/vc4+/bAasSGsbvAxXYwX2sbaD0WwVT6iycXL6wLZvTYUHJO2
	k60A==
X-Gm-Message-State: AG10YORCJZGRn/wnVxNeufuEdDJuWjTItxWT9GJBK7hmXSZ22GX+aMMI1Mr3jHyVW2+3wf7vTO+EgsVO9sD4pw==
MIME-Version: 1.0
X-Received: by 10.112.141.97 with SMTP id rn1mr52996lbb.80.1454485254839; Tue,
	02 Feb 2016 23:40:54 -0800 (PST)
Received: by 10.112.18.8 with HTTP; Tue, 2 Feb 2016 23:40:54 -0800 (PST)
In-Reply-To: <AC56FBE6-C8E7-47CF-971A-3E3F8C3F4422@gmail.com>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
	<AC56FBE6-C8E7-47CF-971A-3E3F8C3F4422@gmail.com>
Date: Wed, 3 Feb 2016 08:40:54 +0100
Message-ID: <CAEyFGJGx-Cns4Sj3bru4L-e2cCmO+w0dPOy5TkYad9+n+0BuSQ@mail.gmail.com>
From: Yannick Kiekens <yannickkiekens@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not properly set
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
X-List-Received-Date: Wed, 03 Feb 2016 07:41:02 -0000
Content-Type: multipart/alternative; boundary=001a11c383f6f228be052ad8bcd0

--001a11c383f6f228be052ad8bcd0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Have a look at this git repo: https://github.com/YannickKiekens/meta-qt5-pi

I have build a qt5 eglfs with raspberry pi2 backend on master branch
yesterday evening

On Wed, Feb 3, 2016 at 7:08 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Feb 2, 2016, at 8:50 AM, GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
> wrote:
>
> Hi,
>
> It seems that there are some stiff missing between meta-qt5 or
> meta-raspberrypi.
> When we set the option gles=E2=80=A6 to qtbase we don=E2=80=99t get the Q=
MAKE_LIBS_EGL set
> properly.
> We can compare a working set of variables in the qt mkspecs directory of
> qt.
> There is one dedicated file for the RaspberryPi2. May be one also for
> RaspberryPi.
> Anyway!
> How could we set those *_EGL variables properly? And=E2=80=A6 If they are=
 properly
> set, will qtbase will take them into account?
>
> I will be happy to propose a patch but I need to get more precision first=
.
>
>
> Firstly show the DISTRO_FEATURES may be you are missing some important
> knobs for EGL
> like openGL and gles2 etc.
>
> Thanks in advance,
>
>
>
> *Julien GUEYTAT*
> *Ing=C3=A9nieur Informatique*
> <image001.png>
> 1027, avenue du Docteur Julien Lefebre BP27
> 06271 Villeneuve-Loubet Cedex
> *Fixe* :  +33 (0) 492 024 545
> *Mob* :  +33(0) 617 980 383
> *Fax* :    +33(0) 492 024 546
> *Email* : j.gueytat@cdssoft.studiel.fr
> *www* : www.studiel.fr
> *P* *Pensez Environnement, imprimez seulement si n=C3=A9cessaire*
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
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

--001a11c383f6f228be052ad8bcd0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif;font-size:small">Have a look at this git repo:=C2=A0<a href=3D"h=
ttps://github.com/YannickKiekens/meta-qt5-pi">https://github.com/YannickKie=
kens/meta-qt5-pi</a><br><br>I have build a qt5 eglfs with raspberry pi2 bac=
kend on master branch yesterday evening<br></div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Wed, Feb 3, 2016 at 7:08 AM, Khem =
Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div style=3D"word-wrap:break-word"><br><div><span class=3D""><block=
quote type=3D"cite"><div>On Feb 2, 2016, at 8:50 AM, GUEYTAT Julien &lt;<a =
href=3D"mailto:j.gueytat@cdssoft.studiel.fr" target=3D"_blank">j.gueytat@cd=
ssoft.studiel.fr</a>&gt; wrote:</div><br><div><div style=3D"font-family:Ubu=
ntu;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px"><div style=3D"margin:0cm 0cm 0.0001pt=
;font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Hi,<u>=
</u><u></u></span></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11p=
t;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><u></u>=C2=A0<u></u>=
</span></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-fami=
ly:Calibri,sans-serif"><span lang=3D"EN-US">It seems that there are some st=
iff missing between meta-qt5 or meta-raspberrypi.<u></u><u></u></span></div=
><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,s=
ans-serif"><span lang=3D"EN-US">When we set the option gles=E2=80=A6 to qtb=
ase we don=E2=80=99t get the QMAKE_LIBS_EGL set properly.<u></u><u></u></sp=
an></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:C=
alibri,sans-serif"><span lang=3D"EN-US">We can compare a working set of var=
iables in the qt mkspecs directory of qt.<u></u><u></u></span></div><div st=
yle=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-seri=
f"><span lang=3D"EN-US">There is one dedicated file for the RaspberryPi2. M=
ay be one also for RaspberryPi.<u></u><u></u></span></div><div style=3D"mar=
gin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span l=
ang=3D"EN-US">Anyway!<u></u><u></u></span></div><div style=3D"margin:0cm 0c=
m 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-=
US">How could we set those *_EGL variables properly? And=E2=80=A6 If they a=
re properly set, will qtbase will take them into account?<u></u><u></u></sp=
an></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:C=
alibri,sans-serif"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></div><d=
iv style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans=
-serif"><span lang=3D"EN-US">I will be happy to propose a patch but I need =
to get more precision first.</span></div></div></div></blockquote><div><br>=
</div></span><div>Firstly show the DISTRO_FEATURES may be you are missing s=
ome important knobs for EGL</div><div>like openGL and gles2 etc.</div><br><=
blockquote type=3D"cite"><div><div style=3D"font-family:Ubuntu;font-size:14=
px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px"><span class=3D""><div style=3D"margin:0cm 0cm 0.0001p=
t;font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><u></=
u><u></u></span></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;=
font-family:Calibri,sans-serif"><span lang=3D"EN-US">Thanks in advance,<u><=
/u><u></u></span></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt=
;font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></div><div style=3D"ma=
rgin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><u></u=
>=C2=A0<u></u></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></div><div style=3D"margi=
n:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><b><span =
style=3D"color:rgb(31,73,125)">Julien GUEYTAT<u></u><u></u></span></b></div=
><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,s=
ans-serif"><b><span style=3D"color:rgb(31,73,125)">Ing=C3=A9nieur Informati=
que<u></u><u></u></span></b></div></span><div style=3D"margin:0cm 0cm 0.000=
1pt;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb=
(31,73,125)"><span>&lt;image001.png&gt;</span><u></u><u></u></span></div><s=
pan class=3D""><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-fa=
mily:Calibri,sans-serif"><span style=3D"font-size:10pt;color:rgb(31,73,125)=
">1027, avenue du Docteur Julien Lefebre BP27</span><b><span style=3D"color=
:rgb(31,73,125)"><u></u><u></u></span></b></div><div style=3D"margin:0cm 0c=
m 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"fo=
nt-size:10pt;color:rgb(31,73,125)">06271 Villeneuve-Loubet Cedex<u></u><u><=
/u></span></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-f=
amily:Calibri,sans-serif"><u><span style=3D"font-size:10pt;color:rgb(31,73,=
125)">Fixe</span></u><span style=3D"font-size:10pt;color:rgb(31,73,125)"><s=
pan>=C2=A0</span>:=C2=A0 +33 (0) 492=C2=A0024 545<br><u>Mob</u><span>=C2=A0=
</span>:=C2=A0 +33(0) 617 980 383<br><u>Fax</u><span>=C2=A0</span>:=C2=A0=
=C2=A0=C2=A0 +33(0) 492=C2=A0024 546<br><u>Email</u><span>=C2=A0</span>:<sp=
an>=C2=A0</span></span><span><a href=3D"mailto:j.gueytat@cdssoft.studiel.fr=
" style=3D"color:rgb(149,79,114);text-decoration:underline" target=3D"_blan=
k"><span style=3D"color:rgb(5,99,193)">j.gueytat@cdssoft.studiel.fr</span><=
/a><span style=3D"color:rgb(31,73,125)"><u></u><u></u></span></span></div><=
div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,san=
s-serif"><u><span style=3D"font-size:10pt;color:rgb(31,73,125)">www</span><=
/u><span style=3D"font-size:10pt;color:rgb(31,73,125)"><span>=C2=A0</span>:=
<span>=C2=A0</span></span><span><a href=3D"http://www.studiel.fr/" style=3D=
"color:rgb(149,79,114);text-decoration:underline" target=3D"_blank"><span s=
tyle=3D"color:rgb(5,99,193)">www.studiel.fr</span></a><span style=3D"color:=
rgb(31,73,125)"><u></u><u></u></span></span></div><div style=3D"margin:0cm =
0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=
=3D"font-size:24pt;font-family:Webdings;color:green">P</span></b><b><span s=
tyle=3D"font-size:12pt;font-family:&#39;Times New Roman&#39;,serif"><span>=
=C2=A0</span></span></b><b><span style=3D"font-size:10pt;font-family:Arial,=
sans-serif;color:green">Pensez Environnement, imprimez seulement si n=C3=A9=
cessaire</span></b><span style=3D"color:rgb(31,73,125)"><u></u><u></u></spa=
n></div><div style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Ca=
libri,sans-serif"><u></u>=C2=A0<u></u></div></span></div><span class=3D"HOE=
nZb"><font color=3D"#888888"><span style=3D"font-family:Ubuntu;font-size:14=
px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;float:none;display:inline!important">--<span>=C2=A0</s=
pan></span><br style=3D"font-family:Ubuntu;font-size:14px;font-style:normal=
;font-variant:normal;font-weight:normal;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
"><span style=3D"font-family:Ubuntu;font-size:14px;font-style:normal;font-v=
ariant:normal;font-weight:normal;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;float:=
none;display:inline!important">____________________________________________=
___</span><br style=3D"font-family:Ubuntu;font-size:14px;font-style:normal;=
font-variant:normal;font-weight:normal;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px"=
><span style=3D"font-family:Ubuntu;font-size:14px;font-style:normal;font-va=
riant:normal;font-weight:normal;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;float:n=
one;display:inline!important">yocto mailing list</span><br style=3D"font-fa=
mily:Ubuntu;font-size:14px;font-style:normal;font-variant:normal;font-weigh=
t:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px"><a href=3D"mailto:yocto@yocto=
project.org" style=3D"color:rgb(149,79,114);text-decoration:underline;font-=
family:Ubuntu;font-size:14px;font-style:normal;font-variant:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px" target=3D"_blank">yocto@yoc=
toproject.org</a><br style=3D"font-family:Ubuntu;font-size:14px;font-style:=
normal;font-variant:normal;font-weight:normal;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px"><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"=
color:rgb(149,79,114);text-decoration:underline;font-family:Ubuntu;font-siz=
e:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px" target=3D"_blank">https://lists.yoctoproject.org/=
listinfo/yocto</a></font></span></div></blockquote></div><br></div><br>--<b=
r>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c383f6f228be052ad8bcd0--
