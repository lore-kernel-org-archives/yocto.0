Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5465C433EF
	for <webhook@archiver.kernel.org>; Sun, 10 Jul 2022 16:12:54 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web11.18443.1657469567365426435
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Jul 2022 09:12:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TG+9YSTz;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id o26so2377847qkl.6
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Jul 2022 09:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NJbqpYdu8kPJhCF/dtUQoyHDeWo83ADBITWJ2ZLiCsE=;
        b=TG+9YSTzO9zu0ltxXlOCdXn1Tpa5BmDvVlnxADe/rrT8sh/UFHB3DR3fC/oHeOBgJm
         Wev37kLPnAW0Q9tE0Aoa53k0Ayrs4NkOlrvJzu2V34m7fgixYHH1ifRCa3xoaIachNaJ
         baxf4S+6rZaEm3WaL4ozHyMOhVOALn4blGMvh6dhCiK8u1at4GOjKFIIUrvnksuhXQYl
         SS+Ezmn+T5G4ujfK7sPEQ/vx2+357v2dkroKWoMEjeWOQMOWM2LKo8CY/3+6+Oz6y7cp
         n0yxEmVGa7hhqE0MamOoQ+MCzcrexMnr84TBgjMfeivfRCeFzABVBWGl6W5kO0HmGTvE
         vykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NJbqpYdu8kPJhCF/dtUQoyHDeWo83ADBITWJ2ZLiCsE=;
        b=HsQK6eRrnM8EZfBTlCnM1ZABoIx2R3dsJRcIAlO/keyZK1blX75p6NurV6l/JUWCJ9
         Z6p1K43QFgQR41xiUINGklgOjTctX5CSC+AXumtCZ630D7FvlqjrOyZPMxmN9+c05Wp2
         6GMA2vPhh2BbplM076AcpUOO61U/FkVPIAyzaQPl0YMknzeogk5/mSBekgk23u3Cjt+b
         fBrmDC0NoI+/yphtbX1u7JebU7U0ah6jWE8/eGSEO2rqnla7HAK9bHr3HxiUtNW/x1Zk
         hyhQF1Z7DLmfoaNQ9nyEm+ShrKHktIElKSDR5kMaB+EuSd9G1JjmJs5OicLE1EKpOFvV
         NOFA==
X-Gm-Message-State: AJIora9q5gljYSbYhJPEvxGF/QAaZ7h6hwr+MI5TN7+Ech82VdZIgWtf
	ki8MCQgsUZE8va9Zj69c4j4uf3cs59EZJh0EG4VwoGfOj5Q=
X-Google-Smtp-Source: 
 AGRyM1vc1O0yu9Pbmd0bOi6BERXK87A/YQUMMD9Yf21LVWNJX+uAEUtF1AfFHGAOOxhY7OpLJCkn9Rb/I5APlzn2oqw=
X-Received: by 2002:a05:620a:1242:b0:6b5:77b1:8449 with SMTP id
 a2-20020a05620a124200b006b577b18449mr3804776qkl.180.1657469566241; Sun, 10
 Jul 2022 09:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <a19f8026-7a41-c953-fc50-cef58caeaae2@crashcourse.ca>
In-Reply-To: <a19f8026-7a41-c953-fc50-cef58caeaae2@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 10 Jul 2022 12:12:35 -0400
Message-ID: 
 <CAMKF1sr421GQdwwROr01opJ9p8Ajtnw38_Hs31DDXoGD2CKBTA@mail.gmail.com>
Subject: Re: [yocto] meta-riscv layer *seems* to have broken
 opensbi_%.bbappend file
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8cdad05e375b4f0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Jul 2022 16:12:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57489

--000000000000b8cdad05e375b4f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 10, 2022 at 7:56 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   the SRC_URI line:
>
>   SRC_URI:append:nezha =3D " \ ...
>
> seems odd since the machine name is actually "nezha-allwinner-d1", not
> just "nezha". i checked and the two listed patches there don't appear
> to be applied, for what i assume is just that reason.
>

This is a bug and this should be fixed to use full machine name for
override since we do not have nezha SoC override


>   or is this somehow related to the "nezha.yml" file in the meta-riscv
> layer?


No it=E2=80=99s unrelated


>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57488):
> https://lists.yoctoproject.org/g/yocto/message/57488
> Mute This Topic: https://lists.yoctoproject.org/mt/92288014/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b8cdad05e375b4f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Jul 10, 2022 at 7:56 AM Robert P. J. Day &lt;<a hre=
f=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 the SRC_URI line:<br>
<br>
=C2=A0 SRC_URI:append:nezha =3D &quot; \ ...<br>
<br>
seems odd since the machine name is actually &quot;nezha-allwinner-d1&quot;=
, not<br>
just &quot;nezha&quot;. i checked and the two listed patches there don&#39;=
t appear<br>
to be applied, for what i assume is just that reason.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">This is a bug an=
d this should be fixed to use full machine name for override since we do no=
t have nezha SoC override</div><div dir=3D"auto"><br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><br>
=C2=A0 or is this somehow related to the &quot;nezha.yml&quot; file in the =
meta-riscv<br>
layer?</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">No it=E2=
=80=99s unrelated=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex" dir=3D"auto"><br>
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57488): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57488" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57488</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92288014/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92288014/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000b8cdad05e375b4f0--

