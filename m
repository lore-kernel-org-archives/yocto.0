Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F87FC10F16
	for <webhook@archiver.kernel.org>; Fri,  3 May 2024 19:33:01 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.2207.1714764779803941062
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 May 2024 12:32:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mAAU0jT8;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-61bee45d035so50449667b3.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 May 2024 12:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714764779; x=1715369579; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gG+SV5mFYC905m60CqwAklXm+0fJMtobxoarmiRJ5Os=;
        b=mAAU0jT88GwolwnfBBgi8SpjaCNAY4RVP/fLryhu06kOzXE4qVo7qQnpUuw032uh+j
         krkxIyNDWkVKgrNDQRptPRmIq7audlojioC7sPNhZh+0GAZxVVquWvK4mKQN7S1EF3Bg
         rwAg1/XW7/uypacQ23LIKT+YvFb4nDFx3t4tFfMxeUdWI0OGHkQg0+7ks1x4GG9KJnUZ
         y31GChco29kM40O0ieoZFNOu7W02kxpBNYqBR3NkDb3IN413xntKSZy+6Hrl9vdo5/mZ
         NNqMQ3vnuoAhxAOOfj88I52oP4vBiLxWAOdxF0G8t4OCfcgahzix5ZQAFxd3rglg3uVE
         9AbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714764779; x=1715369579;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gG+SV5mFYC905m60CqwAklXm+0fJMtobxoarmiRJ5Os=;
        b=P56kb9XnOfbi/lk5xsBL0SEAzczcuZhTgDdO7F9IVGteBlHgydz55FUZFp239j+Dqf
         VJtxRw2ZvatdXACO16T2Z59hWN9UiuAaKdmB/fFZzSoAbXKs5eXW+6anXkSz2UAiQ2DI
         ZTSGOaotOW3lkqzuomH42ZTnFBQV7BNYbePvWxUq3YRGM7XJOz7AkB9Y6meDx50woiar
         5fflej630drumOvj8/NcxKRrDF5sPEnnakhsWIcGyUKzfsit91i0JYcFYR8uyXBWNYKO
         RKC3I+EkspZ1K2jQJyHceYHzLYOM+aVD0DZr82O4Ac5WwhRCuaqmv7gw9FaFPC8CqAHV
         GkWg==
X-Gm-Message-State: AOJu0Yy9Gg9W/YH3EvYxXIIjs7pRpP3Gw4slY7zIy9XLOynSUCwBKq8g
	YwhiKi3ZIjaUZVnq63iFsgyAEan1DGwc9NcgcX5gRH/mURN48+DO4WHD1tBglbBZYxLANa4rsU1
	cEb6nZMR/6WxCANSonDtTDHNn6KJRn5Sq
X-Google-Smtp-Source: AGHT+IEpVKEX8PJYDobOvcWsqpXSvll5OV4w8oN9WI7ykfUsFZ9KIq3r4Xk0GhImau59JlcW1Ekdn32uKIAiThGJXYg=
X-Received: by 2002:a0d:dd44:0:b0:61b:418:139 with SMTP id g65-20020a0ddd44000000b0061b04180139mr3627347ywe.27.1714764778619;
 Fri, 03 May 2024 12:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <OKoY.1714760937995886315.iWwX@lists.yoctoproject.org>
In-Reply-To: <OKoY.1714760937995886315.iWwX@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 3 May 2024 12:32:47 -0700
Message-ID: <CANx9H-AXEBbP3MwQEyWwO=tqoGvgPxMZbtP5yGCFnaJLMoOf5A@mail.gmail.com>
Subject: Re: [yocto] Adding a group to my local.conf file #kirkstone #poky
To: yocto@lists.yoctoproject.org, ruom9900@gmail.com
Content-Type: multipart/alternative; boundary="00000000000080cb6d061791c961"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 May 2024 19:33:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63030

--00000000000080cb6d061791c961
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 11:29=E2=80=AFAM ruom9900 via lists.yoctoproject.org
<ruom9900=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello,
> Is there any way possible to add a custom group to the local.conf file?

The classic way is with extrausers (kirkstone docs for reference):
https://docs.yoctoproject.org/4.0.17/ref-manual/classes.html#extrausers
This happens at the image level, but individual recipes that need access to
other groups may be a challenge.

There were improvements made in scarthgap, especially the USERADD_DEPENDS
variable:
https://docs.yoctoproject.org/ref-manual/variables.html#term-USERADD_DEPEND=
S
This allows better handling of users and groups at the recipe level.


> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63029):
> https://lists.yoctoproject.org/g/yocto/message/63029
> Mute This Topic: https://lists.yoctoproject.org/mt/105893984/924729
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #poky:https://lists.yoctoproject.org/g/yocto/mutehashtag/poky
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000080cb6d061791c961
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 3, 2024 at 11:29=E2=80=AF=
AM ruom9900 via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;ruom9900=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org=
">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hello,<br>Is there any way possible to ad=
d a custom group to the local.conf file?</blockquote><div>The classic way i=
s with extrausers (kirkstone docs for reference):</div><div><a href=3D"http=
s://docs.yoctoproject.org/4.0.17/ref-manual/classes.html#extrausers">https:=
//docs.yoctoproject.org/4.0.17/ref-manual/classes.html#extrausers</a></div>=
<div>This happens at the image level, but individual recipes that need acce=
ss to other groups may be a challenge.</div><div><br></div><div>There were =
improvements made in scarthgap, especially the USERADD_DEPENDS variable:</d=
iv><div><a href=3D"https://docs.yoctoproject.org/ref-manual/variables.html#=
term-USERADD_DEPENDS">https://docs.yoctoproject.org/ref-manual/variables.ht=
ml#term-USERADD_DEPENDS</a></div><div>This allows better handling of users =
and groups at the recipe level.</div><div><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63029): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63029" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63029</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105893984/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/105893984/924729</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/kirkstone</a><br>
Mute #poky:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/po=
ky" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/poky</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000080cb6d061791c961--

