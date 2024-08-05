Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52549C3DA4A
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 16:17:58 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.12077.1722874677851304141
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 09:17:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wx5k+0PK;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-690af536546so17249317b3.3
        for <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 09:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722874676; x=1723479476; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dW60t8ebpZp0+fNPctoYv++TK7fc80pxVWu+yCZjiRE=;
        b=Wx5k+0PK8/vWQja4uxwmDB39m7hz7FBacAlVFWz25+FHEf6BiAdO6JUTbE17BI47+c
         F4JYfwgVA6TLSRban0dm+is/4GI/iu3SBEYbZdHyghV1rapU67Ru2fcdWnLviwUTlEdv
         eYbCnIXNo9nUVPVEf68zhIlEmAjC/41uFm2cCpAwLmSjrM3qnweZWiNzUgeJOPLsMOij
         sCg/MEadGu6ws53MgvqW3+ThTyYu2k2LbeX+h8zRRPnRy647CL+zt5TnBKYvhDyZ/MbA
         waupA3JozUAC7qyAcSJCHmW0yNKIDv6l7urGT07JJZCS1rCh4V06eVBmskqCsheC7hCd
         x9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722874677; x=1723479477;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dW60t8ebpZp0+fNPctoYv++TK7fc80pxVWu+yCZjiRE=;
        b=LhB4EEjbObXhhI2I5bCXGVarBbySkHdzAE/HbdkLQg7n5OkrEXXA8cl6i2g5Z10FCM
         8CpSitF0poaJYdSgWO4Sv2aowksDU7RKLg+JwEPK2FyMs+cHcxO2HFv3QVbG8x/ZXkbz
         tTUkJ4B6Q24oBUc2PxrznVWaphH1JdyH3LCGaebOKP7JviWUI1wTpWUdsVPe0A8eATrq
         bOuAACdtM3XGmg2/EHEZAD2kVVW+CxSPpF6MmS8ReRPfkp1zvOSgYJbvUJC5JOa5nvBX
         TfGdrXMKWa8PPzkUSaVBsrLXAxL2bcHQPQ78DjGJjEq3P0mx6ljvxrHeCBL4nQOkZb+6
         mqUA==
X-Gm-Message-State: AOJu0Yx76hOLE2b4W009Gmkp0tCGvGDIruOWKHuabfzo1IHXnLvn8Qdr
	Oklul1Q02Dh8M6CEhsY86X0sMXz5YT9V1xw8zsRIwI4ypwTDaJd8GfQDeqYFnuMtLwcFdCAgPWQ
	61/iSpi42pHnlm00PPG7CqIs8f1TGKsAo
X-Google-Smtp-Source: AGHT+IHkcI5OVIxL5lQ2mQJdltcTh5gWs911da2XzVppdt3snsduMVGue/ogf72ri5IUDggCBcJNNjPk3bTUI7Z/FJw=
X-Received: by 2002:a0d:d082:0:b0:632:c690:d991 with SMTP id
 00721157ae682-68962b75ceemr131679127b3.29.1722874676584; Mon, 05 Aug 2024
 09:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <3diF.1722840635783159101.Rmv7@lists.yoctoproject.org> <PPVQHS.SWN8UJYN38W@t-online.de>
In-Reply-To: <PPVQHS.SWN8UJYN38W@t-online.de>
From: Tim Orling <ticotimo@gmail.com>
Date: Mon, 5 Aug 2024 09:17:44 -0700
Message-ID: <CANx9H-BPJMy3DpwLM6nJqas=TNO-H3-gwmgBGxx_xZvB3K-n2w@mail.gmail.com>
Subject: Re: [yocto] lack of javascriptcoregtk-4.0 #scarthgap
To: yocto@lists.yoctoproject.org, f_l_k@t-online.de
Cc: bartiszosti@gmail.com
Content-Type: multipart/alternative; boundary="000000000000172888061ef20550"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 16:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63656

--000000000000172888061ef20550
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 5, 2024 at 5:21=E2=80=AFAM Markus Volk via lists.yoctoproject.o=
rg
<f_l_k=3Dt-online.de@lists.yoctoproject.org> wrote:

