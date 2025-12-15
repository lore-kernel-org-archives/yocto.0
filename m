Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD58D5B866
	for <webhook@archiver.kernel.org>; Mon, 15 Dec 2025 18:35:29 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1792.1765823720054406397
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Dec 2025 10:35:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PkIvVa7Y;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-88888c41a13so42769646d6.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Dec 2025 10:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765823719; x=1766428519; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z/QqAXuarXXa3XSlAg4jroe187Vz5EplTAdZPN6sxOw=;
        b=PkIvVa7YLpJVz1D0azG2h+B9YGzgRbi9+EAo953pzR6hfQC4UyOKZm8JuSR+e2D4tl
         73G7/iu4vuYH5EqX7crKgWMAWg4ZxwvlQ3Fufh9Qw6jmmzcS0kjovmGlQa0/1AjXzXN4
         XavSqwo3m77l/H+2plECzwQ9oGUJmV1hwLaD1xzhAkap3SiGn5SYl8+c+mYtn+rSf26v
         hM0claeuA0B9dBsMV6smbELtVdvbYETIqgGVrPKUYZLhgSCxUjKUvrRmcETWFhqSz6YW
         cTbfi3ppsUisoqEh3xMwSK8XNnQKrqLzdGtvH6aMmCCM1fjApSf4G0Kq6No60LLJ0XB6
         h6CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765823719; x=1766428519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z/QqAXuarXXa3XSlAg4jroe187Vz5EplTAdZPN6sxOw=;
        b=O5Y5V1SKpyBszhIisU20w/omu/553AMuVGZnSlvvnR2tXimA6GAOYVD3aLH5ZvVtKU
         1A9ePn/Z1K/VKuQ90OOuPwNmt1+/9MLSGGUGV9FF33Q/NOJRlwFHDFQUYY8IlecdpoKA
         YAHt43CZi6FlB2yo/gp79lkc4cgNNjJS6yoradCV4PKLELF6PrU7QT8K03oVzOnhV0zU
         wzkr/5ZdQwZDvaV85gRDi8SGLUbG9SknNpE1BbryrHGl31lQsTdAxjZ4WyqirAy7/LgG
         XR79/1VIfnQPQl/lIPwBcdPUL+dvSMz1z+1HLGGG3Zp+2QpkwIW4G755qWf+Vm/VVc+t
         Gvgw==
X-Gm-Message-State: AOJu0Yz4inK4FhJvN4PjzyHioTOTnp/hnA9j4ASZj1a5xgC/y36hl1Gm
	iv1Nkn/2JKYf7ughFECuRRnXRCqSIqDJce4d/ajDHexKSGtJvJa+0E5+Y5R+EC7a0KpulN74Fyf
	acafGjwsBvXyULNjOxytvH2im6fDSFIKr4g==
X-Gm-Gg: AY/fxX5HfwesX92DcIV8UNu/PiO2ngDguGNhSfQ1tdnzr8NjsY10LN6h4C/X26KbB/N
	GFD+YngrAcQTu6PtxKHjW0gVah+RAKadb8nFG3Drbkh7KrYSloUp3GRCbg6mt9KNQX1tiW5dTjg
	Fpj9K+29syhUOQK7o6luO3g9zupHAt2bbRp0BkIULU0W54KAsjBWeO7Qd7zRYizmJGwWmjnT0u4
	7JAkDfhl1c1f7facyzBTB//12A76EhA5CxQNGgRhUdPYdAeyB0qLWq7biRRgDdOi0kr6A==
X-Google-Smtp-Source: AGHT+IE7luT1G2ilSUigxESwgJCDk0WjKESjCSEKCdXCDsf/nY/+dXyeylgeM11O7sVlPj1ZQNBwd62HnzVzw87eiMc=
X-Received: by 2002:a05:6214:2f08:b0:88a:316f:252f with SMTP id
 6a1803df08f44-88a316f2757mr66745426d6.53.1765823718974; Mon, 15 Dec 2025
 10:35:18 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9ANcZM04CXbyQefsteNTnfMFF58_N3-68i0cFkDmNexA@mail.gmail.com>
In-Reply-To: <CAK5yBb9ANcZM04CXbyQefsteNTnfMFF58_N3-68i0cFkDmNexA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 15 Dec 2025 19:35:07 +0100
X-Gm-Features: AQt7F2qUo5sP_nWYegKega-1leSaafXt58vnwYujQAv3eV8rxbDyJrt4zLRiwec
Message-ID: <CANNYZj_83k6Ykuub-bSx=mw4VNDG+nMDuXMAPMWFPSR2CEqdOg@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 9 December 2025 (WW49)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Dec 2025 18:35:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66112

On Tue, 9 Dec 2025 at 16:55, Stephen Jolley via lists.openembedded.org
<sjolley.yp.pm=gmail.com@lists.openembedded.org> wrote:
> Further bitbake-setup changes under discussion for the new development cycle:
> defaulting to a common sstate directory and hashequiv server
> Allowing symlinking of local existing repos into the build instead of fetching

Patches for both have been posted to bitbake-devel list today. The
symlinking is fairly robust, and ready to be merged (from my POV), but
the sstate handling could use a bit of review/alternative perspective,
and is offered as RFC (it does work as it should though).

Alex

