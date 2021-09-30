Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5347C433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 13:08:31 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web11.12140.1633007309868418978
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 06:08:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qxz+sEUt;
 spf=pass (domain: gmail.com, ip: 209.85.217.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id l19so7196651vst.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 06:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=estk4Y9u+kpQQbYx9QucqoEZWtLsF9WPDolEg2Cf+Ag=;
        b=qxz+sEUtjGxPrjFx9xfIaNzV/7vU92lF4lI8ECSJFt704bHmiiGGcXp8+V1UrHmTC3
         74QarvUiqCRPUiP+cVmlfrlJb0YzDvT2hzJ7BJekV+C+3fXFFxz97sNSUSWZ3KJjCHR8
         BQzS5NHekdeHVdldp7igBuBTFcT1Ad6P3ES94y1eK6N1DHUgUTfR4O8nZdIjndimv42b
         Qe0jw5DwT1qX/vINuqG3x/ugTfABVeSMk6nXH0JPstzXbT9fIV/CG3qC+nhZ43RBVXuE
         +NAVm901AuQPUnKCCS4QrQAWloYQqyD1xVkucLAxAOcWMcrYFPP0E2i2oB5lSk5sbWqd
         Bqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=estk4Y9u+kpQQbYx9QucqoEZWtLsF9WPDolEg2Cf+Ag=;
        b=owF+UZ9PsrGKnMqnlOe0NGTIKay2OAfKJw3f/Yo4GdGrpEOa2AVgvkYM0+wSNY+zoK
         FZHGvrn3hq+xP1tmb68hbNmjOTKtVUfVzVtlDJo2G2cI9JntiD+RJQxMxfYGTMv5gOOj
         +vw7QKdPnIivMDXFnZW1f0F8t+bHmT0Xvt8OFb4hClWB9mPYL6JRE9+msCfcSUuFKjRQ
         jteCkXo2oOH/pVnrnKhx6dNFF7gtfSsFbsbbfnIYXHo3JS0ODSRzN/HMWWE41gWyQuoZ
         RgVIF4+osqYydroOX4BMBrtvGzZCmKTJTR/AKg+diiF3hQuwVOo7gq1jcl0p6jl8y/hK
         ZAWg==
X-Gm-Message-State: AOAM530UUlbJFylTxSb0nh1PEtkkf9tzMOmAGUnt2uZ75V+O8TYTtWP1
	AQQ+634BzjZcBQcpnzZmnrJQwjTHUCHdk00CzJ4=
X-Google-Smtp-Source: 
 ABdhPJxwnlOA6POiVCo2x1K25to+zDh6+vJAA/gaODDlYsMuHjWdwCGi5K3PIikxLx4l0A742iY4q7VYHl+mguOrFVw=
X-Received: by 2002:a67:cf41:: with SMTP id f1mr3346441vsm.1.1633007308963;
 Thu, 30 Sep 2021 06:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <ktNB.1633006751293636060.0DMH@lists.yoctoproject.org>
In-Reply-To: <ktNB.1633006751293636060.0DMH@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 Sep 2021 15:08:17 +0200
Message-ID: 
 <CANNYZj8i_4GsEcMeEVuf7ybLYQdGmdnEZEDTd4jn1DqZnV504Q@mail.gmail.com>
Subject: Re: [yocto] Both x86 and ARM binaries in building phase
To: sepsukkadaa@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000091022905cd3624d8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 13:08:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54918

--00000000000091022905cd3624d8
Content-Type: text/plain; charset="UTF-8"

The SDKs are designed around having a single toolchain and sysroot, so the
answer is no. You need to make two SDKs from two build trees.

Alex

On Thu, 30 Sept 2021 at 14:59, <sepsukkadaa@gmail.com> wrote:

> Hi,
>
> I'm quite new with yocto project and i did not find the answer from
> manual. Currently I have project, where i can make SDK with ARM binaries
> and those works fine. Now i have faced the situation where i need also x86
> binaries. Is it possible to make one SDK which includes both ARM and x86
> binaries? And if so, is it possible to do like own .bb file to x86 so i
> could clarify what i need to take in to x86?
>
> BR
> Jyri See
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54917):
> https://lists.yoctoproject.org/g/yocto/message/54917
> Mute This Topic: https://lists.yoctoproject.org/mt/85972823/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000091022905cd3624d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The SDKs are designed around having a single toolchai=
n and sysroot, so the answer is no. You need to make two SDKs from two buil=
d trees.<br></div><div><br></div><div>Alex<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 30 Sept 2021 at=
 14:59, &lt;<a href=3D"mailto:sepsukkadaa@gmail.com">sepsukkadaa@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i,<br><br>I&#39;m quite new with yocto project and i did not find the answe=
r from manual. Currently I have project, where i can make SDK with ARM bina=
ries and those works fine. Now i have faced the situation where i need also=
 x86 binaries. Is it possible to make one SDK which includes both ARM and x=
86 binaries? And if so, is it possible to do like own .bb file to x86 so i =
could clarify what i need to take in to x86?<br><br>BR<br>Jyri See
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54917): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54917" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54917</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/85972823/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/85972823/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000091022905cd3624d8--

