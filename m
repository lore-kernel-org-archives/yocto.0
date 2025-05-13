Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4365C3ABCC
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 14:05:42 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.77401.1747145135565491417
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 May 2025 07:05:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lX9TTCF+;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7082e46880eso51298077b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 07:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747145135; x=1747749935; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZGjvBWKNo3RtVkS4+mmOqYz1sgIN7KcXsIeLgzkNjw=;
        b=lX9TTCF+gVz9dF1uWlIrB+wYtVLjuxRr7N8AeZ8VY8PED4BXcS2bwfN83qY6eLrnDR
         641Vefcuc4IdDJJ5bKgsT4Tg7/gj50ShyAQFTf7n8liZzDbo3pQwG3Cj93+y/dyhwNTp
         mdi5f0URDz5lrwm/n1+SzGz603sEyWdn3lEcVXylip3hlQuXdtWTz5WbEd7I0eCjwiwJ
         +mH6J0bJqu/dqiMctX52iKTVbBoB137XiiJaYIJVqIz3g/a4KZ1qLs0pEFRWpEP//0RF
         euxf85LncowTLcA7MwSBihUtxM4fztVCwkbYhoV40in1Spb7cJ5hHbz1d6SndRRfv4db
         HSNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747145135; x=1747749935;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ZGjvBWKNo3RtVkS4+mmOqYz1sgIN7KcXsIeLgzkNjw=;
        b=xATxSL4xdaYQM7/eQ63r1PyWJGaEmImF/ebehwqlFsoAHZkwSHsYz67qpZjZjnKlxg
         dwRUoWMD8ltpLXB4r7nNTa8GPHcbcMxXHOAOVcGUET4PPPECsmN9qZF08e4h3GAuW09q
         biHpgPkRuD4XGnIl3LPK8xuGehBG59jn2CQpKvhZ8I2UtI14zAQrlDvTjX7hXr+NXF1g
         H5jR+/a+EaCeyhHEmVLt4VUMofamjUT3D761YjUe2Y6Vz8iY3jS1xgmLI7xvyqEw0oQX
         xcrqjfUn3shcHlwM/kgOTp/QfS8jTvubQo911vr3gqAVEiGgItkGQsBgIgtpk6iE4qSL
         ckSg==
X-Gm-Message-State: AOJu0YwirSNhgj0rOoBjGyooCMqmB0+UHPC3g35ppUAMZNjJwq175cu2
	siQjGAILaXdQoRzU3UJlaffAA1Pd3tUigscmgpBuYpMXrwJT3E9tU8uob5syGqzAsSnP/XjdvSc
	m36wmdwBXeHQUNru52o3P26wD9A2POw==
X-Gm-Gg: ASbGncuwO4wx8mb9gg1YcrgJWTLJUztN1cU4+IeFuMYYhTpVW8NjXp6m8U8e5ymGkSh
	1mEQQzwcE55mr5I6PcYEo3lLgRqXGIs6FIjMJiscs8I/vwmURr66kUguLpFJo2hjN86GG3yXq9T
	Pfvhx6DtEiMwOMy+sQj9ze4jxxpG/FGP5hhsaGVZ71UYFCQrIV24NFUnCEEJVQ6JK2SKw=
X-Google-Smtp-Source: AGHT+IHcGz6d6MPRYnTyLHwxSey79MIx4VIpbJBhqHhSvxMLw84Wy7JD0kNnf5kKpsDl817mtAd1Zd7RywXdxPK9dVU=
X-Received: by 2002:a05:690c:2b8e:b0:6fe:bfb9:549c with SMTP id
 00721157ae682-70a3f9e40d7mr180949367b3.1.1747145134543; Tue, 13 May 2025
 07:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <CACsETSv_EprYNrfuxuikxjqFMhvokPnAH2uRY=szGenbTYPdCg@mail.gmail.com>
 <1013.1747144647331426986@lists.yoctoproject.org>
In-Reply-To: <1013.1747144647331426986@lists.yoctoproject.org>
From: sateesh m <sateesh0457@gmail.com>
Date: Tue, 13 May 2025 19:35:20 +0530
X-Gm-Features: AX0GCFutcKluRhSsf1W58lKwo93xawFviRr59FRdGyTWgZeo2FHOPFhxPXAHLqY
Message-ID: <CACsETSs510LH+gc0bAwf+hLPUa9bg3X=SXmzM4BrP=i4BMbPJA@mail.gmail.com>
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: claudiubucur@hotmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001d995d063504ed91"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 14:05:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65331

--0000000000001d995d063504ed91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Which ubuntu version you have used?

On Tue, 13 May, 2025, 7:27=E2=80=AFpm Klaus via Lists.Yoctoproject.Org,
<claudiubucur=3Dhotmail.com@lists.yoctoproject.org> wrote:

> On Tue, May 13, 2025 at 04:50 PM, sateesh m wrote:
>
> Yes, it is working.
>
>
> Ok, but how did you managed to solve the problem?
>
> bin/cmake:
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/sysroots-uninat=
ive/x86_64-linux/usr/lib/libstdc++.so.6:
> version `GLIBCXX_3.4.30' not found (required by bin/cmake)
>
>
> thank you,
> Claudiu
>

--0000000000001d995d063504ed91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Which ubuntu version you have used?</p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 13 May, 2025, 7:27=E2=80=AFpm Klaus via <a href=3D"=
http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a>, &lt;claudiubucur=
=3D<a href=3D"mailto:hotmail.com@lists.yoctoproject.org">hotmail.com@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v>On Tue, May 13, 2025 at 04:50 PM, sateesh m wrote:</div>
<div>
<blockquote>
<p dir=3D"ltr">Yes, it is working.</p>
</blockquote>
<br>Ok, but how did you managed to solve the problem?=C2=A0<br><br><span st=
yle=3D"color:#333333;font-family:system-ui,&#39;Segoe UI&#39;,Roboto,&#39;H=
elvetica Neue&#39;,&#39;Noto Sans&#39;,&#39;Liberation Sans&#39;,Arial,sans=
-serif,&#39;Apple Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,&#39;Segoe UI S=
ymbol&#39;,&#39;Noto Color Emoji&#39;;font-size:16px;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;word-spa=
cing:0px;white-space:pre-wrap;background-color:#ffffff;text-decoration-styl=
e:initial;text-decoration-color:initial;display:inline!important;float:none=
">bin/cmake: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/sysr=
oots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.30=
&#39; not found (required by bin/cmake)</span><br><br><br>thank you,=C2=A0<=
br>Claudiu</div>
</blockquote></div>

--0000000000001d995d063504ed91--

