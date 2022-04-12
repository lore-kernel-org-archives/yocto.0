Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A4DEC49EA2
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:43 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web08.9344.1649761542330042662
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 04:05:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dD2A0ruK;
 spf=pass (domain: gmail.com, ip: 209.85.208.170,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id u19so13983546ljd.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 04:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QsRu+8I+FzdlKQOcQOxIpLRffTz3ZCPw8TUIaCoBoxw=;
        b=dD2A0ruKK+EP6ffNuGKcQLEZ88LpoOXp6w9j9eBaeMjBzQMb30+jDk6wZ1l/ksOok3
         EsoNXx8L14sZCT/WFATatStzjSYZs7LlYP7HH81Jb531AL+Y4VxD00cPQFQrIQD1i38l
         +w4rQkfhSnikmJglK7w8xNiD55I0ykTdwr+c3OWCWYF8yI2c2wA4OOm4xONSMAlRQpVL
         YVwTr0hX8mGQwWSjZ8BZtwdqUD/lSrj7kcaRMKSZBpIUk5nSIQ4btEYkHjn0AMURooVb
         AO1j1tnJhnew8Z+mVYiw3X0kGIpJ08uFayyoUK8cV5X+m2IeLJhJR3FryfCZZOZMgkHT
         UUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QsRu+8I+FzdlKQOcQOxIpLRffTz3ZCPw8TUIaCoBoxw=;
        b=GuXJx+dgTu2sQEdB0xo6u/tbRVR2Toz+guoYDwd8W/JG9pp9aBt2CvheHuIfFUKite
         dPu/hnpAmoBXUVJQl6Di/W8y4HWqDTYNBfKAPnQvg+fvqfkV9YRfH6TkSy1WYfdrpKxn
         XB1xDwFUbcO4xDz1XEOTPb3ik3aOae6nFUjhs1UHLtXD1XtfKs6AVqfqmlpn71TDu3t7
         R8KS0W2W0eKFZBzzYWvyfPxhVEFpgB07CFqPeGJ/SvJzBNhjIub2giDcRMUytQuY0ts5
         urspCezqqVAu3bIkPraQCD8WvogR4uNC2KvKtn+Wymn9JVdrumdqpVS/yUUNVucBzv/H
         r7cg==
X-Gm-Message-State: AOAM5331a6PvxulCfFlU3AtkS8FAu9Uwi0rH7mlyj2Yzh/wKA3akXfR/
	t1o+0VgToXtmThS366IlXxHDgc8/C5JWrJtOpaQ=
X-Google-Smtp-Source: 
 ABdhPJwCx2Ww/VGAUMsRKTvSV2toEWDNarZeRb4jDd5jvoOPBT44EikQOVWV/TAYGhWMMazp4af4m9gpRFvf+fii25U=
X-Received: by 2002:a2e:984e:0:b0:24b:5c8b:d5b0 with SMTP id
 e14-20020a2e984e000000b0024b5c8bd5b0mr8906097ljj.56.1649761540407; Tue, 12
 Apr 2022 04:05:40 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANPOWse32dD3beLdJ7AgYPV1qkYST1ZeBmTiGj7S29HSoSHfkQ@mail.gmail.com>
In-Reply-To: 
 <CANPOWse32dD3beLdJ7AgYPV1qkYST1ZeBmTiGj7S29HSoSHfkQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Apr 2022 13:05:28 +0200
Message-ID: 
 <CANNYZj9jrpkPM2ju+xHZqpZczGLCtpYoyk1pZ1MRCqAz3iDbkg@mail.gmail.com>
Subject: Re: [yocto] Building core-image-weston/x11 with custom rust/gtk3 app
To: Artur Czajkowski <atch.cpp@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000094857b05dc730a17"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56746

--00000000000094857b05dc730a17
Content-Type: text/plain; charset="UTF-8"

The error is about not being able to find pkg-config executable, so you
need to inherit pkgconfig in the recipe.

It helps if you publish the layer somewhere instead of attaching it to the
email.

Alex

On Tue, 12 Apr 2022 at 12:57, Artur Czajkowski <atch.cpp@gmail.com> wrote:

> Hello,
> I'm having real difficulties in compiling a Rust app that uses gtk3 (this
> app successfully builds and runs on my host machine). I'm on the master
> branch of poky, using rust 1.59.
> Is this still untested and unstabilized feature, that is gtk-rs bindings
> in yocto?
> P.S.
> Please find all necessary files attached
>
> Thank you
>
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
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56744):
> https://lists.yoctoproject.org/g/yocto/message/56744
> Mute This Topic: https://lists.yoctoproject.org/mt/90415532/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000094857b05dc730a17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The error is about not being able to find pkg-config =
executable, so you need to inherit pkgconfig in the recipe.</div><div><br><=
/div><div>It helps if you publish the layer somewhere instead of attaching =
it to the email.<br></div><div><br></div><div>Alex<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 12 Apr =
2022 at 12:57, Artur Czajkowski &lt;<a href=3D"mailto:atch.cpp@gmail.com">a=
tch.cpp@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div>I&#39;m having real=
 difficulties in compiling a Rust=20
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

--00000000000094857b05dc730a17--

