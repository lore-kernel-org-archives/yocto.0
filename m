Return-Path: <maik@quatt.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8EDBC4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 08:33:30 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web10.13586.1713774802076504123
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 01:33:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@quatt-io.20230601.gappssmtp.com header.s=20230601 header.b=eWvuVaWM;
 spf=pass (domain: quatt.io, ip: 209.85.208.46, mailfrom: maik@quatt.io)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-571be483ccaso4889228a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 01:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quatt-io.20230601.gappssmtp.com; s=20230601; t=1713774800; x=1714379600; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VcWleurReLO5GvD+CLZ5qCk+pWGMQNczd3CJG4CcFsc=;
        b=eWvuVaWMT89jV/ARDF82Fu5CBMvkVB7D7R3yViAGPnqUBP3zLcvvTg366foOkv3lTM
         Mzh7gxwRWOpArPb4D43Rf+i3seIVt89xcxIkxVLWDE9lnOAlpaGYMWlA/3LUdAqFJOfH
         VcUZo3rQgdRdEh3YiU4XduGylTsIBf/5twgHuuMR2Lg19kOGyZ2U+v5p64eB3bY3d7y2
         +Vp+BV+ahAjfBSG7qvYbEKnSFZDxIWCkp5J+XiRP8nbt8xCuV7wo2yQvrsNOJY1a1Vv7
         ZN9B3HvV6+A8rhSKL7RyhwXDs/BbGc3mgzBLUZVDGoVIaNpOhUM4+oRP/vVDGa1Qn3g9
         T4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774800; x=1714379600;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VcWleurReLO5GvD+CLZ5qCk+pWGMQNczd3CJG4CcFsc=;
        b=wiitlRI0Q3BgWyl/hTeuLZeff5SlxLHmlEA6Y4y0i8SNDFXwMIji2QfxpStuijL9ju
         Sx6tP5UJqPXF765TxdRg2UCRgckKietHSIsfSdFIuaBBrPCa1XKQyOojQSjtd6Z2LAZ8
         TQXZIa4wYkL8Aqn4sO2A+iJtODY5hYUfqc9TCurmpT6FfhOP8ER/bA92YzIrBaN6BuOv
         gzB7nOKYz36u4G1XPQVSEEj3DI34ZqqBfJedBJc+3zPJg2sT9J8f5K/ubYoaGlLhkZIk
         +hnqGu0F1dv9eKiQvIBq1Rawv/xjN3tjEjpREFwpMKOThKHlY/yOky9/K+CJGu13MHI6
         AgPg==
X-Gm-Message-State: AOJu0YyYfpjROJXJSN4ST8Am2sfSlGOHfDREsGhI+3tPRfO1M/dN+V0Z
	v2wUFGvjvjwvXCK+/jC4E2/nW3Ou9KvMUTWnXs8N+mCrT+2GtQIRZGlD3FTKBzhFOjNn0CYy0dU
	1v7dYgiBpOoCJnD97PZG4k4uFlBqrs/c/HvSRYA==
X-Google-Smtp-Source: AGHT+IEnzy2b6KFAEtNk3ONobZ5QObqfY/3RGFhmQ4VNpUD1nHOTk/Jmy/kA/+0NfbzKzFFBj8HPskmKSF6dLUBM7gw=
X-Received: by 2002:a17:907:9487:b0:a55:b3bb:e7c7 with SMTP id
 dm7-20020a170907948700b00a55b3bbe7c7mr1710863ejc.10.1713774800291; Mon, 22
 Apr 2024 01:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <CALEqzqcC1PrqzEuQRe3W-6z75QgcpN9jBAaoseOGKEyGFZQsXA@mail.gmail.com>
 <CAB=6tBR1RRkOd33ymxtWUj_=usy1GLcYcwTEPDx43FyqVbKQjQ@mail.gmail.com>
In-Reply-To: <CAB=6tBR1RRkOd33ymxtWUj_=usy1GLcYcwTEPDx43FyqVbKQjQ@mail.gmail.com>
From: Maik Vermeulen <maik@quatt.io>
Date: Mon, 22 Apr 2024 10:33:09 +0200
Message-ID: <CALEqzqc5nmMZXzAm9ivDHz2c2F4RkSD6g1fHwkPFHr7r3YVrdA@mail.gmail.com>
Subject: Re: [yocto] EXTRA_USERS_PARAMS and recipe file ownership
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003261340616ab4aa4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 08:33:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62974

--0000000000003261340616ab4aa4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chuck,

Thanks for the quick response!

I'm not sure if it's the same issue, ours isn't systemd specific at least.
Btw, we're using Kirkstone.

Here is an example log of the issue we see when we use USERADD in a recipe
to create the user, and set ownership in do_install, while using
EXTRA_USERS_PARAMS to manage extra groups and user options, and using
useradd-staticids.bbclass too:
DEBUG: Executing shell function set_user_group
NOTE: company-img: Performing groupadd with [-R
/workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueabi/company-img/1.0=
-r0/rootfs
--gid 1000 company]
NOTE: company-img: group company already exists, not re-creating it
NOTE: company-img: Performing useradd with [-R
/workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueabi/company-img/1.0=
-r0/rootfs
--gid 1000 --system --shell /bin/false --uid 1001 mender]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
useradd: group '1000' does not exist
ERROR: company-img: useradd command did not succeed.

But then when I check
tmp/work/machine-linux-gnueabi/copmany-img/1.0-r0/rootfs/etc/group, no
entries for GID 1000 are found.

