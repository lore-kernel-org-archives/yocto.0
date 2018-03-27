Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A771E00CA1; Tue, 27 Mar 2018 01:46:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC7C7E00851
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:46:49 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id u141-v6so18526152oif.1
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yfZPCPlKUfDG70RLs2pYjDsqBPcHoj6kmAQahWgIJfg=;
	b=aIAqZ6Pl3xEt5CHRYNvhqKTSz3x9zabprna+7MWrfK+0FCUJ8ykorkH5JFu2e/U0iw
	yq8FgZyEm5SJefoSa58VRW/QUuyni6bC6h/GtLloL9LpXjI50ffi+sGeEUYHnjLqKnRB
	uMjTeq/ENyDwoVh/MJf5AIk0xxyf9LnHbo3l1xnviK6Juk7vyxDo0phG2LPoPtECeHB/
	2L/fH36bLgIc45QJ2UBhuJcaYOgste/zLBWpLJAuGBjPtCee/y6jtdDH34mB/LFjY+Nr
	D1C+VEgCN3twe7XUOQiNDMwhZqMGjzBcR+ByOQ41I8TvuT/k7uc53H08nF7RUkUMhOXX
	/GNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yfZPCPlKUfDG70RLs2pYjDsqBPcHoj6kmAQahWgIJfg=;
	b=iuDNQTZmic2JvdezsdqybwQO7SkR6P9L9286U6h1XLsCP/GtRF9+SU9kfL5q8zUUDG
	sDC4V7riiFE9nK92CmlI1W0S2weecuNPTjKeRpi/LF2k9Lei0eW21mcPy7qbLlRNNYjB
	wh4hdA4MWdajSQEMMhX72SCIvi9NKouIRUcdp9vWA09mOk31/VAu5xs0R3ok2pjdpNuN
	WS7FTkwxDazTSNxmrjbzw6HeB8+TQNHAWDPOMCUUtcHjLJQZ//8qQGLfTqZmKabx6qQo
	EaP0EKWDJy7DL+lBZ9UgvXROglwmGqZas5L7HCR569o/2srfe9eQLZhmeAUxugmydMxl
	V4sg==
X-Gm-Message-State: AElRT7HtBpQYLHYocvFt6ytFeau7Om26EiHZENrg+Vap+4Oo+ywHC+kt
	g1Ty/puV7ssbAuYCI4jgThJ28j280Fl3iJ/3Hug=
X-Google-Smtp-Source: AIpwx4/FPDm44TWoEyCw63kGAeIpXNYt5wRnyI2dJXpb6SdDlucIuhA3qX00cjGoWRuXXx9Uv7yZfqkma14moETaGao=
X-Received: by 10.202.212.85 with SMTP id l82mr6616711oig.102.1522140409040;
	Tue, 27 Mar 2018 01:46:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Tue, 27 Mar 2018 01:46:48 -0700 (PDT)
In-Reply-To: <CAPb0b+N-ZJBZibsfyzqy9o8jrzsXAKa2Ke495bVm_py_uw2ttg@mail.gmail.com>
References: <CAPb0b+N-ZJBZibsfyzqy9o8jrzsXAKa2Ke495bVm_py_uw2ttg@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 27 Mar 2018 10:46:48 +0200
Message-ID: <CAEhQi8ny5u73B7WOLBq+E0kBo0w_y2p6R4_o53pE6=yZ9cuyVw@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to add pulseaudio
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
X-List-Received-Date: Tue, 27 Mar 2018 08:46:50 -0000
Content-Type: multipart/alternative; boundary="001a113d2472611482056860eeea"

--001a113d2472611482056860eeea
Content-Type: text/plain; charset="UTF-8"

I am no expert but basically the DISTRO_FEATURES is normally used to inform
recipes about what kind of feature you would like to have. A recipe based
on the DISTRO_FEATURES can then include take action on certain
DISTRO_FEATURES. In the yocto ref manual you can read

"In most cases, the presence or absence of a feature in DISTRO_FEATURES is
translated to the appropriate option supplied to the configure script
during the do_configure
<https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-tasks-configure>
task
for recipes that optionally support the feature"

Since pulseaudio is not by default shipped by the Yocto Project metadata I
guess you have included some other meta layer to get this feature. But to
me it looks like you have included pulseaudio in the wrong place it should
be included in the IMAGE_INSTALL_append. If supported you should include
just pulseaudio in the DISTRO_FEATURES_append if that is supported as a
DISTRO_FEATURE in your build to inform recipes about it so that if
supported the pulsaudio support is included. I suggest to try

DISTRO_FEATURES_append += " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
pulseaudio"
IMAGE_INSTALL_append += " python dbus gconf glib-2.0 pulseaudio
pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"

A DISTRO_FEATURES is not necessarily mapped to a package so based on that
the pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth looks
strange to be included in the DISTRO_FEATURES_append since those looks like
packages and not a feature. Also I believe that you still need include
pulseaudio in IMAGE_INSTALL_append since it not necessarily mapped to
package but I could be wrong since bitbake and OE surprises me all the time
on what it can figure out on it's own.

BR
Mans Zigher

2018-03-26 22:17 GMT+02:00 Sherif Omran <sherifomran2000@gmail.com>:

