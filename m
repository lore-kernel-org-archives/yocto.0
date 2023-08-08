Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B271CC001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 18:33:31 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.69794.1691519608884804393
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 11:33:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=FGc8u4Ad;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3a78a29bccbso2905817b6e.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 11:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691519608; x=1692124408;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JuD/3m88dAqPFv1INql7ObMXK1PhaW7HGM4v5enjMUg=;
        b=FGc8u4AdnfJFb2ECzyltIt4Rld61z+Fba/KHUx1x73cI0z4ANjzrHtdjRK1ZJVFmyy
         /VJoRpeJ3skX1xUumVAGkurOBarAhskjbTd+YNd7/bBDxbDFuI43m2KNokkHpepJZJuf
         WPN9pll3PfH7iNCHz0tADJr/bhmFgieBTpbk4CDux/2Fd1OOqqG47U+P/GCHwwnHR7J8
         6hsoB4Ml+9a0kQIAKa/8/R60Jzj7a+dCDC9j+rdOW/bAEGeD2ORfTn2U2+PrAIq0ucWj
         yMxi5nNs9Nqq2hSN3I4FQZ+fWPD9cmgsw3P3UqlwtpzxLb14mDQDwnBshxmSOKJSHzGN
         0uaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691519608; x=1692124408;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuD/3m88dAqPFv1INql7ObMXK1PhaW7HGM4v5enjMUg=;
        b=D5i6PACdDN3/O+mpBFS0fEqVz6VA8Dhnp9i4Z++uwZeYXCM9ruUdYmiR8EKtIltc44
         eQM9AH+k+72I61Wi0A3u/icHSSxchjt3SFvXISvWK9vrOD3TrAEHNDXQ/ow8soVkPDVN
         KV41kA4Bx/ePOzLCN+3kd6o+mFcLfc7noT6W0DwVLISPgMfp2aKt8GphE58bW9Y4MHVE
         SAu6Ynl2ZmcxiZjlCCGR4tuPCxfhkEJ/sLmuG1fLWg+tDrJHQrVDuiPoRrltZ7yAPvqz
         InppO3M5quDmmrkrIjHCNNnj4hzSzvpG+ElxhuKykl8vhvsBAvZtnqx+XKWoYesdZj7/
         SYag==
X-Gm-Message-State: AOJu0YyOrmgqiA2zvdFVZdWNDRONgYO+jrOYI/IP94i8Hm51nL2NKsqi
	zOJ+3CxcosbUJDQW+uxbY03w0PwyC5II4FI2t9o=
X-Google-Smtp-Source: AGHT+IHIecJsLu3N1jnTVqbzKr9GpDY/MZUKTppOznd6Y6+iap2Sik42mZ7zQENhYl77sWfQsQDF33zMGqKF5bnow+Q=
X-Received: by 2002:a05:6808:2022:b0:3a7:adf5:d5a6 with SMTP id
 q34-20020a056808202200b003a7adf5d5a6mr766089oiw.32.1691519608002; Tue, 08 Aug
 2023 11:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqpfaR8Wx+N7oCQ4q8M2TVgaunE01ZLSi=8NTJA1465jQ@mail.gmail.com>
 <5592.1691514161056059340@lists.yoctoproject.org> <CAMKF1sr5OviPhVrJvm3t3_tk4N4hP=kkSdP7PWH_aPgvBCNsFw@mail.gmail.com>
 <CANDCFSyTNhLgrHD74ac2hxpF67y6KYGP1E45zA=RF91G7TaMcA@mail.gmail.com>
In-Reply-To: <CANDCFSyTNhLgrHD74ac2hxpF67y6KYGP1E45zA=RF91G7TaMcA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Aug 2023 11:33:16 -0700
Message-ID: <CAMKF1spEw5KejSDqzDU_J0yau6rLwf6FH9Gbq9tqpcN6OFFtQA@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Daniel Chaves <dchvs11@gmail.com>
Cc: Crane <crane2018@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005d9eeb06026d9926"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 18:33:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60745

--0000000000005d9eeb06026d9926
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 8, 2023 at 10:44 AM Daniel Chaves <dchvs11@gmail.com> wrote:

> Hi, it might be a syntax issue with THISDIR variable expansion: it should
> be in curly braces for Yocto.
>

