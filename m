Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C4ABCD343F
	for <webhook@archiver.kernel.org>; Thu,  7 May 2026 13:51:42 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12519.1778161900339889921
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 06:51:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=YOg79LDF;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8acae26e564so8319506d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 06:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778161899; cv=none;
        d=google.com; s=arc-20240605;
        b=OqLiZBLm7oF4SP7fhS84obgxlZdjviy2jcnGAFx0E1cnsWtf1Kns2Da0xG+GENUDyj
         2HWx0r5j5KzsC/jwU8Cq7+DrglFLzMSony0708Yo1+Y5ro2Rq0o7OoRXtddq1RfIlo6T
         adpkJGMaGXe1G/K+ycwDzKXiVQHgSxYJZuKrsgG1rqd3JbWHg39AUFmkSuYsTFOGe7P0
         Mgi4FhnTa8MGh8eSK/Ut77bsFrHGyHiEJmaR8EWQ2EXPTPQ/DvHFTk17r13Qjn4urEns
         RnOr38lnKNc5ywP9zqGnDiKvumwRFhZnWrGSANm7ElX5GD4KV885GQKripwABGowPYyj
         zHKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+CP347dfiUMUCFfWnO+TGJ9xRxuSBN/N2f1GHGl9PkI=;
        fh=9nHztJ+ZqQYw41lr9uz1Nm9ZOWrbXexP/25ev604vV8=;
        b=P0aBAPTYMR6Q1aHwz3LdHCUj5lTxg34WypBLQpn6dXR90X8u57kWGdpY5FJ4GtGvYN
         5uii1/gemUV+CEMfSyoqAQAHZavtz9E/wBX+m/ZioF779wUvojuvCtgdUX3GWt+6eJOn
         tQEs6XWSpl8QHjPOyXJFiotslyDcm25d+RDTtpk8sIFUAqXTdSJtF/uZpeJxXO1Jey8j
         J05YI0+bgTb/FjwnjvaNVg4Iw+fC2bth+qM88iDWoNB0/Klq3+mCwNyw6MF/JRgGOcax
         hFem3y8fTCf/HSEt6VzFFUW7v+Z7zO69otr21zf1uZgC9By2IhFvYG1DLpV9WvJUsygk
         uXlQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778161899; x=1778766699; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+CP347dfiUMUCFfWnO+TGJ9xRxuSBN/N2f1GHGl9PkI=;
        b=YOg79LDFkXg729wpfX0RGI7lwuGCbM5i5hZNCphDGgptIFxBnRNKxZcFMN1W4PHj9x
         1qV11I1MHrNl1FpYDUqA8wGU1DRgyWd1YFiO2DxdmP4BvCnR4Fk17Ba+6s6DFV2WeowT
         I+nBryOVFO2Edix+52gIF5G8TYZHm/bi8QrE2pOZU6MjG+WoD5eJRrHhpLMLqY2aY3zE
         mj9bLzt4lLmE/wih7I3ThWhv2Uyc/RIJ/tcpdhd2XFEYlMlNUrDKQJsVr9bKb9dJUO4S
         s0vPvUD4P6g+UQUDAYmOgHpgxoKpBsdJ+N3FbzqfakgisM9aN+djeO77+rdIb0jWlhfB
         DyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778161899; x=1778766699;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+CP347dfiUMUCFfWnO+TGJ9xRxuSBN/N2f1GHGl9PkI=;
        b=VUmZ9WRooWxPnz+x39JksDWgQwgM8XyJ4Wfbnn9nbTIqyuaAGB4tl0ZfQwTdMiNK/9
         EqgzUiTroQUNz9bCY8hy7nGMB6BYvveact2CD9Fg4exz8UUXT2++JXlmc7SC1j8W2OYM
         Y2yho9Wny72nJbO9r/zT7G4lqIOL0XCrKdqa968a6//hRocnzwpWGrRSvXJPedsbv8I5
         QXqQbvGtX2Y/E9ZuQYs9caWJX9N7NkQQoCULlPHc8FBM0w93riaCmb4EJV23QL40EHQ0
         ICwui/a0fnCHkcMqWlwPvpHzLE8q2BnfQhA8cxewGtrZ3WxtPwuPDnWJKwOQlkCfEudx
         WyDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8cMIyUXgiOuRQ6RAzqdSn+24ZwdwTx9Lawewe3i/q3+DU6nPO9sbL1e/LxF0QGHLog0Ftl7w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy7SDQ3dSuwNLrOnnLa9IQQeQdu752PuKPsas+125EXujSxn4ZS
	7rMNnH/aHg/F9ZJ+yo7l5PWb9dNLXK3s9FeWTHDrlP8XZol0vXhnICvJRbXvJh2OOfjci4euanQ
	3DDPqv8pp+rpLxp4nKW9qQWFluHzWGXg=
X-Gm-Gg: AeBDietqO7B/KYRj60m0kYXSBJr4hB7bL8PuVSJi6+CSGY3szZzVDyT8Wuu1GIwgIun
	1ZLxHSpHIsVi4SRzZE+TksJmOXiMVqlz5r3YDJEK5C5agE6YqOfyBRDRml54OiO8HSq9vkjuKDH
	j8DP7V0+xtBfCig3MbH7omE+GqYSuRgXcaBvgg2yr4t8JpCRQ1hbZp9/7hgysU+AH8Jye+a27c8
	9rfopwCZSqY88OWxnwMKK/rpktrAxl0jJNoZiWiuvtjD4lTG8fES/kbCGUCDBFKhlRLYnbW12g1
	Mp+D7EqS3C1Zr8YuhAXXW17XjjNpeQ1XUjpXBgMuLxqQ0eTftWm+
X-Received: by 2002:a05:6214:29eb:b0:8be:3da0:bba9 with SMTP id
 6a1803df08f44-8be3db001bdmr24417276d6.14.1778161899142; Thu, 07 May 2026
 06:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <6100A74F-B06F-49D5-9895-DB7D5B563773@arm.com> <CANNYZj9YxLpwDe4pTiT5-WMYUG=6AdV1u=dQHCZt45Pk9QF=xQ@mail.gmail.com>
 <224b7cb95cda25816f49ce2b036a0c9cca437e1e.camel@linuxfoundation.org>
In-Reply-To: <224b7cb95cda25816f49ce2b036a0c9cca437e1e.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 7 May 2026 15:51:26 +0200
X-Gm-Features: AVHnY4IJMzV0_BucWHXHb7cTmkkm_vJZakW29BkigavH_k1-8wdPJU789NqsxP4
Message-ID: <CANNYZj_wSR8fYqcXs7v5KrSYNC6xmkPZrvsU_3Gy92g6-WFWrg@mail.gmail.com>
Subject: Re: [Openembedded-architecture] [bitbake-devel] proposal: build
 pipelines in bitbake-setup
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Ross Burton <Ross.Burton@arm.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 13:51:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66495

On Thu, 7 May 2026 at 15:20, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> The trouble is there are multiple things a user may want to do and
> which one is a hard choice to make. If you have some narrow layer with
> a specific image and application, that is easy. If you have a general
> layer like meta-virtualization, it is unclear which target(s) a given
> user may want. nodistro/poky face the same challenge, the thing the
> user might want "depends".

For such general layers two things come to mind:

1. An example/demo/starting point for one or a handful of most common
use cases. E.g. poky/nodistro would showcase two or three most common
core- images.

2. Running tests for locally made changes, before submitting a patch.
For oe-core/poky that's perhaps unrealistic, but I can imagine
something domain-specific like meta-virtualization could define steps
for this: $ bitbake-setup run test

Alex

