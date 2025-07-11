Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 440CCC83F1A
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 16:00:39 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.17622.1752249630595158252
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 09:00:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eTuUKaCH;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: rybczynska@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b3508961d43so2046835a12.3
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 09:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752249629; x=1752854429; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=edpoekfOY/67IGcKWBiv3+SEEXiOqLxe8N/VvR+FBK8=;
        b=eTuUKaCHcytUZTcIis352qUyGQhxX+wJ+Itj+KJLfQXFfmX7jJZQsZRRQjLMqv2kZQ
         dv0CHbjOsTjWwGGncTkSRSiG5oWrEFOF4labay3Ej0x975uTyGdaRs0KxceJXPNYUYFj
         i+Wr3bYIV6TOS0SEXb1nPJjKSr7KuT3OHg5FhXqVKrSqnmSN9NfLzUzJ7leMB6WZDUjd
         eY/esmbzGf6VEdWNfpQjRp7lKXk4o6OeNfmHZvNJZ5Qn2wMNf+spfr5Hm3yqGtyxoSZu
         7rvgtvDKqWoGQ7AtLaqVyx58U6qkHmA7z3u86HIdibR8ZLGzrgWm9hBnnNnOALo9ygU2
         B6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752249629; x=1752854429;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=edpoekfOY/67IGcKWBiv3+SEEXiOqLxe8N/VvR+FBK8=;
        b=ZLuU6x93xMQSWJ+u+VUbesy1oPH2w7iZevXZXPecIXvJ3x31nmmXjZY2nRUU59MdVd
         kAS/Fi8ReaViuKoLc4wx2pUEgXWb7mY7V+amnXIKrGfduoL/YIOeBZbds+hSFgxF1PlC
         l6EF3K2/sQitB7N4vnaXR2UIHJQnN/LL9TTS5J0TgNS41S9tGBVmE/2olS1QpDv/BiFO
         vNbH0oOmoJQzvYYARBqWcKbk4MzNg3Wa5Zo9F++O30HyAWjxyE0GDQUVqOeJZoWQTUTi
         BIZLcvWLDr6a8XxSMZcbtI2KuJZHPtxcq5OY0SgWjRHPvfHZ4AWb1RtpZVq8hZrdM6y0
         l9DQ==
X-Gm-Message-State: AOJu0Ywpe0R0GX3gxuzPuO2ccMzpPDsAPi56u7YcZwhUJJKkgji0vA6y
	b0Aiv/erOTMGXIp7sRca09trTGeS9NuolhqdtLagUGbyBFxzs8wTfpqYoai4SPkZHkzPx3Sf4c0
	teBJnTqwDIma8+9jtsUw4BQpAs4BfzcwJTw==
X-Gm-Gg: ASbGncso7GMIENNoN4bDpxmv4iVlLUuFErnnnzuae6E/qduhWdHieFYvyfoyU58mM/g
	8R8ORb4/4+AcdSWru7avzC4sGA4nDIyBHU59P0S6wr8KcpQhSzaM29sRhFAmfzZpbbCEqpDO80r
	QIXvNVUqmtmI7I/V4wT8iyN9iPByTBggwmnQenFFVUweM0HqsNrM7GU5te0pQP0PWqtHZicSX68
	ocYqy3jHQ==
X-Google-Smtp-Source: AGHT+IG6wi8BbWD7PTAV2GsDfOHVDyBvXEhLg0Kxc8w7m0hav0U2UIr8YG62NlB2uhzrgik5/a3VAbOvjiD7vfx4JyE=
X-Received: by 2002:a17:90b:4c4a:b0:311:eb85:96f0 with SMTP id
 98e67ed59e1d1-31c4cda5bdbmr5306698a91.29.1752249629150; Fri, 11 Jul 2025
 09:00:29 -0700 (PDT)
