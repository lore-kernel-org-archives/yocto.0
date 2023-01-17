Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8425AC54E76
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 19:48:26 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.207654.1673984900184414573
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 11:48:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YKS2blKB;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id j17so48649097lfr.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 11:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yBfOxU7OJ2Kz1ttleyf7WygRsfCSDB/uE6gbIt6LDYo=;
        b=YKS2blKBlYcCfOe0WiW+U5M1/ayxB741FwUFgxo6sBDCBtOtH1HH/py4v8cbWVAdWS
         Ga/VX3LUhjERLq7lyn5dT9Fp9prFuGgsBzMQwRX1RR9idcirlPX+Pxch8NVuv7gPr0kT
         sI+ojsZpnxRbfEWWToBtWHXo5xaIIQF6YqyN2y4HnBzwjABrKU8kaOj7/AnmJRHX9Omq
         n4RwmdgnahIXykcF6181yb8rOKXHhcOUnLbK77EN+wS92uH+KENxGKR3+XybvVHeFwx/
         Wc73Ww+yDe1y3y0WTrqd1xKWX6H1PNZF8kH4Rqx2LLKfaCmoNUk4A4gH46JXBLOT3fcL
         +FRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yBfOxU7OJ2Kz1ttleyf7WygRsfCSDB/uE6gbIt6LDYo=;
        b=KgCeEafxHn+DdOtg/9urR00s1lX10GYH3DdSuQHlBQycq+GlJA7E1MRU1wvNt62421
         XMtUUBQyauEpg3ackYgwelEkiEaJgjcfIpXjNBBfZRXTm/5h2Fp4icmVRntW8+/3Xhiv
         I75Z43GL6lt3Woryyd6g4+ExsyI2k5ODOURLT+Dd5NrQsrhpn2R8Hm6MKON98nzFmvVY
         tgXeNbK2AdRj5BTubYFPYF/10KCiOC5H5T4IxUQ249EYfIMv10gTylSB/ZDlgGMIW1Qr
         EK/L0AoIc4QSf2M345EymrTJQHsccDPPXZtv4rKXR3ftNImj7NsIg3d59qldcsK+3R+u
         vQNg==
X-Gm-Message-State: AFqh2kr8tQ0DKJ9OaEb9NC2AOObiHThFEuw8b04bZURETkVo2PAQ91rV
	5jDThhYFIyegx99OtY/gbmFeWXbpXWn1QFNhnUw=
X-Google-Smtp-Source: AMrXdXuCRzd712PkjgJJx7A/6gLZrt21MWdY2dnCSbMDHZNZ5PYF1p5EYsYqQ1tBMiJi2LnV1phlW2KI9x1OSLzFG/4=
X-Received: by 2002:a05:6512:3ca1:b0:4cc:7ecb:32af with SMTP id
 h33-20020a0565123ca100b004cc7ecb32afmr343632lfv.393.1673984898188; Tue, 17
 Jan 2023 11:48:18 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
 <CANNYZj90RhVw_EKkOZcz1vsz+DjcihwWKtrMygt+F1t6PqsaMw@mail.gmail.com> <CADa-vC31UPSh1ymwvbft9DQinefR+r-DK_WPzPMtxoJmydvz-w@mail.gmail.com>
In-Reply-To: <CADa-vC31UPSh1ymwvbft9DQinefR+r-DK_WPzPMtxoJmydvz-w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 17 Jan 2023 20:48:07 +0100
Message-ID: <CANNYZj9qvxDi7aY_Rf_ox1d_QLQjB_mHAYRuobpFAm5reu1hng@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: William Huang <whuang8933@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000374a4f05f27afbea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 19:48:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59010

--000000000000374a4f05f27afbea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is literally the first time I hear about gcc exception not being good
enough. Your legal team holds the ultimate authority, but it=E2=80=99s most
certainly not common practice. How did they justify it?

Alex

On Tue 17. Jan 2023 at 20.26, William Huang <whuang8933@gmail.com> wrote:

> Thanks for the response!
> I did try googling the interpretation of the license exception but
> there are always back-and-forth debates on the issue.
> Anyways, consulting with the legal team came back with the inclusion
> of these libraries would still trigger the "installation information"
> clause. For this reason, I'm investigating the feasibility of
> replacing these libraries completely.
>
> On Tue, Jan 17, 2023 at 1:39 PM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > The GCC exception frees you from having to fulfil the terms of gpl3 in
> almost all cases. Links with details are easily obtainable with google
> search.
> >
> > Alex
> >
> > On Tue 17. Jan 2023 at 19.17, William Huang <whuang8933@gmail.com>
> wrote:
> >>
> >> Hello all,
> >> I'm in the process of generating an image without GPLv3 software. I
> have removed everything but the gcc-runtime and libgcc libraries. These a=
re
> gpl-3.0 with GCC exception. I'm not sure how feasible it is to remove the=
se
> or replace them with llvm replacements. Just wondering if anyone had been
> down this path before and if you can share your experience that would be
> great!
> >>
> >> Thanks
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#59007):
> https://lists.yoctoproject.org/g/yocto/message/59007
> >> Mute This Topic: https://lists.yoctoproject.org/mt/96336692/1686489
> >> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> >> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> >> Mute #llvm:https://lists.yoctoproject.org/g/yocto/mutehashtag/llvm
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
>

--000000000000374a4f05f27afbea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">This is literally the first time I hear about gcc excepti=
on not being good enough. Your legal team holds the ultimate authority, but=
 it=E2=80=99s most certainly not common practice. How did they justify it?<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue 17. Jan =
2023 at 20.26, William Huang &lt;<a href=3D"mailto:whuang8933@gmail.com">wh=
uang8933@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Thanks for the =
response!<br>
I did try googling the interpretation of the license exception but<br>
there are always back-and-forth debates on the issue.<br>
Anyways, consulting with the legal team came back with the inclusion<br>
of these libraries would still trigger the &quot;installation information&q=
uot;<br>
clause. For this reason, I&#39;m investigating the feasibility of<br>
replacing these libraries completely.<br>
<br>
On Tue, Jan 17, 2023 at 1:39 PM Alexander Kanavin<br>
&lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavi=
n@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The GCC exception frees you from having to fulfil the terms of gpl3 in=
 almost all cases. Links with details are easily obtainable with google sea=
rch.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Tue 17. Jan 2023 at 19.17, William Huang &lt;<a href=3D"mailto:whua=
ng8933@gmail.com" target=3D"_blank">whuang8933@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello all,<br>
&gt;&gt; I&#39;m in the process of generating an image without GPLv3 softwa=
re. I have removed everything but the gcc-runtime and libgcc libraries. The=
se are gpl-3.0 with GCC exception. I&#39;m not sure how feasible it is to r=
emove these or replace them with llvm replacements. Just wondering if anyon=
e had been down this path before and if you can share your experience that =
would be great!<br>
&gt;&gt;<br>
&gt;&gt; Thanks<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; View/Reply Online (#59007): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/59007" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/59007</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/9633=
6692/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/mt/96336692/1686489</a><br>
&gt;&gt; Mute #gplv3:<a href=3D"https://lists.yoctoproject.org/g/yocto/mute=
hashtag/gplv3" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/g/yocto/mutehashtag/gplv3</a><br>
&gt;&gt; Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mute=
hashtag/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/g/yocto/mutehashtag/yocto</a><br>
&gt;&gt; Mute #llvm:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteh=
ashtag/llvm" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoprojec=
t.org/g/yocto/mutehashtag/llvm</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank"=
>alex.kanavin@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
</blockquote></div></div>

--000000000000374a4f05f27afbea--

