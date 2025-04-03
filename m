Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27DCAC3601A
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 14:54:22 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web10.15481.1743692054538384172
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 07:54:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MfxHN4w+;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-60288fd4169so518144eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 07:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743692054; x=1744296854; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Qk0VEoRimYUxT86TdxD/hySMLqK3zdlaHO2kgYbr18=;
        b=MfxHN4w+Kmq+ueyoJvNLuZqJbozBQrVR+S+CtOB2kp5aHMdwKPhaAonBvwGXF3yIpv
         CNm8nZDFZAcJ28zP4I5CCxt+6AjijQLBxVamiat0egsJTney759PYKBM4OWk60Jay57j
         0SCAyAlKagH1KnMbgSAjlfNdANzb+k0bJseLzCDwBfz9eCQlK0Rl3yhXHtSn8u/FJYNq
         AMJU+4rwKc0oYoFlQ0euRTh+01W6UrktZyVRbbSHuURyWlt4SLUnH1yb6gUqZ1Y9SdLw
         po/7nUJAy9Vc7pCDndbYPRmEDHfkdOszkbdKkBPr0lkemM+CwQ0gO8k82IWksoWwHmjb
         UnaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743692054; x=1744296854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Qk0VEoRimYUxT86TdxD/hySMLqK3zdlaHO2kgYbr18=;
        b=GJ00AsfpLHp3qOJmqPRg+reKDKcoB7G3LQ56jo2CbXDfgzJHfhHc7JOyN/ErWn6c12
         uL5UU1pNN2CzUezj/mdqydoGMf4eSKJKK0dx0MtUQiSQFaN/bNjUp3+cIHnXZKh+djwK
         j77azOo4+CAG2KxQnsRKYDDp2zL/hfwcHQa3Mtjq7Gf6d1P6qbuSmzbYKi2bPvigrq0t
         /3bnnQP5PwldjSavA7pg+pMMOFlycVNJG2aG9l+FNsSbf2hPDDT6BYpua8ZsmzWq3/D6
         XlaRJ+mkWZ5HDxcriLwJaMZD/QyIDMpw8bGe5aLUsN1cKvLs+T5aR4Zmrs/14SatFmMd
         HQRg==
X-Gm-Message-State: AOJu0Yysqok/gq0db7WMb9w9pvnWDJM7vhyxWvgR/DYkrLnLB8cVyKeg
	xU3zKMkmQpjqE66SMXy97CsD1SmW4eVwkZ+YZzRUGO6yaNPh8/zEQv7mHnZrmhwrju8jJpIzCfB
	JmxO04vVU2orrXq7We+eAQV2FXwQ=
X-Gm-Gg: ASbGnct3L8w6dmG87Wsu7SH+XDZJe4hKuq4TbrwDo5IqlfTRVwdUalsnn+W7Zo89VGE
	LB7LIf5llSfzc8+v4ZQiA/AoMF8XlKi5gyseHvVWwdyu2Si2c9wFvcEQBCUdvM1AqOhmUvpHaVD
	Ts0/qfsXSO1LI1GJoWitS0vz0L68udOvdqQJNv
X-Google-Smtp-Source: AGHT+IHOeCkjW4ocW3wDIyqAohuzGVaiSjI0Y8x0GhB7Wk2bvnQN10SJXtH8Na+rqhTbTkTQZinfdprrJjJ+zsL78hQ=
X-Received: by 2002:a05:6820:2011:b0:602:2bd5:121c with SMTP id
 006d021491bc7-6040d367391mr1155323eaf.3.1743692053789; Thu, 03 Apr 2025
 07:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <24e2c174-fed3-4f40-a14e-8e5f742c1ec6@gmail.com> <18249.1743659052514069680@lists.yoctoproject.org>
In-Reply-To: <18249.1743659052514069680@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 Apr 2025 07:53:47 -0700
X-Gm-Features: AQ5f1JpUEzqgMO5Cf0efuc4_wk-EJP7aHl40SP3ygVj_tSSd5scubbWeoQmbPFE
Message-ID: <CAMKF1soN+NMKVONJvWYdAaA3fDyEohH=Z6gsvskK5-mfr0=g0g@mail.gmail.com>
Subject: Re: [yocto] Issue Booting Yocto Scarthgap (core-image-sato) Image on
 AIMB-288E (Intel based target board) #kirkstone #scarthgap #yocto
To: rajesh.d@mindteck.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 14:54:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65086

On Wed, Apr 2, 2025 at 10:44=E2=80=AFPM Rajesh D via Lists.Yoctoproject.Org
<rajesh.d=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> Hi Khem Raj,
>
> Thank you for your response and for your helpful suggestions.
>
> I included DISTRO =3D "poky-altcfg" in my configuration and built a core-=
image-sato image. However, when I booted it on the target board, the boot p=
rocess stopped, displaying the Yocto logo and a progress bar on the screen.=
 I waited for a while, but it did not complete.

you need to connect serial console or somehow get into the machine to
observe logs for more info