Kind regards,

On Fri, Apr 19, 2024 at 5:44=E2=80=AFPM Chuck Wolber <chuckwolber@gmail.com=
> wrote:

> On Fri, Apr 19, 2024 at 7:29=E2=80=AFAM Maik Vermeulen via lists.yoctopro=
ject.org
> <maik=3Dquatt.io@lists.yoctoproject.org> wrote:
>
> %< SNIP %<
>
>
>> I've also tried using the useradd.bbclass in the recipes, which allows u=
s
>> to set permissions from within the do_install task, but that started
>> causing trouble when we tried to start using useradd-staticids, which we
>> need to keep compatibility between software versions using the same file=
s
>> from a persistent partition. The useradd.bbclass in combination with the
>> central extrausers.bbclass and useradd-staticids.bbclass is messy and
>> hasn't resulted in a working build yet, with recipes complaining certain
>> groups e.g. aren't available yet.
>>
>
>
> You are not very specific about what is going wrong, but it sounds
> familiar so it is possible that
> I am to blame for not following up on an earlier observation that may
> potentially benefit your
> situation.
>
> Take a look at this message and let me know if it sounds familiar.
>
> https://lists.openembedded.org/g/openembedded-core/topic/88922422#161387
>
> If so I can probably submit an RFC patch.
>
> ..Ch:W..
>
>
>
> --
> *"Perfection must be reached by degrees; she requires the slow hand of
> time." - Voltaire*
>

--0000000000003261340616ab4aa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Chuck,<div><br></div><div>Thanks for the quick=C2=A0res=
ponse!</div><div><br></div><div>I&#39;m not sure if it&#39;s the same issue=
, ours isn&#39;t systemd specific at least.</div><div>Btw, we&#39;re using =
Kirkstone.</div><div><br></div><div>Here is an example log of the issue we =
see when we use USERADD in a recipe to create the user, and set ownership=
=C2=A0in do_install, while using EXTRA_USERS_PARAMS to manage extra groups =
and user options, and using useradd-staticids.bbclass too:</div><div>DEBUG:=
 Executing shell function set_user_group<br>NOTE: company-img: Performing g=
roupadd with [-R /workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueab=
i/company-img/1.0-r0/rootfs --gid 1000 company]<br>NOTE: company-img: group=
 company already exists, not re-creating it<br>NOTE: company-img: Performin=
g useradd with [-R /workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnue=
abi/company-img/1.0-r0/rootfs --gid 1000 --system --shell /bin/false --uid =
1001 mender]<br>configuration error - unknown item &#39;SYSLOG_SU_ENAB&#39;=
 (notify administrator)<br>configuration error - unknown item &#39;SYSLOG_S=
G_ENAB&#39; (notify administrator)<br>useradd: group &#39;1000&#39; does no=
t exist<br>ERROR: company-img: useradd command did not succeed.<br></div><d=
iv><br></div><div>But then when I check tmp/work/machine-linux-gnueabi/copm=
any-img/1.0-r0/rootfs/etc/group, no entries for GID 1000 are found.</div><d=
iv><br></div><div>Kind regards,</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 19, 2024 at 5:44=E2=80=AFP=
M Chuck Wolber &lt;<a href=3D"mailto:chuckwolber@gmail.com" target=3D"_blan=
k">chuckwolber@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Apr 19, 2=
024 at 7:29=E2=80=AFAM Maik Vermeulen via <a href=3D"http://lists.yoctoproj=
ect.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;maik=3D<a href=3D=
"mailto:quatt.io@lists.yoctoproject.org" target=3D"_blank">quatt.io@lists.y=
octoproject.org</a>&gt; wrote:</div><div class=3D"gmail_quote"><br></div><d=
iv class=3D"gmail_quote">%&lt; SNIP %&lt;<br></div><div class=3D"gmail_quot=
e"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>I&#39;ve also tried using the useradd.bbclass in the recip=
es, which allows us to set permissions from within the do_install task, but=
 that started causing trouble when we tried to start using useradd-staticid=
s, which we need to keep compatibility between software versions using the =
same files from a persistent partition. The useradd.bbclass in combination =
with the central extrausers.bbclass and useradd-staticids.bbclass is messy =
and hasn&#39;t resulted in a working build yet, with recipes complaining ce=
rtain groups e.g. aren&#39;t available yet.</div></div></blockquote><div><b=
r></div><div><br></div><div>You are not very specific about what is going w=
rong, but it sounds familiar so it is possible that</div><div>I am to blame=
 for not following up on an earlier observation that may potentially benefi=
t your</div><div>situation.<br></div><div><br></div><div>Take a look at thi=
s message and let me know if it sounds familiar.<br></div><div><br></div><d=
iv><a href=3D"https://lists.openembedded.org/g/openembedded-core/topic/8892=
2422#161387" target=3D"_blank">https://lists.openembedded.org/g/openembedde=
d-core/topic/88922422#161387</a></div><div><br></div><div>If so I can proba=
bly submit an RFC patch.<br></div><div><br></div></div><div>..Ch:W..<br></d=
iv><div><br></div><div><br></div><div><br></div><span class=3D"gmail_signat=
ure_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div d=
ir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot;Perfection m=
ust be reached by degrees; she requires the slow hand of time.&quot; - Volt=
aire</span></b></div></div></div></div>
</blockquote></div>

--0000000000003261340616ab4aa4--

