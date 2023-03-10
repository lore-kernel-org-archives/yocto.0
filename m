Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE78AC64EC4
	for <webhook@archiver.kernel.org>; Fri, 10 Mar 2023 11:12:28 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.16643.1678446742220690416
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Mar 2023 03:12:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=InUTFn3N;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso5732182wmq.1
        for <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 03:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678446740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kAcQ0am0AKtSK6ktuQU8B5JfLPoqr9CvwJ1r2j7e2v0=;
        b=InUTFn3NAFUTAt0yLB2yPxH3SXd6Bcibd0QnK4xdYq9tjN/WK0Htp1U3ORNAb9oZv2
         f888TjZm3iz9aQhSsbRkecBCLHJr3dRfQN1qIkK7HUYYk2mUPGzcS8/dF46k+9/QgFvS
         RCX7fVCX0Ch4I5idglBTVMcYwpf/+W+fdIvssQj0Axdr+/tl9Si8dO/oEFv1lGSpgIBI
         onxYqfbt44qurONvTtVFuE2wPtRAuQ4eT5jCzgcPzwCI9OMPP34HBZKTgxVLCBcPPUZK
         oxTmk8oeFheDn7+c8CBMAQa2K9TRr9h4lHBitrWSVS3Vf+SedVN7X9llsoojGURtbeNw
         IdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678446740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAcQ0am0AKtSK6ktuQU8B5JfLPoqr9CvwJ1r2j7e2v0=;
        b=oNBMv/czY3NmVbBtx6TCEhL62hi2v4u2Y1qjjTYczfEoUbs/6VNVy7V4PgqARNRR87
         0kU+khsivRzAGHv3ka6BJEa6ByYdaY4Iv8xfKmTO5eaIQHZqnCxsep+Y0TmK9BGtQk39
         VV+JbYYNJCZFfZpQE7KMn+zNKhQj6XA06lkSGlRUv30aV+hl3kVNrXEbL9nMurzKr10m
         ZjPCPk1Yb2djLA4dLQVVb6vczi3hJCPx4HM8n3mfU62BtBWu3QVt7A1UYzGBjUXLBAyt
         bx0p8JJc49Y8JPaTP1g1DqGi5ZJotxrRiNweOAPONhuz3PolabWzsHVq6VhsjDwBGp+9
         NVBw==
X-Gm-Message-State: AO0yUKXbmjRrqrkGlmg0nqrASJfuE6vuOV8nirQ6yxpJwL6Dkd5Lu8EF
	l/NS9Z9WhBpNKTchrQYOl1EaBVMvZpdHO84kTXU=
X-Google-Smtp-Source: AK7set/XzpEx1S92FJombgf2OoB0RCjp8Cyt+5Ru0dn5x9NrlPylSlxhNJEF5wtGVEman1LA/pu1uyZKiY61gT1Doaw=
X-Received: by 2002:a05:600c:450d:b0:3eb:d6f:48b2 with SMTP id
 t13-20020a05600c450d00b003eb0d6f48b2mr716695wmo.5.1678446740587; Fri, 10 Mar
 2023 03:12:20 -0800 (PST)
MIME-Version: 1.0
References: <F0GO.1678439499013452448.TBBc@lists.yoctoproject.org>
In-Reply-To: <F0GO.1678439499013452448.TBBc@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 10 Mar 2023 12:12:06 +0100
Message-ID: <CA+chaQeuKW3GSXaA9i7nZ6bVDQSWL4Bj-zLM8YhFMZXgTNFFXw@mail.gmail.com>
Subject: Re: [yocto] AUTOREV not works in bitbake 2.0.5 #bitbake
To: Srinuvasan A <srinuvasan_a@mentor.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bf49c605f689d54e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 11:12:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59377

--000000000000bf49c605f689d54e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

use SRCPV in PV as the error says

On Fri, Mar 10, 2023 at 10:11=E2=80=AFAM Srinuvasan A <srinuvasan_a@mentor.=
com>
wrote:

> Hi All,
>
>
>
>                 In my downstream layer, one recipe uses the ${AUTOREV} to
> get the very latest commit always, obviously we want the very latest
> changes always to build the recipes often, that=E2=80=99s why we assigned=
 AUTOREV
> to SRCREV.
>
>
>
> SRCREV =3D =E2=80=9C${AUTOREV}=E2=80=9D
>
>
>
> This works fine before we integrated bitbake 2.0.5, after that it throws
> an error like below:
>
>
>
> ERROR: ebsy-qa-suites-0.0-next-r0 do_fetch: Fetcher failure: Recipe uses =
a
> floating tag/branch without a fixed SRCREV yet doesn't call
> bb.fetch2.get_srcrev() (use SRCPV in PV for OE).
>
> ERROR: Logfile of failure stored in:
> /build/tmp/work/ebsy-bullseye-amd64/ebsy-qa-suites/0.0-next-r0/temp/log.d=
o_fetch.120
>
> ERROR: Task
> (/build/../repo/recipes-core/ebsy-qa-suites/ebsy-qa-suites_0.0-next.bb:do=
_fetch)
> failed with exit code '1'
>
>
>
> Any help would be appreciated, how to use a floating commit instead of
> fixed one.
>
>
>
> Thanks,
>
> Srinuvasan.A
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59376):
> https://lists.yoctoproject.org/g/yocto/message/59376
> Mute This Topic: https://lists.yoctoproject.org/mt/97515997/3617156
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000bf49c605f689d54e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">use SRCPV in PV as the error says<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 10, 2023=
 at 10:11=E2=80=AFAM Srinuvasan A &lt;<a href=3D"mailto:srinuvasan_a@mentor=
.com">srinuvasan_a@mentor.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><p style=3D"margin:0px">Hi All,</p>
<p style=3D"margin:0px">=C2=A0</p>
<p style=3D"margin:0px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 In my downstream layer, one recipe =
uses the ${AUTOREV} to get the very latest commit always, obviously we want=
 the very latest changes always to build the recipes often, that=E2=80=99s =
why we assigned AUTOREV to SRCREV.</p>
<p style=3D"margin:0px">=C2=A0</p>
<p style=3D"margin:0px">SRCREV =3D =E2=80=9C${AUTOREV}=E2=80=9D</p>
<p style=3D"margin:0px">=C2=A0</p>
<p style=3D"margin:0px">This works fine before we integrated bitbake 2.0.5,=
 after that it throws an error like below:</p>
<p style=3D"margin:0px">=C2=A0</p>
<p style=3D"margin:0px">ERROR: ebsy-qa-suites-0.0-next-r0 do_fetch: Fetcher=
 failure: Recipe uses a floating tag/branch without a fixed SRCREV yet does=
n&#39;t call bb.fetch2.get_srcrev() (use SRCPV in PV for OE).</p>
<p style=3D"margin:0px">ERROR: Logfile of failure stored in: /build/tmp/wor=
k/ebsy-bullseye-amd64/ebsy-qa-suites/0.0-next-r0/temp/log.do_fetch.120</p>
<p style=3D"margin:0px">ERROR: Task (/build/../repo/recipes-core/ebsy-qa-su=
ites/ebsy-qa-suites_0.0-next.bb:do_fetch) failed with exit code &#39;1&#39;=
</p>
<p style=3D"margin:0px">=C2=A0</p>
<p style=3D"margin:0px">Any help would be appreciated, how to use a floatin=
g commit instead of fixed one.</p>
<p style=3D"margin:0px">=C2=A0</p>
<p style=3D"margin:0px">Thanks,</p>
<p style=3D"margin:0px">Srinuvasan.A</p>
<p style=3D"margin:0px">=C2=A0</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59376): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59376" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59376</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97515997/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/97515997/3617156</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000bf49c605f689d54e--