MIME-Version: 1.0
References: <a0f4104d-8167-6a1c-f2f5-8bde30fe7a21@crashcourse.ca> <CAEt6NwqVps39xavQv6XDb=WsGT2nbHJXGrAzM0HdrWm_63T21A@mail.gmail.com>
In-Reply-To: <CAEt6NwqVps39xavQv6XDb=WsGT2nbHJXGrAzM0HdrWm_63T21A@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Fri, 11 Jul 2025 18:00:17 +0200
X-Gm-Features: Ac12FXyu5seRD6N2mXkkQxmyNIJqywQZRup6QC_JMws3aUTESCJTBRwNy3fEGlg
Message-ID: <CAApg2=Sk_zKWou6QS=RjJXQZhC9Bfqoj=B02Uo5XDTPmKvMjDA@mail.gmail.com>
Subject: Re: [yocto] [POLITICAL] Will all future U.S. OE/YP conferences be
 available virtually?
To: yocto@lists.yoctoproject.org, jester@theyoctojester.info
Cc: rpjday@crashcourse.ca
Content-Type: multipart/alternative; boundary="000000000000b418720639a9683d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 16:00:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65646

--000000000000b418720639a9683d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for that information Josef. Are there already tentative dates for
the Yocto Project Summit?

Kind regards,
Marta

On Fri, Jul 11, 2025 at 9:43=E2=80=AFAM Josef Holzmayr via lists.yoctoproje=
ct.org
<jester=3Dtheyoctojester.info@lists.yoctoproject.org> wrote:

> Hi Robert,
>
> Thanks for raising that one. We are closely monitoring the public
> situation and do take community considerations seriously. For the rest of
> 2025 there are only two events coming up, which are colocated with OSS EU
> in Amsterdam, and virtual, namely the Yocto Project Summit. We are also
> looking at alternatives to host Developer Day(s) for the next iteration a=
nd
> will communicate those well ahead of time.
>
> Greetz,
> Josef
> Yocto Project Community Manager
>
> On Thu, Jul 10, 2025 at 2:04=E2=80=AFPM Robert P. J. Day via
> lists.yoctoproject.org <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org>
> wrote:
>
>>
>>   In checking out any interesting conferences in the coming months, I
>> can safely say that, as a Canadian, I will under no circumstances be
>> travelling to the U.S. No way. So are conference organizers making
>> accommodations for people who want to attend but who refuse to travel
>> to the United States?
>>
>> rday
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65641):
> https://lists.yoctoproject.org/g/yocto/message/65641
> Mute This Topic: https://lists.yoctoproject.org/mt/114080832/5827677
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> rybczynska@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b418720639a9683d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for that information Josef. Are there already =
tentative dates for the Yocto Project Summit?</div><div><br></div><div>Kind=
 regards,</div><div>Marta<br></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 11, 2025 at =
9:43=E2=80=AFAM Josef Holzmayr via <a href=3D"http://lists.yoctoproject.org=
">lists.yoctoproject.org</a> &lt;jester=3D<a href=3D"mailto:theyoctojester.=
info@lists.yoctoproject.org">theyoctojester.info@lists.yoctoproject.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi Robert,<div><br></div><div>Thanks for raising that one. We =
are closely monitoring the public situation and do take community considera=
tions seriously. For the rest of 2025 there are only two events coming up, =
which are colocated with OSS EU in Amsterdam, and virtual, namely the Yocto=
 Project Summit. We are also looking at alternatives to host Developer Day(=
s) for the next iteration and will communicate those well ahead of time.</d=
iv><div><br></div><div>Greetz,</div><div>Josef</div><div>Yocto Project Comm=
unity Manager</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Jul 10, 2025 at 2:04=E2=80=AFPM Robert P. J. Day=
 via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoct=
oproject.org</a> &lt;rpjday=3D<a href=3D"mailto:crashcourse.ca@lists.yoctop=
roject.org" target=3D"_blank">crashcourse.ca@lists.yoctoproject.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 In checking out any interesting conferences in the coming months, I<=
br>
can safely say that, as a Canadian, I will under no circumstances be<br>
travelling to the U.S. No way. So are conference organizers making<br>
accommodations for people who want to attend but who refuse to travel<br>
to the United States?<br>
<br>
rday<br>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65641): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65641" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65641</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114080832/582=
7677" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/114080832/5827677</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:rybczynska@gmail.com" target=3D"_blank">rybczyns=
ka@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000b418720639a9683d--