> Hi,
> webkit2gtk-4.0 and thus also javascriptcoregtk-4.0 are provided by
> webkitgtk-2.38.  Yocto/oe has a higher version of webkitgtk which provide=
s
> webkit2gtk-4.1/javascriptcoregtk-4.1 (if built with gtk3 support) That's
> probably why the rust crate doesn't find the one it wants.
>

By default, tauri is asking for older releases of gtk and webgtk
https://github.com/tauri-apps/tauri/blob/ab382f4ca94c881130e8916f34260da92f=
9bec72/core/tauri/Cargo.toml#L86
gtk =3D { version =3D "0.18", features =3D [ "v3_24" ] }
webkit2gtk =3D { version =3D "=3D2.0.1", features =3D [ "v2_38" ] }

Both of those crates can be updated to a specific version with the
"features" value.

https://github.com/gtk-rs/gtk4-rs/tree/master/gtk4#library-versions
https://github.com/tauri-apps/webkit2gtk-rs/blob/crate/Cargo.toml#L19



>
> On Sun, Aug 4 2024 at 11:50:35 PM -07:00:00, bartiszosti@gmail.com wrote:
>
> Hello,
> I'm trying to build a application based on the Tauri.
> I created a simple application and currently a recipe I shared below.
>
> tauri-vanilla.bb
>
> LICENSE =3D "CLOSED"
>
> SRC_URI =3D "git://github.com/bartiszosti/tauri-vanilla.git;branch=3Dmast=
er;protocol=3Dhttps"
> SRCREV =3D "${AUTOREV}"
>
> S =3D "${WORKDIR}/git"
>
> DEPENDS =3D "nodejs webkitgtk3"
>
> do_compile[network] =3D "1"
> CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
> CARGO_SRC_DIR =3D "src-tauri"
>
> inherit cargo pkgconfig
>
>
> I'm able to achive 86% of the compilation with that recipe, deleting the
> "--frozen" flag from the CARGO_BUILD_FLAGS in cargo.bbclass and setting t=
he
> PACKAGEGROUP_SOUP to "soup2" in the webkitgtk3.bb but then I get error
> thet the javascriptcoregtk-4.0 is missing. Do you know how can I add this
> library to dependancies?
>
> Best regards,
> Bartosz Szostak
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63650):
> https://lists.yoctoproject.org/g/yocto/message/63650
> Mute This Topic: https://lists.yoctoproject.org/mt/107728100/924729
> Mute #scarthgap:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000172888061ef20550
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2024 at 5:21=E2=80=AFA=
M Markus Volk via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproj=
ect.org</a> &lt;f_l_k=3D<a href=3D"mailto:t-online.de@lists.yoctoproject.or=
g">t-online.de@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div id=3D"m_3473278372204656159geary-=
body" dir=3D"auto"><div>Hi,</div><div>webkit2gtk-4.0 and thus also javascri=
ptcoregtk-4.0 are provided by webkitgtk-2.38.=C2=A0 Yocto/oe has a higher v=
ersion of webkitgtk which provides webkit2gtk-4.1/javascriptcoregtk-4.1 (if=
 built with gtk3 support) That&#39;s probably why the rust crate doesn&#39;=