Ah yes I was ignoring it all along thinking it is meta code but if it is
literally coded like this then that is the issue really


> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> SRC_URI:append =3D  " file://rpi-config.patch"
>
> Have a look to this Variable Expansion documentation for more details:
> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#variable-expansion
>
> Regards,
> Daniel
>
>
> On Tue, Aug 8, 2023 at 11:28=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wro=
te:
>
>> where does 0001-disable-bluetooth-and-enable-uart0.patch exist in your
>> layer? can you show the path ?
>>
>> On Tue, Aug 8, 2023 at 10:02=E2=80=AFAM Crane <crane2018@gmail.com> wrot=
e:
>> >
>> > The error is this when bitbaking only the recipe for rpi-config:
>> > "WARNING: rpi-config-git-r5 do_fetch: Failed to fetch URL
>> file://0001-disable-bluetooth-and-enable-uart0.patch, attempting MIRRORS=
 if
>> available
>> > ERROR: rpi-config-git-r5 do_fetch: Fetcher failure: Unable to find fil=
e
>> file://0001-disable-bluetooth-and-enable-uart0.patch anywhere. The paths
>> that were searched were:
>> > ....
>> > "
>> > The listed searching paths don't include the custom layer where the
>> patch is placed.
>> > The complete error info is in the attached file "bitbake
>> rpi-config.txt".
>> >
>> > When bitbaking the recipe for the image, the error is the same.
>> > The complete error info is in attached file "bitbake image.txt".
>> >
>> >
>> >
>> >
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60740):
>> https://lists.yoctoproject.org/g/yocto/message/60740
>> Mute This Topic: https://lists.yoctoproject.org/mt/100614184/7043332
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> dchvs11@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--0000000000005d9eeb06026d9926
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Aug 8, 2023 at 10:44 AM Daniel Chaves &lt;<a href=
=3D"mailto:dchvs11@gmail.com">dchvs11@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi, it might =
be a syntax issue with THISDIR variable expansion: it should be in curly br=
aces for Yocto.<br></div></div></blockquote><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Ah yes I was ignoring it all along thinking it is meta code =
but if it is literally coded like this then that is the issue really=C2=A0<=
/div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><div dir=3D"ltr"><br><div>FILESEXTRAPATHS:prepend :=3D &quot;${THISDI=
R}/files:&quot;</div>
<div>SRC_URI:append =3D=C2=A0 &quot; file://rpi-config.patch&quot;<br><br><=
/div><div>Have a look to this Variable Expansion documentation for more det=
ails: <a href=3D"https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-man=
ual/bitbake-user-manual-metadata.html#variable-expansion" target=3D"_blank"=
>https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user=
-manual-metadata.html#variable-expansion</a><br></div><div><br></div><div>R=
egards,<br></div><div>Daniel<br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 8, 2023 =
at 11:28=E2=80=AFAM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">where does 0001-disable-bluetooth-and-enab=
le-uart0.patch exist in your<br>
layer? can you show the path ?<br>
<br>
On Tue, Aug 8, 2023 at 10:02=E2=80=AFAM Crane &lt;<a href=3D"mailto:crane20=
18@gmail.com" target=3D"_blank">crane2018@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The error is this when bitbaking only the recipe for rpi-config:<br>
&gt; &quot;WARNING: rpi-config-git-r5 do_fetch: Failed to fetch URL file://=
0001-disable-bluetooth-and-enable-uart0.patch, attempting MIRRORS if availa=
ble<br>
&gt; ERROR: rpi-config-git-r5 do_fetch: Fetcher failure: Unable to find fil=
e file://0001-disable-bluetooth-and-enable-uart0.patch anywhere. The paths =
that were searched were:<br>
&gt; ....<br>
&gt; &quot;<br>
&gt; The listed searching paths don&#39;t include the custom layer where th=
e patch is placed.<br>
&gt; The complete error info is in the attached file &quot;bitbake rpi-conf=
ig.txt&quot;.<br>
&gt;<br>
&gt; When bitbaking the recipe for the image, the error is the same.<br>
&gt; The complete error info is in attached file &quot;bitbake image.txt&qu=
ot;.<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60740): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60740" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60740</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100614184/704=
3332" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100614184/7043332</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:dchvs11@gmail.com" target=3D"_blank">dchvs11@gma=
il.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div></div>

--0000000000005d9eeb06026d9926--