> hello
>
> i am trying to add pulse audio to an image but i don't get pulse audio
> being installed in the image
>
> I am using the following
> DISTRO_FEATURES_append += " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
> pulseaudio pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"
> IMAGE_INSTALL_append += " python dbus gconf glib-2.0"
>
> what am i doing wrong?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113d2472611482056860eeea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am no expert but basically the DISTRO_FEATURES is normal=
ly used to inform recipes about what kind of feature you would like to have=
. A recipe based on the DISTRO_FEATURES can then include take action on cer=
tain DISTRO_FEATURES. In the yocto ref manual you can read<div><br></div><d=
iv><span style=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">&quot;In most cases, the presence or absence of a featu=
re in=C2=A0</span><code class=3D"gmail-filename" style=3D"font-family:Couri=
er,monospace;color:rgb(51,51,51);font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial">DISTRO_FEATURES</code><span style=3D"color:rgb(=
51,51,51);font-family:Verdana,Sans,sans-serif;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><span>=
=C2=A0</span>is translated to the appropriate option supplied to the config=
ure script during the<span>=C2=A0</span></span><a class=3D"gmail-link" href=
=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#re=
f-tasks-configure" title=3D"9.1.4.=C2=A0do_configure" style=3D"text-decorat=
ion:underline;color:rgb(68,68,68);background:rgb(255,255,255);font-family:V=
erdana,Sans,sans-serif;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px"><=
code class=3D"gmail-filename" style=3D"font-family:Courier,monospace">do_co=
nfigure</code></a><span style=3D"color:rgb(51,51,51);font-family:Verdana,Sa=
ns,sans-serif;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial;float:none;display:inline">=C2=A0task for recipes that optionally s=
upport the feature&quot;</span><br></div><div><span style=3D"color:rgb(51,5=
1,51);font-family:Verdana,Sans,sans-serif;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><br></span><=
/div><div><span style=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-=
serif;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">Since pulseaudio is not by default shipped by th=
e Yocto Project metadata I guess you have included some other meta layer to=
 get this feature. But to me it looks like you have included pulseaudio in =
the wrong place it should be included in the IMAGE_INSTALL_append. If suppo=
rted you should include just pulseaudio in the DISTRO_FEATURES_append if th=
at is supported as a DISTRO_FEATURE in your build to inform recipes about i=
t so that if supported the pulsaudio support is included. I suggest to try<=
/span></div><div><span style=3D"color:rgb(51,51,51);font-family:Verdana,San=
s,sans-serif;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline"><br></span></div><div><span style=3D"colo=
r:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline"><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.=
8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">DISTRO_FEATURES_append +=3D &quot; ext2 pam usbhos=
t ${DISTRO_FEATURES_LIBC} pulseaudio</span><span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">&quot=
;</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font=
-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline">IMAGE_INSTALL_append +=3D &quot; python d=
bus gconf glib-2.0 <span style=3D"font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;color:rgb(34,34,34);font-family:arial,sans-seri=
f;font-size:12.8px;float:none;display:inline">pulseaudio pulseaudio-module-=
dbus-</span><wbr style=3D"font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:12.8px"><span style=3D"font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:12.8px;float:none;display:inline">protocol pulseaudio-module-bluetooth=
</span>&quot;</span><br></span></div><div><span style=3D"color:rgb(51,51,51=
);font-family:Verdana,Sans,sans-serif;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline"><br></span></span></div><div><span style=3D"color:rgb(51,51,51);=
font-family:Verdana,Sans,sans-serif;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline"><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;float:none;display=
:inline">A DISTRO_FEATURES is not necessarily mapped to a package so based =
on that the=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">pulseaudio-module-dbus-</span><=
wbr style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.=
8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial"><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">protocol pulseaudio-module-bluetooth looks strang=
e to be included in the DISTRO_FEATURES_append since those looks like packa=
ges and not a feature. Also I believe that you still need include pulseaudi=
o in IMAGE_INSTALL_append since it not necessarily mapped to package but I =
could be wrong since bitbake and OE surprises me all the time on what it ca=
n figure out on it&#39;s own.=C2=A0</span></span></span></div><div><span st=
yle=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;float:none;display=
:inline"><br></span></div><div><font color=3D"#333333" face=3D"Verdana, San=
s, sans-serif">BR</font></div><div><font color=3D"#333333" face=3D"Verdana,=
 Sans, sans-serif">Mans Zigher</font></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">2018-03-26 22:17 GMT+02:00 Sherif Omran <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_=
blank">sherifomran2000@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><div><div><div>hello<br><br></div>i am trying to a=
dd pulse audio to an image but i don&#39;t get pulse audio being installed =
in the image<br><br></div>I am using the following<br>DISTRO_FEATURES_appen=
d +=3D &quot; ext2 pam usbhost ${DISTRO_FEATURES_LIBC} pulseaudio pulseaudi=
o-module-dbus-<wbr>protocol pulseaudio-module-bluetooth&quot;<br>IMAGE_INST=
ALL_append +=3D &quot; python dbus gconf glib-2.0&quot;<br><br></div>what a=
m i doing wrong?<br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113d2472611482056860eeea--
