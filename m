Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB525C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 12:05:51 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web09.8261.1633694750463204217
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 05:05:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=HXK//gFN;
 spf=pass (domain: linaro.org, ip: 209.85.208.41,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f41.google.com with SMTP id b8so35476949edk.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 05:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yz0q2rzHpE6/QC7pKKGN/ky7dvZuZvLYDhCmXS+cemo=;
        b=HXK//gFNOtf+XirKrpp/8mt6t5vIMFkrhUPPpdL+b7lSfBF1ROrcQJ9xlI2CZ6UGXL
         eyNY/vrmsVOKTbp5XyKwwoHFCVglkbROV5WEu58jNwGshllR8ZrmH53u1urg98ViNnQx
         aP2N/Re6AL6YsYorgfvpyuKb/hqG3tq+B4NjGua+RTFuv73sTtUtRx7F5TbNzLJ8rg57
         L0Z5YyvqSFYenbCI+PQm/oLf6lJQds2LjdGoBvIdbDoQIvIA+klmRwXbEXzz7uwXqg33
         wJjOyd7VVtVe+YJS6i3cPhYjxe6WdyyQE0QLnXM+NtzZYOHSH3Mn6CtlA7YGNW4agGlC
         3Igg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yz0q2rzHpE6/QC7pKKGN/ky7dvZuZvLYDhCmXS+cemo=;
        b=HGi9kFIZVEPPeixHME3m/TE37JU5Hg7EiI5mIUJEFAnksdtjrvl4Fy8Vd2jGjEyDP/
         tCG3qGIy6FC/bPzevDSJBvc+NWPd0Q088attt+8yLMP3+u1FXZSZ4KmybrK1W95lcceg
         mRWT+mv78wyQnnsWCW4AJdyhjaEpoSZbLq4A4HICG/drykofObOgjSbzA++33PA/wv7j
         O4wRyc6tJY+aaF6GCti62dYyx5f9W9An8afeWbS0Ba+dCmudn52m+sjSuqvRzbxePm21
         DExc6d4prQdaqW1HR+CVaCCe1dwqI05xQZ7Hs1a1dLg+Kq1PRSawCh4LjkBvtPvbbXed
         p8gQ==
X-Gm-Message-State: AOAM530tUT0Cz21Qty4cqdZlwPnGtZAsfbud6eludL4A1++IUMn5OsAt
	Hu4ouKcsNk4qBeQ87LEASGvgs8X4xroor7B0yC1gtg==
X-Google-Smtp-Source: 
 ABdhPJxMy0yV9eZ5d3spA2sBONR2DboUET2XJ/TMSCxVhl6koB+t5EAVxXf0hYKRdPTqlDBNZkGlJPJ+KTKxnWWHdlM=
X-Received: by 2002:a17:906:b098:: with SMTP id
 x24mr3884459ejy.88.1633694748414;
 Fri, 08 Oct 2021 05:05:48 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_nVZ9P6AULwZ5d0o5MEQYO8ewyOo8-DedMV4g_cVpC9Q@mail.gmail.com>
 <15143.1633687046063540960@lists.yoctoproject.org>
 <CANNYZj9eQ9dZz0PsU-Dm7=c2CnH_C8dQ4RfVuJ23Q1rVV8K0tw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9eQ9dZz0PsU-Dm7=c2CnH_C8dQ4RfVuJ23Q1rVV8K0tw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 8 Oct 2021 14:05:37 +0200
Message-ID: 
 <CAP71WjxQGbGs=Qfj0DZHU+nLwFsNn85wUxtQn0Kt3BxUFDCuTA@mail.gmail.com>
Subject: Re: [yocto] How to submit/create a new repository in
 http://git.yoctoproject.org/
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: tienhock.loh@starfivetech.com,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000026b3f805cdd6338e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 12:05:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54997

--00000000000026b3f805cdd6338e
Content-Type: text/plain; charset="UTF-8"

hey,

On Fri, Oct 8, 2021 at 1:53 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> There's also a more specific thing you'd need to resolve: I believe you'd
> need to pass all of the requirements listed here:
> https://www.yoctoproject.org/ecosystem/branding/compatible-registration/
>

Not really. We definitely believe that the Yocto Project Compatible
program is a valuable tool for our ecosystem. However, layers on git.yp.org
are not required to be compatible. But that's a good suggestion for the
future, perhaps ;)


> Alex
>
> On Fri, 8 Oct 2021 at 11:58, <tienhock.loh@starfivetech.com> wrote:
>
>> Hi Alex,
>>
>> Actually we'd like to have it up and get everything (including meta-riscv
>> by Khem) into git.yoctoproject.org so that everything in consolidated
>> into a central location.
>> Does that make sense? Or it is expected that vendors do host their own
>> repository? I see meta-intel, meta-xillinx, so I suspect platform vendor
>> should also get the layers into git.yoctoproject.org
>>
>> I just read that we'll need to join membership to get repos into the git.
>> I will discuss this with the management.
>>
>> Thanks for the quick response Alex.
>>
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54996):
> https://lists.yoctoproject.org/g/yocto/message/54996
> Mute This Topic: https://lists.yoctoproject.org/mt/86163136/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000026b3f805cdd6338e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hey,</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 8, 2021 at 1:53 PM Alexan=
der Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div></div><div>There&#39;s also a more specific thin=
g you&#39;d need to resolve: I believe you&#39;d need to pass all of the re=
quirements listed here:</div><div><a href=3D"https://www.yoctoproject.org/e=
cosystem/branding/compatible-registration/" target=3D"_blank">https://www.y=
octoproject.org/ecosystem/branding/compatible-registration/</a></div></div>=
</blockquote><div><br></div><div>Not really. We definitely believe that the=
 Yocto Project Compatible program=C2=A0is a valuable tool for our ecosystem=
. However, layers on <a href=3D"http://git.yp.org">git.yp.org</a> are not r=
equired to be compatible. But that&#39;s a good suggestion for the future, =
perhaps ;)=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div><br></div><div>Alex<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 8 Oc=
t 2021 at 11:58, &lt;<a href=3D"mailto:tienhock.loh@starfivetech.com" targe=
t=3D"_blank">tienhock.loh@starfivetech.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi Alex,<br><br>Actually we&#39;d=
 like to have it up and get everything (including meta-riscv by Khem) into =
<a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproject.=
org</a> so that everything in consolidated into a central location.<br>Does=
 that make sense? Or it is expected that vendors do host their own reposito=
ry? I see meta-intel, meta-xillinx, so I suspect platform vendor should als=
o get the layers into <a href=3D"http://git.yoctoproject.org" target=3D"_bl=
ank">git.yoctoproject.org</a><br><br>I just read that we&#39;ll need to joi=
n membership to get repos into the git. I will discuss this with the manage=
ment.<br><br>Thanks for the quick response Alex.=C2=A0
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54996): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54996" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54996</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86163136/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86163136/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000026b3f805cdd6338e--

