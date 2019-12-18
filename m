Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web09.2053.1576706376080151751
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 13:59:36 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=RouTIDzd;
 spf=pass (domain: blade-group.com, ip: 209.85.210.52, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f52.google.com with SMTP id k14so4309846otn.4
        for <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2019 13:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FUYFt1cLKd1O1o+FTLQls1sehEY7Ot1ICV4m1JCYz/E=;
        b=RouTIDzd79vIFVI+r1S0KY3b6dF+UcHpAdnGtHzt25iQ30M2z93ZRDovhm6OBNa8X6
         +W7+jx9tkS6eNt3QEuzGbO8DsTY5FfJ71o3bYSwb5V8Kl2uU5E7vUELsWIavFGC/2Fkb
         EKPHYBxKJSEXxHvyh+kDnqRUhAHdBTnP+ygPPPWFECgZocVCRWWXfpGsR22gD6EWPeZc
         xjcQhhuM6fhUZKp/BwPuyH2hAHTKoWcbep6YGWnxX7MHM2WulPbN/7hPg7f3vXuo2BZn
         Hp/Kicbr114GJrZ4nQrB5OsOMQr8qTEAyNq6ZGfI0ikIrUcTo9StTbRJxJKkm6aLUBfM
         U7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FUYFt1cLKd1O1o+FTLQls1sehEY7Ot1ICV4m1JCYz/E=;
        b=FV+qiHe4m47+adJ8V25cHy8g7ZOWpKupYZ0Lc3uQ0SEoQx13T7VLOn7YmW+qjiCvav
         2q6XPC3rhpv9bKpMTGbnp0VCZ08p2thMn4d5skMw6b2TlGP4xTuGaCtxGDFWz8yonr2K
         Cqrrdvm6LsKmazYOeCSrEVH9WULlyPZCVrcsaXRXMJJH7CcdROMky4U+TxQMk/1KlHIg
         faLbUT/RdmfrG5hsKrDDRESMqyceKbaNA2CHwzEe6AS7Kh14/x+L36RhhqoO2Wswo2tq
         8ksfOq8F1gtHM2y3EfAy9OcQVl/Z8LlP0pakDuXbshVXXzkXkJazEfhNTiHdVOmlW/4k
         OD6A==
X-Gm-Message-State: APjAAAWGJ2hEqKZqFL8mvTZrkk56fBKWNhdx391tDC/0qAwLFNNdaN0/
	bwZspLlwoKBG+C2EkrKP1Ej/oxHIj161214wFhIrIw==
X-Google-Smtp-Source: APXvYqxmh6sDVrg7eFN4Io1JhTEON3wMh3I40kxoD0tiEBjUvk1ke/NhB8c2Y2J6/lc3zABZm0QKbbIp2TRaEcmVP/o=
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr5151557otp.94.1576706375474;
 Wed, 18 Dec 2019 13:59:35 -0800 (PST)
MIME-Version: 1.0
References: <AM4PR05MB3380F6E1FB4D0926B7078FDCA8530@AM4PR05MB3380.eurprd05.prod.outlook.com>
In-Reply-To: <AM4PR05MB3380F6E1FB4D0926B7078FDCA8530@AM4PR05MB3380.eurprd05.prod.outlook.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 18 Dec 2019 22:59:24 +0100
Message-ID: <CA+4=imb51A_stNKwdjqSn5BXTuST2FZyWey1W_V+X8Mx+hBrSg@mail.gmail.com>
Subject: Re: [yocto] Inverse of BBFILES_DYNAMIC
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006cf4f4059a018fc5"

--0000000000006cf4f4059a018fc5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 18 d=C3=A9c. 2019 =C3=A0 21:10, Konrad Weihmann <kweihmann@outlook.=
com> a
=C3=A9crit :

> Hi All,
>
> I was wondering if there is already a mechanism which kind of mimics the
> inverse of BBFILES_DYNAMIC.
> Like I want a recipe to be put into tree only if a layer is absent.
>
> Example: I need a fancy python-lib, which isn't part of the core-lib, but
> according to the layer index can be obtained by some 3rd party layer (let=
's
> call fancy-layer).
> For some projects I worked for, it might be challenging to use
> "fancy-layer" as it doesn't comply with some corporate rules or whatsoeve=
r,
> while others don't see any issues here.
>
> What I have in mind is a mechanism like BBFILES_DYNAMIC, but inverse, lik=
e
>
> BBFILES_DYNAMIC +=3D "!fancy-layer:
> ${LAYERDIR}/dynamic-layers/fancy-fallback/*/*.bb"
>
> So in case fancy-layer is absent, I could put in a recipe which isn't tha=
t
> well maintained (also might including a warning that this only a fallback
> solution), but does make my layer usable for a wider audience.
>
> So back to the original question, is that already existing functionality?
> Or is there a workaround hack existing?
> If both not, is that something, that could be considered as valuable by
> the project (If so I could craft some patches for that)?
>

Before BBFILES_DYNAMIC the funtionnality could already be achieved with
code like the following:

BBFILES +=3D "${@'
'.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
               for layer in BBFILE_COLLECTIONS.split())}"

You're only limited by what you can express using such python expressions :=
)


> Regards
> Konrad
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47760):
> https://lists.yoctoproject.org/g/yocto/message/47760
> Mute This Topic: https://lists.yoctoproject.org/mt/68804558/3618661
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> yann.dirson@blade-group.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--0000000000006cf4f4059a018fc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 18 d=C3=A9c. 2019 =C3=A0=
=C2=A021:10, Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">k=
weihmann@outlook.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi All,<br>
<br>
I was wondering if there is already a mechanism which kind of mimics the in=
verse of BBFILES_DYNAMIC.<br>
Like I want a recipe to be put into tree only if a layer is absent.<br>
<br>
Example: I need a fancy python-lib, which isn&#39;t part of the core-lib, b=
ut according to the layer index can be obtained by some 3rd party layer (le=
t&#39;s call fancy-layer).<br>
For some projects I worked for, it might be challenging to use &quot;fancy-=
layer&quot; as it doesn&#39;t comply with some corporate rules or whatsoeve=
r, while others don&#39;t see any issues here.<br>
<br>
What I have in mind is a mechanism like BBFILES_DYNAMIC, but inverse, like<=
br>
<br>
BBFILES_DYNAMIC +=3D &quot;!fancy-layer: ${LAYERDIR}/dynamic-layers/fancy-f=
allback/*/*.bb&quot;<br>
<br>
So in case fancy-layer is absent, I could put in a recipe which isn&#39;t t=
hat well maintained (also might including a warning that this only a fallba=
ck solution), but does make my layer usable for a wider audience.<br>
<br>
So back to the original question, is that already existing functionality? O=
r is there a workaround hack existing?<br>
If both not, is that something, that could be considered as valuable by the=
 project (If so I could craft some patches for that)?<br></blockquote><div>=
<br></div><div>Before BBFILES_DYNAMIC the funtionnality could already be ac=
hieved with code like the following:</div><div></div><div><br></div><div>BB=
FILES +=3D &quot;${@&#39; &#39;.join(&#39;${LAYERDIR}/dynamic-layers/%s/rec=
ipes*/*/*.bbappend&#39; % layer \<br>=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for layer in BBFILE_COLLECTIONS.split())}&quot;<br></div>=
<div><br></div><div>You&#39;re only limited by what you can express using s=
uch python expressions :)<br></div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<br>
Regards<br>
Konrad<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47760): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47760" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47760</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68804558/3618=
661" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/68804558/3618661</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:yann.dirson@blade-group.com" target=3D"_bl=
ank">yann.dirson@blade-group.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" tar=
get=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=3D=
"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></div>=
</div>

--0000000000006cf4f4059a018fc5--
