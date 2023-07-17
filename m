Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591E6EB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 21:00:52 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web11.6179.1689627648487856434
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 14:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=uLySloQI;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.167.171, mailfrom: tom.isaacson@teknique.com)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3a46da5cd6dso306678b6e.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1689627648; x=1692219648;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AkAvuG7oV/xMLubg2FutmAI7SB2+VKv5tTNvf/6bZi0=;
        b=uLySloQI8MKYuR2P2GTiru6GLmxfyaj5cbRrI8uH9l34bO1lEbdiEXIqoLCcJhlCcO
         uAaJxkrYZXGJw/Etf45Edb1XZ7km1Sc4kQ2wS5fhKz+NXZh/VFfk4dmYHWGNE/COpQMb
         kCM2xM0vAjCcpym0KYU7s4nDBjRyh134gwK2UgiVfYsJF/coxIyKu+fjx8WTZ5iE7uVG
         QkHuWaNu9IZ8Dy3ITKOWiXo1M0Zzz4Q41Yw/7roJMKLe1pM+jMmaWFh5dIYOlsVtECaC
         h0Py4XvQUK4q4eyEYq5zMb0BPSv5AK97NwOnqZlIz3o0ZxRFeGw9TFDGRQ7HiJ1sAvp+
         N/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689627648; x=1692219648;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AkAvuG7oV/xMLubg2FutmAI7SB2+VKv5tTNvf/6bZi0=;
        b=jFXcFU17xdfZVQ+0lKhf4yUT/oVKDmEhPQyaVa1T3ScGynAAg/ECvL/+uds08/qkDl
         ufPcYi/gxC5qTmlLmTI4WJhvT8/OlwR4Sd0JS4SMerqZvKkYuKTvz1Sar4PpIVZ34q5S
         aMQpzeygffH2OjgZXKk0NELdW0fg2bqfCqByRVq4r3yWqJilkRBguR8uBF1X11GI0RsM
         Y347KdqIBxg9IDv688RIvgW3ebfgbnA3xja6pxLumaUclcVd5hPmk+JMt5S2HZeUtlfk
         5lsKpeRpJ7XHiJQn0QoOEJBcC5O16rjPWwqUhmNCzBVBYuykVy8U0pm//kZRNFR13PD7
         l+Ew==
X-Gm-Message-State: ABy/qLbm7OAEQAQAzy7SWBqpEZqRaqtquvkbwvODWth+J+DK4zrCI3XD
	/0RgQejEJ5HnwDTELey8CdExK44nHvi/U91l0awplQ==
X-Google-Smtp-Source: APBJJlEEiXBMC5nD/DEzh6Y7S2jv5xj6OhCNckC6TPHTkkq7wJAn8QAP9RfDzpWzlNbDNK3bdRRu+cMkeSFixsw6BG4=
X-Received: by 2002:aca:702:0:b0:3a4:8b4:bba9 with SMTP id 2-20020aca0702000000b003a408b4bba9mr11686313oih.44.1689627647642;
 Mon, 17 Jul 2023 14:00:47 -0700 (PDT)
MIME-Version: 1.0
References: <176A63496CF306FA.4070@lists.yoctoproject.org> <fa7853d50f03bf291f69d0482db808a6fdc89038.camel@linuxfoundation.org>
In-Reply-To: <fa7853d50f03bf291f69d0482db808a6fdc89038.camel@linuxfoundation.org>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Tue, 18 Jul 2023 09:00:38 +1200
Message-ID: <CA+EiEZ+6M-Jjw_-WzFJvRNVjzz5sN=9QGCxAx94MKJDTjsh7YQ@mail.gmail.com>
Subject: Re: [yocto] Request for Quotations for development work
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bdacef0600b51794"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 21:00:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60595

--000000000000bdacef0600b51794
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I read this and the linked articles and one piece in
https://www.linux.com/audience/maintainer-confidential-opportunities-and-ch=
allenges-of-the-ubiquitous-but-under-resourced-yocto-project/
caught my eye:

> One question that comes up a lot is the project=E2=80=99s development mod=
el. We=E2=80=99re
> an =E2=80=9Cold school=E2=80=9D patch on a mailing list, similar to the k=
ernel. New
> developers complain that we should have GitHub workflows so they can make
> point-and-click patch submissions. I have made submissions to other
> projects that way, and I can see the attraction of it. Equally, it does
> depend a lot on your review requirements. We want many people to see our
> patches, not just one person, and we greatly benefit from that
> comprehensive peer review.


I'm an old school engineer but I've never used the "patch to mailing list"
model so I find it quite difficult. It seemed like someone must have solved
this problem already so I've been looking around and found
https://gitgitgadget.github.io/ This is what the git mailing list use - you
create a PR in Github and it sends the patch to the mailing list. You then
respond to comments and update the PR. Finally someone merges your patch.
It seems like this could be implemented alongside the existing Patchwork
solution relatively easily and provide an alternate route to those of us
who prefer the modern tooling.

