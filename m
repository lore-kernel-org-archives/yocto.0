Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAB8C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 13:07:37 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web08.8867.1633698455880930635
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 06:07:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=P/1g9xOK;
 spf=pass (domain: gmail.com, ip: 209.85.222.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id q13so6710431uaq.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 06:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y+NgfAGnBwpxSWQk0wOJJsw6UWjqSIZ4X/fJ6Wqnxec=;
        b=P/1g9xOK3NZnIywIYYwDjHKK8RvwrM2V2X+NaK/zPbGuKZ5mgkIrcX2hLMfx0IgWwH
         I+gZNMAWcfShlROmYR0yFJyCZqZ2CNszpJmx24UZNzl+QYAnd09NhExqBAhXwGNcIdgb
         jQbHbL9Pt2BfoBp6+l0egInySHVmCdSoQctaJ/+sHa7bxXBHXnDWMBup9swz52iasYzU
         yJwuqhqK/ZS6UcDbZawouIIUVDLqBuzxIXhosvGW0KEqGUiocYKNfw4u68SzPd9XEdhi
         96FQvQ42KTrmRTj0AAYHf/JhitHaVqPNK/51BaraQGSPQV+Zp2jnAstOQKhYjyQqrrU+
         ADhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y+NgfAGnBwpxSWQk0wOJJsw6UWjqSIZ4X/fJ6Wqnxec=;
        b=553jKDzdFEEYiVbgBJLhebHitL0dLI3kUyZWvfYGHqcjtSVpA88OTUUYnmSFxOjhEY
         /XJLXizgE7xzRoh4+jt5xEyIMX0k2MjNbaA7IH66VF2lnkEO1FZnaVOlRmqWVkwPGDvS
         kd83/MKH7NaNIBjB/MNnf3kXBxPc8n4VosYPXv9tHnxRtlB5K+/5vaWPDQ0UzYyqMCZz
         G/LM7kBk3lpY05rYfYzKEiESDVAJQjI5ejywI055Z1750QW8WtmnSU2WMv0nYIKr1Qh2
         9rj1ss9Zg95ez1GItPRVn/5ItsbB9awrdwdx87X2w7w+B6jvxEfmlmrvJvwqW7Ufy1VL
         nLfA==
X-Gm-Message-State: AOAM532EVi+DIO/zRUot0pmBESIBfpzDp5XjelnQbg05HC8Ef7wK0pQh
	xIKSTFZ27iyBYeawvAmvUxAuS2v3Bb1P4o0fhCs=
X-Google-Smtp-Source: 
 ABdhPJxfhzX/WWs/GESvpqrSi3jxhTSQ/nC1fCw2YRb3EqzlNDlvtfZ2AKnFlWjrvBkWRIxZ09w6StHeyQ7SSLYGkZM=
X-Received: by 2002:ab0:3c93:: with SMTP id a19mr2666935uax.93.1633698455020;
 Fri, 08 Oct 2021 06:07:35 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_nVZ9P6AULwZ5d0o5MEQYO8ewyOo8-DedMV4g_cVpC9Q@mail.gmail.com>
 <15143.1633687046063540960@lists.yoctoproject.org>
 <CANNYZj9eQ9dZz0PsU-Dm7=c2CnH_C8dQ4RfVuJ23Q1rVV8K0tw@mail.gmail.com>
 <CAP71WjxQGbGs=Qfj0DZHU+nLwFsNn85wUxtQn0Kt3BxUFDCuTA@mail.gmail.com>
In-Reply-To: 
 <CAP71WjxQGbGs=Qfj0DZHU+nLwFsNn85wUxtQn0Kt3BxUFDCuTA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Oct 2021 15:07:23 +0200
Message-ID: 
 <CANNYZj8kNccXJVRhVfp5YKLUbwLqO1egZScgdsENJZfdpUoE8w@mail.gmail.com>
Subject: Re: [yocto] How to submit/create a new repository in
 http://git.yoctoproject.org/
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: tienhock.loh@starfivetech.com,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000014e7aa05cdd7108d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 13:07:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54998

--00000000000014e7aa05cdd7108d
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 Oct 2021 at 14:05, Nicolas Dechesne <nicolas.dechesne@linaro.org>
wrote:

> hey,
>
> On Fri, Oct 8, 2021 at 1:53 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> There's also a more specific thing you'd need to resolve: I believe you'd
>> need to pass all of the requirements listed here:
>> https://www.yoctoproject.org/ecosystem/branding/compatible-registration/
>>
>
> Not really. We definitely believe that the Yocto Project Compatible
> program is a valuable tool for our ecosystem. However, layers on
> git.yp.org are not required to be compatible. But that's a good
> suggestion for the future, perhaps ;)
>

Still, that list has items that should be fulfilled even without seeking YP
compatibility, for instance:

9. All layers contain a README file which details the origin of the layer,
its maintainer, where to submit changes, and any dependencies or version
requirements.

The layer linked above does not have that in its README. Passing the YP
compatibility script is also a useful badge of quality.

Alex

--00000000000014e7aa05cdd7108d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, 8 Oct 2021 at 14:05, Nicolas Dechesne &lt;<a href=3D"mailto:=
nicolas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr">hey,</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Oct 8, 2021 at 1:53 PM Alexander Kanavin &lt;<a =
href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>There&#39;s also a more specific thing you&#39;d =
need to resolve: I believe you&#39;d need to pass all of the requirements l=
isted here:</div><div><a href=3D"https://www.yoctoproject.org/ecosystem/bra=
nding/compatible-registration/" target=3D"_blank">https://www.yoctoproject.=
org/ecosystem/branding/compatible-registration/</a></div></div></blockquote=
><div><br></div><div>Not really. We definitely believe that the Yocto Proje=
ct Compatible program=C2=A0is a valuable tool for our ecosystem. However, l=
ayers on <a href=3D"http://git.yp.org" target=3D"_blank">git.yp.org</a> are=
 not required to be compatible. But that&#39;s a good suggestion for the fu=
ture, perhaps ;)=C2=A0</div></div></div></blockquote><div><br></div>Still, =
that list has items that should be fulfilled even without seeking YP compat=
ibility, for instance:</div><div class=3D"gmail_quote"><label for=3D"dsp_yp=
compatible_have_readme"><br></label></div><div class=3D"gmail_quote"><label=
 for=3D"dsp_ypcompatible_have_readme">9. All layers contain a README
 file which details the origin of the layer, its maintainer, where to=20
submit changes, and any dependencies or version requirements.</label></div>=
<div class=3D"gmail_quote"><label for=3D"dsp_ypcompatible_have_readme"><br>=
</label></div><div class=3D"gmail_quote"><label for=3D"dsp_ypcompatible_hav=
e_readme">The layer linked above does not have that in its README. Passing =
the YP compatibility script is also a useful badge of quality.<br></label><=
/div><div class=3D"gmail_quote"><label for=3D"dsp_ypcompatible_have_readme"=
><br></label></div><div class=3D"gmail_quote"><label for=3D"dsp_ypcompatibl=
e_have_readme">Alex<br></label></div></div>

--00000000000014e7aa05cdd7108d--

