Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8401BC433FE
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 19:26:44 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web08.283.1649957949746176031
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 10:39:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IpuCamS0;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id x17so10325063lfa.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 10:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UWq7JcpSzUM3mgwo7mxdimUxryCAWBlNHdarQESb8bg=;
        b=IpuCamS0fmzs7h26uvu2eHPHcCJ/84dzw9jvNGD6taKNM2dY3svvT8Ew3ecyQVJ6ZW
         9IfoZyWoBvmumF/khCQrkQLnxH9tefOrUhLAloXM5jcKYs1RF4yYBFMXaoE9x1maIeZY
         9YM8PU1Fzff61w/Jqan+ZCqlNWyLRhLGwAXsiLwErwrFBp7WnFRIIF7aSDXlo0tnEEvm
         xe/kGN6EomZOWQvXDXwszWR2vhrqeDuH5NlLW4/aF1y3c6CFmutziIo4VHRe1gqxpDTT
         haSId88JbOGIAP6R6/dUhuI0Y5up2SpNASlHv9HV4nlL7fz+4Es7zm0yttOuGO9qfkkQ
         4HpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UWq7JcpSzUM3mgwo7mxdimUxryCAWBlNHdarQESb8bg=;
        b=u0WQpezuTI5EcH2HWBVSQLh0kROA8EQULEDk5gXZ+Qq+P8ZXo4P1Z3FwQZ52DsfT2c
         QEbeXn9SNng9e890ra36iWVzZ/8hBpPvLKDkBzWXEJ0MlH6/FQj2qxSW4yTDx1HJkWkN
         fXzzY1q3Y35hLhngZJgpr/2ZbppGwnQO4HZLSIu3fKuo14zbjEIciZCsEmZwcfDS7+3M
         zY+6dOPAGKQqzpLEgkDMWc4mDsif3MbhJClExaXQouzzdDmL/QZE1DRVNUMGvuFBU/8u
         Hz1fCx7WnIldbe9xwb7kh/d5RDHrB4kjJ1HenSrgeBiK/l5A2u5CDgwQOp7i24x4clft
         Tt2A==
X-Gm-Message-State: AOAM530ik4CAjP524VM7pUOMO6tUrltfla6L9dPbyo48SbjIDN11pWWy
	i+OqqBNqZ3cJ/wnwprsbNrMyoN+jOJ+vVnuuAlA=
X-Google-Smtp-Source: 
 ABdhPJwLz7DlEdAYo5/AwtmL4/u+4Y7lX+GNWtxOnWYa/kNXA1LwpJ83G+geictMjsivMUEGO0sU+KFaA+yWgxR2qd0=
X-Received: by 2002:a05:6512:2a88:b0:46d:fa80:820a with SMTP id
 dt8-20020a0565122a8800b0046dfa80820amr565341lfb.665.1649957947850; Thu, 14
 Apr 2022 10:39:07 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANPOWse32dD3beLdJ7AgYPV1qkYST1ZeBmTiGj7S29HSoSHfkQ@mail.gmail.com>
 <CANNYZj9jrpkPM2ju+xHZqpZczGLCtpYoyk1pZ1MRCqAz3iDbkg@mail.gmail.com>
 <CANPOWsdc6pirjk7qxfdV2V05e6tGPDX+hvzS_eYwp=M1DY=0kg@mail.gmail.com>
In-Reply-To: 
 <CANPOWsdc6pirjk7qxfdV2V05e6tGPDX+hvzS_eYwp=M1DY=0kg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Apr 2022 19:38:56 +0200
Message-ID: 
 <CANNYZj9yOvq-DX2uUvcWOFf+L16tRM6SfDy8pxZDi-6C8RUtBw@mail.gmail.com>
Subject: Re: [yocto] Building core-image-weston/x11 with custom rust/gtk3 app
To: Artur Czajkowski <atch.cpp@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000060485105dca0c50a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 19:26:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56771

--00000000000060485105dca0c50a
Content-Type: text/plain; charset="UTF-8"

What I mean is that you publish the layer in a git repository, such as
github :)

Alex

On Thu, 14 Apr 2022 at 17:48, Artur Czajkowski <atch.cpp@gmail.com> wrote:

> Hi and thank you for your reply.
> I've published that layer as suggested. Btw, inheriting pkgconfig didn't
> help. I still got exactly the same errors.
> Compressed Meta-Layer: https://ufile.io/41rz18xp
> Compilation errors: https://ufile.io/7qu9l10i
>
> Thank you
>
> On Tue, Apr 12, 2022 at 1:05 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> The error is about not being able to find pkg-config executable, so you
>> need to inherit pkgconfig in the recipe.
>>
>> It helps if you publish the layer somewhere instead of attaching it to
>> the email.
>>
>> Alex
>>
>> On Tue, 12 Apr 2022 at 12:57, Artur Czajkowski <atch.cpp@gmail.com>
>> wrote:
>>
>>> Hello,
>>> I'm having real difficulties in compiling a Rust app that uses gtk3
>>> (this app successfully builds and runs on my host machine). I'm on the
>>> master branch of poky, using rust 1.59.
>>> Is this still untested and unstabilized feature, that is gtk-rs bindings
>>> in yocto?
>>> P.S.
>>> Please find all necessary files attached
>>>
>>> Thank you
>>>
>>>
>>> --
>>>
>>>
>>> Best regards
>>> *Artur Czajkowski*
>>>
>>> https://marketplace.visualstudio.com/items?itemName=GitAtomic.GitAtomic
>>>
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#56744):
>>> https://lists.yoctoproject.org/g/yocto/message/56744
>>> Mute This Topic: https://lists.yoctoproject.org/mt/90415532/1686489
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> alex.kanavin@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>>
>
> --
>
>
> Best regards
> *Artur Czajkowski*
>
> https://marketplace.visualstudio.com/items?itemName=GitAtomic.GitAtomic
>
>

--00000000000060485105dca0c50a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What I mean is that you publish the layer in a git re=
pository, such as github :)</div><div><br></div><div>Alex<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
14 Apr 2022 at 17:48, Artur Czajkowski &lt;<a href=3D"mailto:atch.cpp@gmail=
.com">atch.cpp@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi and thank you for your rep=
ly.</div><div>I&#39;ve published that layer as suggested. Btw, inheriting p=
kgconfig didn&#39;t help. I still got exactly the same errors.</div><div>Co=
mpressed Meta-Layer: <a href=3D"https://ufile.io/41rz18xp" target=3D"_blank=
">https://ufile.io/41rz18xp</a></div><div>Compilation errors: <a href=3D"ht=
tps://ufile.io/7qu9l10i" target=3D"_blank">https://ufile.io/7qu9l10i</a></d=
iv><div><br></div><div>Thank you<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 12, 2022 at 1:05 PM A=
lexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_b=
lank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The error is about not be=
ing able to find pkg-config executable, so you need to inherit pkgconfig in=
 the recipe.</div><div><br></div><div>It helps if you publish the layer som=
ewhere instead of attaching it to the email.<br></div><div><br></div><div>A=
lex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, 12 Apr 2022 at 12:57, Artur Czajkowski &lt;<a href=3D"=
mailto:atch.cpp@gmail.com" target=3D"_blank">atch.cpp@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Hello,</div><div>I&#39;m having real difficulties in compiling a =
Rust=20
app that uses gtk3 (this app successfully builds and runs on my host=20
machine). I&#39;m on the master branch of poky, using rust 1.59. <br></div>=
<div>Is this still untested and unstabilized feature, that is gtk-rs bindin=
gs in yocto?</div><div>P.S.</div><div>Please find all necessary files attac=
hed</div><div><br></div><div>Thank you<font color=3D"#888888"><br></font></=
div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><span><b></b></span></div><div><img src=3D"https://drive=
.google.com/uc?id=3D1BLcgVZIEcdrZSYmPvbKcRoYms-gri1ec&amp;export=3Ddownload=
" width=3D"96" height=3D"96"><br></div><div><br></div><div><span><b></b></s=
pan>Best regards<br><b>Artur Czajkowski</b></div><div><b><br></b></div><div=
><b></b></div><div><a href=3D"https://marketplace.visualstudio.com/items?it=
emName=3DGitAtomic.GitAtomic" target=3D"_blank">https://marketplace.visuals=
tudio.com/items?itemName=3DGitAtomic.GitAtomic</a><b><br></b></div><div><b>=
<br></b></div></div></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56744): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56744" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56744</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90415532/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90415532/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><span><b></b></span></div><div><img src=
=3D"https://drive.google.com/uc?id=3D1BLcgVZIEcdrZSYmPvbKcRoYms-gri1ec&amp;=
export=3Ddownload" width=3D"96" height=3D"96"><br></div><div><br></div><div=
><span><b></b></span>Best regards<br><b>Artur Czajkowski</b></div><div><b><=
br></b></div><div><b></b></div><div><a href=3D"https://marketplace.visualst=
udio.com/items?itemName=3DGitAtomic.GitAtomic" target=3D"_blank">https://ma=
rketplace.visualstudio.com/items?itemName=3DGitAtomic.GitAtomic</a><b><br><=
/b></div><div><b><br></b></div></div></div></div></div>
</blockquote></div>

--00000000000060485105dca0c50a--

