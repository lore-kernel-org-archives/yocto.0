Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web09.7000.1603079868785598163
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 20:57:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LFdEgChh;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id b69so6804876qkg.8
        for <yocto@lists.yoctoproject.org>; Sun, 18 Oct 2020 20:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PXF1Mbc8fgapehAb/yftgt/svXmxow+dlegtzt1yyYw=;
        b=LFdEgChhFI5/UpixsmsTzVo8iPMb25FvM4iNu7acRqxuFoEfEuc6oVdQkFsVmfh0vB
         FBPrc4Jvs7keOggD7cv7mgtQS5Al6EmPXL8YYCH7tuztVbujm4DVLCe41vUKJrfvMmoc
         Dh0FhIAb5EzhEnArm+Ph2HeQukRvT8y99ve+rAvw43fN1mzrAusKpSnolce5ti2GU8qU
         NUIucSLHs1AFnOp2HhXzHZVO55YyWWC77rrB6wouBoJlnZCjvgtk3QQw2Gh9fTPD5r5U
         C3eiG2N7vTbHoRM0Idq6QGfbDgwHlAi127168onxuVpYQ06CidxJ0D8jCdxxhGzzttpG
         fRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PXF1Mbc8fgapehAb/yftgt/svXmxow+dlegtzt1yyYw=;
        b=nWIgIS6bi7NqJrHjffB1S0Y+oczM2oWvqadICz/Hi8b0ZV2/hj4Z/Bq5vppqlF991I
         L+9C0XTYXmsQKmgsaSZny8FK8YL99zf8wm/MA0j5FxqNVLvJoHslnG9O28+DZDJ2IOIV
         zbp9mqXKukPb7iYobmROb/XfNWzNF1hz/g5PBH8RyWUVzbsdTaGwcB/gS6kr1A95dlLo
         rPAhswfq9vThCp/4qr9YF/ogRC0+fwgV+dCQ+xyLxrdTJ6eAh2zSv3GixNC3Jts0nx+u
         RP5B8FCbY1ErmnT99QVFUaK22moOryh4mJ/VASjKrMVTtGsgAgYYDYjjPCM2Q7cMuvr4
         H03Q==
X-Gm-Message-State: AOAM5308BEebK59CIsW6MRuMjNia4AiAHPq7t2Puf2aadBLhwHDcLoH5
	bZ9dXxJQ0MZk5TljeFJb7iKYLpR8xjwRBRHr9mU=
X-Google-Smtp-Source: ABdhPJzrM5OD3Ae8Tkuc5L0MwmeAokRXOHfO7kXcjgucskmUSp/bnmAzu5vhXnr2odIeJ4FUCSuXCvUYYa2NT2cs9QI=
X-Received: by 2002:a05:620a:16cb:: with SMTP id a11mr14813385qkn.474.1603079867731;
 Sun, 18 Oct 2020 20:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <qp1q.1603054815281667643.UQQK@lists.yoctoproject.org>
In-Reply-To: <qp1q.1603054815281667643.UQQK@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 18 Oct 2020 20:57:36 -0700
Message-ID: <CAMKF1srNMMGJ3M48TGfrWp4N7m4XQ4svk_oM8nSjdE5GLReAsw@mail.gmail.com>
Subject: Re: [yocto] Yocto - glib-gettextize: not found #yocto
To: zidouhzakaria@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000010174605b1fe1e1f"

--00000000000010174605b1fe1e1f
Content-Type: text/plain; charset="UTF-8"

Perhaps add depends on glib-2.0-native

On Sun, Oct 18, 2020 at 2:00 PM <zidouhzakaria@gmail.com> wrote:

> I'm trying to compile a recipe based on autotools, but it still fails in
> do_configure:
>
> glib-gettextize: not found
>
> However, I have glib-2.0 in my DEPENDS which generates the glib-2.0-dev package
> containing the binary. In glib.inc file :
>
> [...]
>     FILES_${PN}-dev += "[...]
>                             ${bindir}/glib-gettextize \
> [...]
>
>
> Do you have any ideas ?
>
> Thanks
>
>
>
>
> 
>
>

