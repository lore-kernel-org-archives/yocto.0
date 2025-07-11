Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5AC83F1A
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 16:53:29 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.18731.1752252800553608872
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 09:53:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=Rx8oLAyz;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.52, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0bc7aa21bso482392866b.2
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 09:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1752252799; x=1752857599; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EyohwyJXZK+BJUxYTTTN8Kw4L/kaiyBZRnedWR2f91o=;
        b=Rx8oLAyzL3DET0uf1wZfdRLtsnN0oG/vbeWsvBUroTcBSkL0a4zhIakaTKcQ/3VVvn
         upK2yZ98nWS2TCeMReeN7iMqbwPATNrV4HPMuQnMuXmTvB+kBbER2SyPx1IIt5FCZzY2
         pZ0mQ7Wt6qTyZt98kky8tDA+NXwEtbzdAhgZUFYT3HuMgaQWG2JJPcY8xMd3/7yIKqwT
         ji2FnuKrncWSWqiOS0jiNXOPTb6W6+v/7aqV73+FeAOGSriz5IICDg+Z+wNUOYRQ0oJx
         W0X5cdwqrwLsImvfb3HH60sxEGVwfyl9QFaM6MXTwudxojaUE+IunMt5294KOvgZhYJi
         KLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752252799; x=1752857599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyohwyJXZK+BJUxYTTTN8Kw4L/kaiyBZRnedWR2f91o=;
        b=NAbHG9V3oxUIoYSFKG0VdaPDYKM+dxTikirF8YAVZ4pql7pfoenZ3vlZ92HALl1OLb
         Tb7E0eHZq/NK5wDPTWLGTuyqXpqS3w9m6rkaY9KkKScB+TP4R7unOXEaOWpFudmOc79O
         XX1xoJoAelNxOA4VBf6Jv5oEEfZAiMmT7HirlKaKuUO6S+zVvLL2qRZAAeBWmezQtCpX
         OIyDXtVwxFBmgkDzHDnvfGn6+QRR1AgvPELeldi5LBmUBM4lhrepwYBXe1hnaeQ3IGFo
         9+YVjuUxXlo9nKsuGml/sZMX95IB0sXx29E1NwWkpgxbHV1ckVxUy3gsR7W8WI7GusKH
         1kGQ==
X-Gm-Message-State: AOJu0YwAXGjyqskBkQwzfwbzZV4HkI/ftgHBTAdLeCkW+zz2KdKyv511
	iujMbiHbEk0Qfj0yJojSXOOdWctaTauFbmHRVtushy3EP+rNpYY/PL0IZDI3uFH7a/gPkGcBG+C
	cLjzYpLGKqyGY9c6FqyD2OxtesoiibrQrSEqzl4mkjw==
X-Gm-Gg: ASbGncvpAhBNh7S6oxoz7XegdiJqw9oJReKk/g9wmfwI5doRPTh3MbsMC4PVSVZ2HFj
	rY46X3fDGqbfmnWyqoOSEm0BRztMbvzhPBofzQ/ngsmhYZkg1xNlscCfIES6j94uEmtAEXrIZY/
	jvdKLU8b6hHV44YW7+tLa5E3LM0VJXWcQn+sDS6PuXQGnZ2agthppegrVabCYNmLxRZtuaPxlwJ
	Y5zDMrpoGBv5Ah9fUTqhkZkFF/QS4ltfLb0NUDMeQ==
X-Google-Smtp-Source: AGHT+IEc0CD8zETHo3om6YJweJRZdad27qLb90fIQHwBgWMNze2Srnc/s6Qt6JEC4Gvk7pnHU/LQaNZ/Cy5/tUk66Lg=
X-Received: by 2002:a17:906:c14b:b0:ae0:54b9:dc17 with SMTP id
 a640c23a62f3a-ae6fc9fe5bemr426120166b.11.1752252798316; Fri, 11 Jul 2025
 09:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <a0f4104d-8167-6a1c-f2f5-8bde30fe7a21@crashcourse.ca>
 <CAEt6NwqVps39xavQv6XDb=WsGT2nbHJXGrAzM0HdrWm_63T21A@mail.gmail.com> <CAApg2=Sk_zKWou6QS=RjJXQZhC9Bfqoj=B02Uo5XDTPmKvMjDA@mail.gmail.com>
