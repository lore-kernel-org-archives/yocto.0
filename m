Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A4AC4345F
	for <webhook@archiver.kernel.org>; Fri, 19 Apr 2024 15:44:43 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web11.24648.1713541474018307405
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Apr 2024 08:44:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QlITbN4V;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-36b146836d7so7923755ab.3
        for <yocto@lists.yoctoproject.org>; Fri, 19 Apr 2024 08:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713541473; x=1714146273; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y5E4gax/xdEDKo20zZL0Yp30DC1uWReC8bsqvzbUHVs=;
        b=QlITbN4VBaldfUSlk6m+nghfet7ZGOGV1B9T6CfqhgBINlnKZMpnKfeHXEpCBAEiJw
         9FBVdNN5+LKNW/uP/SF0GdPVagQPGlZMsBLIzVdailf0GiK5vM0/h4mHKhep2gja5xAu
         gkgDNwFD01dlPJuqwTIV8u5Aeuc/4hNyefNRA9w9kcpJ9v+LmwPCgjT0n15Yx9NaGkSU
         RtHVM/LnRB+CxPYGTvRHALGO2RQl3E69R1dxmeQUnAHemT2TGVzREOlCiXkQlu0TJ7aQ
         UAIVklpkj7PenMZcxhRd0SVTEFzRjJ41xakMb7aDPGg871ANy+5ou5NNvuxjzDcBanDq
         n26A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713541473; x=1714146273;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y5E4gax/xdEDKo20zZL0Yp30DC1uWReC8bsqvzbUHVs=;
        b=flAcNcEwdxxBkpzqwkH/vSwukv9McKPnCvmbBPdPGc6Cr5fijAkQWGrjkW5krvyx/s
         jV21Ynt6nJGWl2/Bo2Z92+alcqjLKOCTqt655ozHgtgHr5bFvRzufgdlC9idLtlR9yoZ
         SMqsh+H+feFLRarVmxstztX5JZ8KSL39ukuVydljOJT9RscR+2cGKltofYVRVX6lEMqp
         jJ9ATzfSPhkZ//ZT5DjmB4fZDHN1rLhfDy5OdebUtInnT9VZGVU0dRV39pz4ifAWU7/7
         7v8sQ4zp7BnSrfOut7n+byoMUDDvfNL7Ma6Hb542PaCd2a8uY4cAclmKah8kfg+NVZCQ
         K0gA==
X-Gm-Message-State: AOJu0YwHgk+hpxXKoW3VTEtk9I0rxazd3MlZoA/3f30ddtUpJSXmjNYU
	jU6XZ/xs3JODACP2oNFf6nP7ge7IsM2KGWFW1zoJGCqe6sOSr+jdqrMu5CkZENYiaLakAXwejRr
	5ZvdZ0QP8znF8cQX/V2s+uJfde9DkjM9v
X-Google-Smtp-Source: AGHT+IEQybsNLDEyLvMxkFZSzzwzu3LG2v3MKYiv33L10ziODTxvwmxZZT+LQQpRnYYJfxBuFBMffHUIeCiZjZzwrjU=
X-Received: by 2002:a05:6e02:20e8:b0:36b:be7:f2d1 with SMTP id
 q8-20020a056e0220e800b0036b0be7f2d1mr3147267ilv.6.1713541472174; Fri, 19 Apr
 2024 08:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <CALEqzqcC1PrqzEuQRe3W-6z75QgcpN9jBAaoseOGKEyGFZQsXA@mail.gmail.com>
In-Reply-To: <CALEqzqcC1PrqzEuQRe3W-6z75QgcpN9jBAaoseOGKEyGFZQsXA@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Fri, 19 Apr 2024 08:44:21 -0700
Message-ID: <CAB=6tBR1RRkOd33ymxtWUj_=usy1GLcYcwTEPDx43FyqVbKQjQ@mail.gmail.com>
Subject: Re: [yocto] EXTRA_USERS_PARAMS and recipe file ownership
To: yocto@lists.yoctoproject.org, maik@quatt.io
Content-Type: multipart/alternative; boundary="000000000000c1cec8061674f69b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Apr 2024 15:44:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62971

--000000000000c1cec8061674f69b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 7:29=E2=80=AFAM Maik Vermeulen via lists.yoctoproje=
ct.org
<maik=3Dquatt.io@lists.yoctoproject.org> wrote:

%< SNIP %<


> I've also tried using the useradd.bbclass in the recipes, which allows us
> to set permissions from within the do_install task, but that started
> causing trouble when we tried to start using useradd-staticids, which we
> need to keep compatibility between software versions using the same files
> from a persistent partition. The useradd.bbclass in combination with the
> central extrausers.bbclass and useradd-staticids.bbclass is messy and
> hasn't resulted in a working build yet, with recipes complaining certain
> groups e.g. aren't available yet.
>


You are not very specific about what is going wrong, but it sounds familiar
so it is possible that
I am to blame for not following up on an earlier observation that may
potentially benefit your
situation.

Take a look at this message and let me know if it sounds familiar.

https://lists.openembedded.org/g/openembedded-core/topic/88922422#161387

If so I can probably submit an RFC patch.

..Ch:W..



--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000c1cec8061674f69b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Apr 19, 2024 at 7:29=E2=80=AFAM M=
aik Vermeulen via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproj=
ect.org</a> &lt;maik=3D<a href=3D"mailto:quatt.io@lists.yoctoproject.org">q=
uatt.io@lists.yoctoproject.org</a>&gt; wrote:</div><div class=3D"gmail_quot=
e"><br></div><div class=3D"gmail_quote">%&lt; SNIP %&lt;<br></div><div clas=
s=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>I&#39;ve also tried using the useradd.bbcl=
ass in the recipes, which allows us to set permissions from within the do_i=
nstall task, but that started causing trouble when we tried to start using =
useradd-staticids, which we need to keep compatibility between software ver=
sions using the same files from a persistent partition. The useradd.bbclass=
 in combination with the central extrausers.bbclass and useradd-staticids.b=
bclass is messy and hasn&#39;t resulted in a working build yet, with recipe=
s complaining certain groups e.g. aren&#39;t available yet.</div></div></bl=
ockquote><div><br></div><div><br></div><div>You are not very specific about=
 what is going wrong, but it sounds familiar so it is possible that</div><d=
iv>I am to blame for not following up on an earlier observation that may po=
tentially benefit your</div><div>situation.<br></div><div><br></div><div>Ta=
ke a look at this message and let me know if it sounds familiar.<br></div><=
div><br></div><div><a href=3D"https://lists.openembedded.org/g/openembedded=
-core/topic/88922422#161387">https://lists.openembedded.org/g/openembedded-=
core/topic/88922422#161387</a></div><div><br></div><div>If so I can probabl=
y submit an RFC patch.<br></div><div><br></div></div><div>..Ch:W..<br></div=
><div><br></div><div><br></div><div><br></div><span class=3D"gmail_signatur=
e_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot;Perfection mus=
t be reached by degrees; she requires the slow hand of time.&quot; - Voltai=
re</span></b></div></div></div></div>

--000000000000c1cec8061674f69b--