For a complete solution you could add the same functionality to Patchwork
(I assume you use https://github.com/getpatchwork/patchwork) to make it
bi-directional - patches from the mailing list are created as PRs in
Github, and PRs in Github have their patches emailed to the mailing list.
This then solves your Patchtest problem - the tests could instead be
implemented as CI builds in Github Actions (which is more maintainable) and
the results fed back to the mailing list. Alternatives to Github are of
course available.

Is the Patchtest source code available anywhere?




On Thu, Jul 13, 2023 at 2:49=E2=80=AFAM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2023-06-20 at 15:09 +0100, Richard Purdie via
> lists.yoctoproject.org wrote:
> > The project has some exciting plans in progress and I'm happy to say
> > we're now in the fortunate position that we're able to seek quotations
> > for some development work. For more details please see this page on
> > website:
> >
> >
> https://www.yoctoproject.org/community/yocto-project-engineering-request-=
for-quotation/
> >
> > Please feel free to reach out to me or the Yocto Project TSC if there
> > are any questions.
>
> We've added an update to the end of the above link with a deadline for
> quotations and some other answers to commonly asked questions.
>
> Cheers,
>
> Richard
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60554):
> https://lists.yoctoproject.org/g/yocto/message/60554
> Mute This Topic: https://lists.yoctoproject.org/mt/99644713/7359542
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/11894869/7359542/1977914009/=
xyzzy
> [tom.isaacson@teknique.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Tom Isaacson

--000000000000bdacef0600b51794
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I read this and the linked articles and one piece in <a hr=
ef=3D"https://www.linux.com/audience/maintainer-confidential-opportunities-=
and-challenges-of-the-ubiquitous-but-under-resourced-yocto-project/">https:=
//www.linux.com/audience/maintainer-confidential-opportunities-and-challeng=
es-of-the-ubiquitous-but-under-resourced-yocto-project/</a> caught my eye:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">One question that come=
s up a lot is the project=E2=80=99s development model. We=E2=80=99re an =E2=
=80=9Cold school=E2=80=9D patch on a mailing list, similar to the kernel. N=
ew developers complain that we should have GitHub workflows so they can mak=
e point-and-click patch submissions. I have made submissions to other proje=
cts that way, and I can see the attraction of it. Equally, it does depend a=
 lot on your review requirements. We want many people to see our patches, n=
ot just one person, and we greatly benefit from that comprehensive peer rev=
iew.</blockquote><div><br></div><div>I&#39;m an old=C2=A0school engineer bu=
t I&#39;ve never used the &quot;patch to mailing list&quot; model so I find=
 it quite difficult. It seemed like someone must have solved this problem a=
lready so I&#39;ve been looking around and found=C2=A0<a href=3D"https://gi=
tgitgadget.github.io/">https://gitgitgadget.github.io/</a> This is what the=
 git mailing list use - you create a PR in Github and it sends the patch to=
 the mailing list. You then respond to comments and update the PR. Finally =
someone merges your patch.</div><div>It seems like this could be implemente=
d alongside the existing Patchwork solution relatively easily and provide a=
n alternate route to those of us who prefer the modern tooling.</div><div><=
br></div><div>For a complete solution you could add the same functionality =
to Patchwork (I assume you use=C2=A0<a href=3D"https://github.com/getpatchw=
ork/patchwork">https://github.com/getpatchwork/patchwork</a>) to make it bi=
-directional - patches from the mailing list are created as PRs in Github, =
and PRs in Github have their patches emailed to the mailing list. This then=
 solves your Patchtest problem - the tests could instead be implemented as =
CI builds in Github Actions (which is more maintainable) and the results fe=
d back to the mailing list. Alternatives to Github are of course available.=
</div><div><br></div><div>Is the Patchtest source code available anywhere?<=
/div><div><br></div><div><br></div></div><br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 13, 2023 at 2:49=E2=80=
=AFAM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.o=
rg">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On Tue, 2023-06-20 at 15:09 +0100, Ri=
chard Purdie via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; The project has some exciting plans in progress and I&#39;m happy to s=
ay<br>
&gt; we&#39;re now in the fortunate position that we&#39;re able to seek qu=
otations<br>
&gt; for some development work.=C2=A0For more details please see this page =
on<br>
&gt; website:<br>
&gt; <br>
&gt; <a href=3D"https://www.yoctoproject.org/community/yocto-project-engine=
ering-request-for-quotation/" rel=3D"noreferrer" target=3D"_blank">https://=
www.yoctoproject.org/community/yocto-project-engineering-request-for-quotat=
ion/</a><br>
&gt; <br>
&gt; Please feel free to reach out to me or the Yocto Project TSC if there<=
br>
&gt; are any questions.<br>
<br>
We&#39;ve added an update to the end of the above link with a deadline for<=
br>
quotations and some other answers to commonly asked questions.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60554): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60554" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60554</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99644713/7359=
542" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99644713/7359542</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/118948=
69/7359542/1977914009/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/leave/11894869/7359542/1977914009/xyzzy</a> [=
<a href=3D"mailto:tom.isaacson@teknique.com" target=3D"_blank">tom.isaacson=
@teknique.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Tom Isaacson<div><br></div></div></div>

--000000000000bdacef0600b51794--