In-Reply-To: <CAApg2=Sk_zKWou6QS=RjJXQZhC9Bfqoj=B02Uo5XDTPmKvMjDA@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 11 Jul 2025 18:52:52 +0200
X-Gm-Features: Ac12FXyUDqZpJ_9c5oS3xaLgmFcTRmJcQrjK9GXie54-bmACfo3HFyhq6hqdCwM
Message-ID: <CAEt6NwqXF-TBJB-XBPMBDNqnG00Mq9mSQ673PTk99i4ffpvqbg@mail.gmail.com>
Subject: Re: [yocto] [POLITICAL] Will all future U.S. OE/YP conferences be
 available virtually?
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
Content-Type: multipart/alternative; boundary="00000000000099c9cc0639aa250e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 16:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65647

--00000000000099c9cc0639aa250e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marta,

Yes. Tentative (!) is December 2nd-4th.

Greetz,
Josef

On Fri, Jul 11, 2025 at 6:00=E2=80=AFPM Marta Rybczynska <rybczynska@gmail.=
com>
wrote:

> Thanks for that information Josef. Are there already tentative dates for
> the Yocto Project Summit?
>
> Kind regards,
> Marta
>
> On Fri, Jul 11, 2025 at 9:43=E2=80=AFAM Josef Holzmayr via lists.yoctopro=
ject.org
> <jester=3Dtheyoctojester.info@lists.yoctoproject.org> wrote:
>
>> Hi Robert,
>>
>> Thanks for raising that one. We are closely monitoring the public
>> situation and do take community considerations seriously. For the rest o=
f
>> 2025 there are only two events coming up, which are colocated with OSS E=
U
>> in Amsterdam, and virtual, namely the Yocto Project Summit. We are also
>> looking at alternatives to host Developer Day(s) for the next iteration =
and
>> will communicate those well ahead of time.
>>
>> Greetz,
>> Josef
>> Yocto Project Community Manager
>>
>> On Thu, Jul 10, 2025 at 2:04=E2=80=AFPM Robert P. J. Day via
>> lists.yoctoproject.org <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org>
>> wrote:
>>
>>>
>>>   In checking out any interesting conferences in the coming months, I
>>> can safely say that, as a Canadian, I will under no circumstances be
>>> travelling to the U.S. No way. So are conference organizers making
>>> accommodations for people who want to attend but who refuse to travel
>>> to the United States?
>>>
>>> rday
>>>
>>>
>>>
>>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#65641):
>> https://lists.yoctoproject.org/g/yocto/message/65641
>> Mute This Topic: https://lists.yoctoproject.org/mt/114080832/5827677
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> rybczynska@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--00000000000099c9cc0639aa250e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marta,<div><br></div><div>Yes. Tentative (!) is Decembe=
r 2nd-4th.</div><div><br></div><div>Greetz,</div><div>Josef</div></div><br>=
<div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Jul 11, 2025 at 6:00=E2=80=AFPM Marta Rybczynska &lt;<a=
 href=3D"mailto:rybczynska@gmail.com">rybczynska@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks for that information =
Josef. Are there already tentative dates for the Yocto Project Summit?</div=
><div><br></div><div>Kind regards,</div><div>Marta<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 11, 2025=
 at 9:43=E2=80=AFAM Josef Holzmayr via <a href=3D"http://lists.yoctoproject=
.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;jester=3D<a href=3D"=
mailto:theyoctojester.info@lists.yoctoproject.org" target=3D"_blank">theyoc=
tojester.info@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Hi Robert,<div><br></div><div>Thanks for raising that o=
ne. We are closely monitoring the public situation and do take community co=
nsiderations seriously. For the rest of 2025 there are only two events comi=
ng up, which are colocated with OSS EU in Amsterdam, and virtual, namely th=
e Yocto Project Summit. We are also looking at alternatives to host Develop=
er Day(s) for the next iteration and will communicate those well ahead of t=
ime.</div><div><br></div><div>Greetz,</div><div>Josef</div><div>Yocto Proje=
ct Community Manager</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 at 2:04=E2=80=AFPM Robert P.=
 J. Day via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lis=
ts.yoctoproject.org</a> &lt;rpjday=3D<a href=3D"mailto:crashcourse.ca@lists=
.yoctoproject.org" target=3D"_blank">crashcourse.ca@lists.yoctoproject.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-=
color:rgb(204,204,204);padding-left:1ex"><br>
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
</blockquote></div>

--00000000000099c9cc0639aa250e--