t find the one it wants.=C2=A0</div></div></blockquote><div><br></div><div>=
By default, tauri is asking for older releases of gtk and webgtk</div><div>=
<a href=3D"https://github.com/tauri-apps/tauri/blob/ab382f4ca94c881130e8916=
f34260da92f9bec72/core/tauri/Cargo.toml#L86">https://github.com/tauri-apps/=
tauri/blob/ab382f4ca94c881130e8916f34260da92f9bec72/core/tauri/Cargo.toml#L=
86</a></div>gtk =3D { version =3D &quot;0.18&quot;, features =3D [ &quot;v3=
_24&quot; ] }<br><div>webkit2gtk =3D { version =3D &quot;=3D2.0.1&quot;, fe=
atures =3D [ &quot;v2_38&quot; ] }</div><div><br></div><div>Both of those c=
rates can be updated to a specific version with the &quot;features&quot; va=
lue.</div><div><br></div><div><a href=3D"https://github.com/gtk-rs/gtk4-rs/=
tree/master/gtk4#library-versions">https://github.com/gtk-rs/gtk4-rs/tree/m=
aster/gtk4#library-versions</a></div><div><a href=3D"https://github.com/tau=
ri-apps/webkit2gtk-rs/blob/crate/Cargo.toml#L19">https://github.com/tauri-a=
pps/webkit2gtk-rs/blob/crate/Cargo.toml#L19</a></div><div><br></div><div>=
=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div id=
=3D"m_3473278372204656159geary-quote" dir=3D"auto"><br>On Sun, Aug 4 2024 a=
t 11:50:35 PM -07:00:00, <a href=3D"mailto:bartiszosti@gmail.com" target=3D=
"_blank">bartiszosti@gmail.com</a> wrote:<br><blockquote type=3D"cite"><div=
>Hello,<br>I&#39;m trying to build a application based on the Tauri.<br>I c=
reated a simple application and currently a recipe I shared below.</div>
<div>=C2=A0</div>
<div><a href=3D"http://tauri-vanilla.bb" target=3D"_blank">tauri-vanilla.bb=
</a></div>
<div>
<div style=3D"background-color:rgb(30,31,34);color:rgb(188,190,196)">
<pre style=3D"font-family:&quot;JetBrains Mono&quot;,monospace;font-size:9.=
8pt"><span style=3D"color:rgb(199,125,187);font-style:italic">LICENSE </spa=
n>=3D <span style=3D"color:rgb(106,171,115)">&quot;CLOSED&quot;<br></span><=
span style=3D"color:rgb(106,171,115)"><br></span><span style=3D"color:rgb(1=
99,125,187);font-style:italic">SRC_URI </span>=3D <span style=3D"color:rgb(=
106,171,115)">&quot;git://<a href=3D"http://github.com/bartiszosti/tauri-va=
nilla.git;branch=3Dmaster;protocol=3Dhttps" target=3D"_blank">github.com/ba=
rtiszosti/tauri-vanilla.git;branch=3Dmaster;protocol=3Dhttps</a>&quot;<br><=
/span><span style=3D"color:rgb(199,125,187);font-style:italic">SRCREV </spa=
n>=3D <span style=3D"color:rgb(106,171,115)">&quot;${AUTOREV}&quot;<br></sp=
an><span style=3D"color:rgb(106,171,115)"><br></span><span style=3D"color:r=
gb(199,125,187);font-style:italic">S </span>=3D <span style=3D"color:rgb(10=
6,171,115)">&quot;${WORKDIR}/git&quot;<br></span><span style=3D"color:rgb(1=
06,171,115)"><br></span><span style=3D"color:rgb(199,125,187);font-style:it=
alic">DEPENDS </span>=3D <span style=3D"color:rgb(106,171,115)">&quot;nodej=
s webkitgtk3&quot;<br></span><span style=3D"color:rgb(106,171,115)"><br></s=
pan><span style=3D"color:rgb(199,125,187);font-style:italic">do_compile[net=
work] </span>=3D <span style=3D"color:rgb(106,171,115)">&quot;1&quot;<br></=
span><span style=3D"color:rgb(199,125,187);font-style:italic">CARGO_DISABLE=
_BITBAKE_VENDORING </span>=3D <span style=3D"color:rgb(106,171,115)">&quot;=
1&quot;<br></span><span style=3D"color:rgb(199,125,187);font-style:italic">=
CARGO_SRC_DIR </span>=3D <span style=3D"color:rgb(106,171,115)">&quot;src-t=
auri&quot;<br></span><span style=3D"color:rgb(106,171,115)"><br></span><spa=
n style=3D"color:rgb(207,142,109)">inherit</span> cargo pkgconfig</pre>
</div>
</div>
<div><br>I&#39;m able to achive 86% of the compilation with that recipe, de=
leting the &quot;--frozen&quot; flag from the CARGO_BUILD_FLAGS in cargo.bb=
class and setting the PACKAGEGROUP_SOUP to &quot;soup2&quot; in the <a href=
=3D"http://webkitgtk3.bb" target=3D"_blank">webkitgtk3.bb</a> but then I ge=
t error thet the javascriptcoregtk-4.0 is missing. Do you know how can I ad=
d this library to dependancies?<br><br>Best regards,<br>Bartosz Szostak</di=
v>
<div>=C2=A0</div>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63650): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63650" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63650</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107728100/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/107728100/924729</a><br>
Mute #scarthgap:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/scarthgap" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/scarthgap</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000172888061ef20550--