--00000000000010174605b1fe1e1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">Perhaps add depends on glib-2.0-native=C2=
=A0</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 18, 2020 at 2:00 PM &lt;<a h=
ref=3D"mailto:zidouhzakaria@gmail.com">zidouhzakaria@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)"><p style=3D"padding:0px;border:0px;font-varian=
t-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line=
-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans=
-serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both=
;color:rgb(36,39,41)">I&#39;m trying to compile a recipe based on autotools=
, but it still fails in do_configure:</p>
<pre style=3D"padding:12px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;line-height:1.30769;font-family:Consolas=
,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;=
DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier N=
ew&quot;,monospace,sans-serif;vertical-align:baseline;box-sizing:inherit;wi=
dth:auto;max-height:600px;border-top-left-radius:5px;border-top-right-radiu=
s:5px;border-bottom-right-radius:5px;border-bottom-left-radius:5px;backgrou=
nd-color:var(--highlight-bg);color:var(--highlight-color)"><code style=3D"m=
argin:0px;border:0px;font-style:inherit;font-variant-ligatures:inherit;font=
-variant-caps:inherit;font-variant-numeric:inherit;font-variant-alternates:=
inherit;font-variant-east-asian:inherit;font-weight:inherit;font-stretch:in=
herit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Co=
nsole&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;=
Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif=
;font-size:13px;vertical-align:baseline;box-sizing:inherit;white-space:inhe=
rit">glib-gettextize: not found
</code></pre>
<div>
<p style=3D"padding:0px;border:0px;font-variant-numeric:inherit;font-varia=
nt-east-asian:inherit;font-stretch:inherit;line-height:inherit;font-family:=
Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertic=
al-align:baseline;box-sizing:inherit;clear:both;color:rgb(36,39,41)">Howeve=
r, I have glib-2.0 in my=C2=A0<code style=3D"margin:0px;border:0px;font-sty=
le:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;font-va=
riant-numeric:inherit;font-variant-alternates:inherit;font-variant-east-asi=
an:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;fon=
t-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation =
Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot=
;,&quot;Courier New&quot;,monospace,sans-serif;font-size:13px;vertical-alig=
n:baseline;box-sizing:inherit;white-space:pre-wrap;border-top-left-radius:3=
px;border-top-right-radius:3px;border-bottom-right-radius:3px;border-bottom=
-left-radius:3px;background-color:var(--black-075);color:var(--black-800)">=
DEPENDS</code>=C2=A0which generates the=C2=A0<code style=3D"margin:0px;bord=
er:0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:=
inherit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-v=
ariant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;line-hei=
ght:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&q=
uot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera=
 Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;font-size:13p=
x;vertical-align:baseline;box-sizing:inherit;white-space:pre-wrap;border-to=
p-left-radius:3px;border-top-right-radius:3px;border-bottom-right-radius:3p=
x;border-bottom-left-radius:3px;background-color:var(--black-075);color:var=
(--black-800)">glib-2.0-dev</code>=C2=A0package containing the binary. In=
=C2=A0<code style=3D"margin:0px;border:0px;font-style:inherit;font-variant=
-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inherit;f=
ont-variant-alternates:inherit;font-variant-east-asian:inherit;font-weight:=
inherit;font-stretch:inherit;line-height:inherit;font-family:Consolas,Menlo=
,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu=
 Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quo=
t;,monospace,sans-serif;font-size:13px;vertical-align:baseline;box-sizing:i=
nherit;white-space:pre-wrap;border-top-left-radius:3px;border-top-right-rad=
ius:3px;border-bottom-right-radius:3px;border-bottom-left-radius:3px;backgr=
ound-color:var(--black-075);color:var(--black-800)">glib.inc</code>=C2=A0fi=
le :</p>
</div>
<div><br>
<pre style=3D"padding:12px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;line-height:1.30769;font-family:Consolas=
,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;=
DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier N=
ew&quot;,monospace,sans-serif;vertical-align:baseline;box-sizing:inherit;wi=
dth:auto;max-height:600px;border-top-left-radius:5px;border-top-right-radiu=
s:5px;border-bottom-right-radius:5px;border-bottom-left-radius:5px;backgrou=
nd-color:var(--highlight-bg);color:var(--highlight-color)"><code style=3D"m=
argin:0px;border:0px;font-style:inherit;font-variant-ligatures:inherit;font=
-variant-caps:inherit;font-variant-numeric:inherit;font-variant-alternates:=
inherit;font-variant-east-asian:inherit;font-weight:inherit;font-stretch:in=
herit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Co=
nsole&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;=
Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif=
;font-size:13px;vertical-align:baseline;box-sizing:inherit;white-space:inhe=
rit"><span style=3D"font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&=
quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstr=
eam Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;backg=
round-color:rgb(255,255,255)">[...]    
    FILES_${PN}-dev +=3D &quot;[...]
                            ${bindir}/glib-gettextize \
