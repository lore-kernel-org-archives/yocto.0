Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E5BC433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 22:11:48 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web09.131.1644012706414964117
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 14:11:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=LXUipjHC;
 spf=softfail (domain: sidebranch.com, ip: 209.85.219.50,
 mailfrom: leon@sidebranch.com)
Received: by mail-qv1-f50.google.com with SMTP id g13so6493732qvw.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 14:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KvFU0pGl1i8CdBS6jBwFjqEBOWI5864oNqGFD32JwTo=;
        b=LXUipjHCFq58zSbydNMcE+nR7Ecgnc1gsmMyV+bVvGbgL1MFej52EpihKih1unl3+8
         eP+eW5n+3AP36AAEWz9DJxhUNK/SYA06O8R78ok4kmE/kMqn9aT9UDwxHUuU/OkzQAx4
         KfN2o8aJcGSPoXv4rVJ/1v8QMXm9eVIVjj3njfVu5EPoPJ2wHeg/sgCBVxAaIKDrEEnz
         trWi8M7BRVT3koZZO7Ar/xXNyfZucyfd9xUzt4xG7AtrktpR40c79I7qXLVj+Ef18fgr
         iJN4Fjq3RCPc+FJafOXR2hQSnEJob351XD6qpu8Z3756FmtCxxKEr3P5W5NNMGh6ITtC
         ZXzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KvFU0pGl1i8CdBS6jBwFjqEBOWI5864oNqGFD32JwTo=;
        b=7gpaRzZ4fiMnLFiutHAIxUW9U00794Qob9l0MLN3EfetzEirQzmzLcKcQ+D3l6Q+Uy
         QRhClcM0wigLtdD6nKdsUK0IR9iNkOM5GFxl8pbNnq5j2wNkZq1o5CkUpV5ssquy5DwH
         NEoHD6iYiZi+rtxHIZXGu/oJLfgphbG72cme8WZOqg0h/3UxRhQXbcNr7WAKAOXJjuzJ
         0s5cXWbAt0q3l28jsuP3hp+0GEMe7pq1+CygN581v8DnrjPDzTLl4zCW4OUPo4DlWmPM
         mNRkQ/7CGPmczDGqOA6wTlU3f1lVtM6eam01HINNTy+syXvmBxstV84NE/lDDth9AUUK
         7GZw==
X-Gm-Message-State: AOAM532gmxzRzzz/MKjCJcr6CCCCQ2YXizTHgJsHd0c2U6pSslnkUcDx
	04VGZdClp28QbZRUHrU+lpbNoRF80pSemtbOozo+vA==
X-Google-Smtp-Source: 
 ABdhPJx4bwb7+IFP4wGVdwoQylvg0CQfIpMQGfLVA22xwbmKM0q3pSObcxXIusr2PKGxKH/G1TBiWpF/etRM2FBGiWc=
X-Received: by 2002:ad4:4a63:: with SMTP id cn3mr3612276qvb.50.1644012704904;
 Fri, 04 Feb 2022 14:11:44 -0800 (PST)
MIME-Version: 1.0
References: <20220204164801.Horde.1RwI36nx3ke0fpHKBBUVCbL@crashcourse.ca>
 <CANNYZj8fNCTaXu9J3uDPWzJbwnQjSmEXx0At_nv4AFZY_5akPQ@mail.gmail.com>
 <20220204170436.Horde.T8DPmNA9_nvBTVZNni9HwDr@crashcourse.ca>
In-Reply-To: <20220204170436.Horde.T8DPmNA9_nvBTVZNni9HwDr@crashcourse.ca>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 4 Feb 2022 23:11:34 +0100
Message-ID: 
 <CAMjhiJgre=hZKuVnq2gtPk-_NxGWVFwmSOUmFfR5LeK+jYvb1A@mail.gmail.com>
Subject: Re: [yocto] is there a viable YP-friendly risc-v dev kit?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000484a6105d73889fe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 22:11:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56081

--000000000000484a6105d73889fe
Content-Type: text/plain; charset="UTF-8"

Hello Robert, Alexander,

On Fri, 4 Feb 2022 at 23:04, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>
> Quoting Alexander Kanavin <alex.kanavin@gmail.com>:
>
> > I think the best option at this point is qemu. Why does the 'friend' need
> > physical hardware? :)
>
>    he's a hacker and just likes the feel of circuit boards, but
> qemu does look like the only feasible option at the moment.
>

No. There is a sweet middle ground called FPGAs. You buy a board, with an
IC on it, that is expensive as hell, empty like air, but fully
re-configurable with almost any RISC-V SoC you can think of.

For example the Rocket 64 bit RISC-V.

Regards, Leon

>
> rday
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56080):
> https://lists.yoctoproject.org/g/yocto/message/56080
> Mute This Topic: https://lists.yoctoproject.org/mt/88917825/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> leon@sidebranch.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
> --
-- 
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

--000000000000484a6105d73889fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Robert, Alexander,</div><div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 4 Feb 2022 at 23:04,=
 Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crash=
course.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)"><br>
Quoting Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" tar=
get=3D"_blank">alex.kanavin@gmail.com</a>&gt;:<br>
<br>
&gt; I think the best option at this point is qemu. Why does the &#39;frien=
d&#39; need<br>
&gt; physical hardware? :)<br>
<br>
=C2=A0 =C2=A0he&#39;s a hacker and just likes the feel of circuit boards, b=
ut<br>
qemu does look like the only feasible option at the moment.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">No. There is a s=
weet middle ground called FPGAs. You buy a board, with an IC on it, that is=
 expensive as hell, empty like air, but fully re-configurable with almost a=
ny RISC-V SoC you can think of.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">For example the Rocket 64 bit RISC-V.<br></div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Regards, Leon</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-s=
tyle:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><br>
rday<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56080): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56080" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56080</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88917825/1051=
774" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88917825/1051774</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:leon@sidebranch.com" target=3D"_blank">leon@side=
branch.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div style=3D"color:rgb(0,0,0)"><span style=3D"font-family:-webkit-standard;=
font-size:medium">--=C2=A0</span><br><span style=3D"font-family:-webkit-sta=
ndard;font-size:medium">Leon Woestenberg</span><br><span style=3D"font-fami=
ly:-webkit-standard;font-size:medium"><a href=3D"mailto:leon@sidebranch.com=
" target=3D"_blank">leon@sidebranch.com</a></span><br><span style=3D"font-f=
amily:-webkit-standard;font-size:medium">T: +31 40 711 42 76</span><br><spa=
n style=3D"font-family:-webkit-standard;font-size:medium">M: +31 6 472 30 3=
72</span><div style=3D"font-family:Helvetica"><img src=3D"http://www.sidebr=
anch.eu/en/images/sidebranch-logo.png" width=3D"96" height=3D"53"><br></div=
><span style=3D"font-family:-webkit-standard;font-size:medium">Sidebranch</=
span><font face=3D"Helvetica">=C2=A0</font><span style=3D"font-family:-webk=
it-standard;font-size:medium">Embedded Systems</span><br><span style=3D"fon=
t-family:-webkit-standard;font-size:medium">Eindhoven, The Netherlands</spa=
n><br><span style=3D"font-family:-webkit-standard;font-size:medium"><a href=
=3D"http://www.sidebranch.com" target=3D"_blank">http://www.sidebranch.com<=
/a></span><div style=3D"font-family:Helvetica"><br></div></div></div></div>=
</div></div>

--000000000000484a6105d73889fe--

