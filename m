Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 832CCC64ED5
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:49 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web12.4118.1648844533423984777
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 13:22:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fgvSnGF8;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id e22so2870382qvf.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 13:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zzceE8i/ca3x5CAhN7Esn6P+u287hhigrVHuVpLvfK0=;
        b=fgvSnGF8scjV0NoqBzdMfZB2ZYcMnOxNeHzQexoak2kCmpxvDzPwWCRGd/jw8KsDDG
         k8hpQJfLmt313NkU38dMh2VqrNDyqKhasFd3UJTjzzkpkGC7aGxVzMcr6O3855BAfqFp
         5nqk+WQdU7oK7rFWLXTfG3KbzvylsT02TJasbT+BB+kf4wdwf4A+oaQBH6evHlvHqVRw
         VhPqvEHvErZWHR/Kk6I/X5r9F6ot6E9onfY52uczaaTP3nsRGgOZjIKZwGp/oc90kIIY
         6ZV80fC4UUQrAo/4zL1fG6TNnb4QZSrDrDk94HzWWTGHKNnHBiae/G0Cp1udCCJY+mhX
         GdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zzceE8i/ca3x5CAhN7Esn6P+u287hhigrVHuVpLvfK0=;
        b=MXFZKNTjvMfWiG8GfkCA4cJEn5lYDyPMynOOWSjtMtnLeUrbbH8qENGJgjyjmf1UqX
         bbU6C1os2B5E3ffErPZwcNrnISXeVfeYCtH1n0l7aMmQdgfeS7OGrvd89JUqkd5ZJWQe
         DTBnfFPIqXai4M/CYKkSbr8Kwmr8lAs55e3h0gTgMXkwcsVeZqZ2NMacsZlyWlEyIjBP
         g4+Cv5C20ANHo/BuL/eNni5XBfrAZOlN33+gZ1KO9hW2+00rv2fMGbyitjRoemWVCWsU
         ulRJU6h9i3p1e9EQeyaanMZHfOGza+6TKX/Pj9dP5qQThkzpeJQdPSzpehVK57Y9NdVW
         48cg==
X-Gm-Message-State: AOAM532FUxMZWA5gVxZH0VVwTdjUBrJr84KRcTzSb7QWwNMe/voSs/bV
	dQF9UbSq3Ozn5WnYUzSNCjzpaJDH8CxBhe+vQio=
X-Google-Smtp-Source: 
 ABdhPJxSx8ib/AhUwq98N3KlkcBZ/dMQsLomVhmT0b25WjO6h7C7i2/eCJ4acoLJEISgnrZm1X367WwfgU6JmNL1NY4=
X-Received: by 2002:ad4:5848:0:b0:441:4092:c385 with SMTP id
 de8-20020ad45848000000b004414092c385mr9633618qvb.24.1648844532443; Fri, 01
 Apr 2022 13:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
In-Reply-To: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Apr 2022 13:22:01 -0700
Message-ID: 
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski@vivaldi.net
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a56f2505db9d88a1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56615

--000000000000a56f2505db9d88a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via lists.yoctoproject.org
<jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:

> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to host on
> the same RP4. Admittedly, a not practical platform for this purpose but i=
t
> should work.
>
> I'm trying to target the ARM ISA for the image using yocto-3.4.2. I've
> tried simply using the default setting and end up with:
>
> *ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.*
> *    Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).*
> *    Following is the list of potential problems / advisories:*
>
> *    Specified SDKMACHINE value is not valid*
>
>
> I've tried editing ./conf/local.conf:
>
> MACHINE ?=3D "qemuarm64"
>
> #MACHINE ??=3D "qemux86-64"
>

It=E2=80=99s complaining about SDKMACHINE setting which is a separate varia=
ble, can
you check your local.conf if it=E2=80=99s set to something

> But this accomplishes nothing. Needless to say, I'm a yacto/OE newbie, so
> any suggestions would be greatly appreciated.
>
> ---John
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56614):
> https://lists.yoctoproject.org/g/yocto/message/56614
> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a56f2505db9d88a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via <a href=3D"=
http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;jchludzinski=
=3D<a href=3D"mailto:vivaldi.net@lists.yoctoproject.org">vivaldi.net@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v style=3D"font-size:10pt;font-family:Verdana,Geneva,sans-serif">
<div style=3D"margin:0;padding:0;font-family:monospace">I&#39;m trying an e=
xperiment building yocto/OE on a Raspberry Pi 4 to host on the same RP4. Ad=
mittedly, a not practical platform for this purpose but it should work. <br=
><br>I&#39;m trying to target the ARM ISA for the image using yocto-3.4.2. =
I&#39;ve tried simply using the default setting and end up with:</div>
<div style=3D"margin:0;padding:0;font-family:monospace">=C2=A0</div>
<div style=3D"margin:0;padding:0;font-family:monospace">
<div><span style=3D"color:#0000ff"><em>ERROR:=C2=A0 OE-core&#39;s config sa=
nity checker detected a potential misconfiguration.</em></span></div>
<div><span style=3D"color:#0000ff"><em>=C2=A0 =C2=A0 Either fix the cause o=
f this error or at your own risk disable the checker (see sanity.conf).</em=
></span></div>
<div><span style=3D"color:#0000ff"><em>=C2=A0 =C2=A0 Following is the list =
of potential problems / advisories:</em></span></div>
<div><span style=3D"color:#0000ff"><em>=C2=A0</em></span></div>
<div><span style=3D"color:#0000ff"><em>=C2=A0 =C2=A0 Specified SDKMACHINE v=
alue is not valid</em></span></div>
<div>=C2=A0</div>
<p>I&#39;ve tried editing ./conf/local.conf:</p>
<p>MACHINE ?=3D &quot;qemuarm64&quot;</p>
<p>#MACHINE ??=3D &quot;qemux86-64&quot;</p></div></div></blockquote><div d=
ir=3D"auto"><br></div><div dir=3D"auto">It=E2=80=99s complaining about SDKM=
ACHINE setting which is a separate variable, can you check your local.conf =
if it=E2=80=99s set to something=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div style=3D"font-size:10pt;font-family:Verdana,Geneva,sans-serif"><div st=
yle=3D"margin:0;padding:0;font-family:monospace"><p dir=3D"auto"></p>
<p>But this accomplishes nothing. Needless to say, I&#39;m a yacto/OE newbi=
e, so any suggestions would be greatly appreciated.</p>
<p>---John</p>
</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#56614): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56614" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56614</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90188098/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90188098/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a56f2505db9d88a1--