[...]</span><br><br><br></code></pre>
<div style=3D"margin:0px 0px 5px;padding:0px;border:0px;font-variant-numer=
ic:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height=
:var(--s-prose-line-height);font-family:Arial,&quot;Helvetica Neue&quot;,He=
lvetica,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inheri=
t;width:469px;white-space:normal;background-color:rgb(255,255,255);color:rg=
b(36,39,41)">
<p style=3D"margin-bottom:0px;padding:0px;border:0px;font-style:inherit;fo=
nt-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric=
:inherit;font-variant-alternates:inherit;font-variant-east-asian:inherit;fo=
nt-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:Aria=
l,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:baseline;b=
ox-sizing:inherit;clear:both">Do you have any ideas ?<br><br>Thanks=C2=A0</=
p>
</div>
<pre style=3D"padding:12px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;line-height:1.30769;font-family:Consolas=
,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;=
DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier N=
ew&quot;,monospace,sans-serif;vertical-align:baseline;box-sizing:inherit;wi=
dth:auto;max-height:600px;border-top-left-radius:5px;border-top-right-radiu=
s:5px;border-bottom-right-radius:5px;border-bottom-left-radius:5px;backgrou=
nd-color:var(--highlight-bg);color:var(--highlight-color)"><code style=3D"m=
argin:0px;border:0px;font-style:inherit;font-variant-ligatures:inherit;font=
-variant-caps:inherit;font-variant-numeric:inherit;font-variant-alternates:=
inherit;font-variant-east-asian:inherit;font-weight:inherit;font-stretch:in=
herit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Co=
nsole&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;=
Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif=
;font-size:13px;vertical-align:baseline;box-sizing:inherit;white-space:inhe=
rit"></code></pre>
<div>
<div style=3D"padding:0px;border:0px;font-style:inherit;font-variant-ligat=
ures:inherit;font-variant-caps:inherit;font-variant-numeric:inherit;font-va=
riant-alternates:inherit;font-variant-east-asian:inherit;font-weight:inheri=
t;font-stretch:inherit;line-height:inherit;vertical-align:baseline;box-sizi=
ng:inherit;display:flex;clear:both">
<div style=3D"margin:2px 0px;padding:0px;border:0px;font-style:inherit;fon=
t-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:=
inherit;font-variant-alternates:inherit;font-variant-east-asian:inherit;fon=
t-weight:inherit;font-stretch:inherit;line-height:inherit;vertical-align:ba=
seline;box-sizing:inherit;display:flex">=C2=A0</div>
</div>
</div>
<pre style=3D"padding:12px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;line-height:1.30769;font-family:Consolas=
,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;=
DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier N=
ew&quot;,monospace,sans-serif;vertical-align:baseline;box-sizing:inherit;wi=
dth:auto;max-height:600px;border-top-left-radius:5px;border-top-right-radiu=
s:5px;border-bottom-right-radius:5px;border-bottom-left-radius:5px;backgrou=
nd-color:var(--highlight-bg);color:var(--highlight-color)"><code style=3D"m=
argin:0px;border:0px;font-style:inherit;font-variant-ligatures:inherit;font=
-variant-caps:inherit;font-variant-numeric:inherit;font-variant-alternates:=
inherit;font-variant-east-asian:inherit;font-weight:inherit;font-stretch:in=
herit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Co=
nsole&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;=
Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif=
;font-size:13px;vertical-align:baseline;box-sizing:inherit;white-space:inhe=
rit"></code></pre>
</div>
<br>
<br>
<br>
</blockquote></div></div>

--00000000000010174605b1fe1e1f--
