Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C0EDC41513
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 20:24:54 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.144603.1692131090682976518
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Aug 2023 13:24:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bD+N0PHN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3fe501e0b4cso54535805e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 13:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1692131089; x=1692735889;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q/n1cREEGY8ViHt9HL/2wrvQ5kJ8H1iJuSm7OoSrcR8=;
        b=bD+N0PHN5/IVzNQxhr3WeDO6YUBtMzFoyaKt1j0LtYUU9NCl2noMJsSqSTGOXPf3CB
         zjPJmJO8SwqyDKOuZmTd/ZuUZpCtDIIi+wdMF6DNSOlcROI8IvHXYMnm7TaDtLoYuqaA
         p1iY0n06o8fhp0uu/nOvFZM9tpT/oFA85b8PI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692131089; x=1692735889;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q/n1cREEGY8ViHt9HL/2wrvQ5kJ8H1iJuSm7OoSrcR8=;
        b=il0HguMpbbK++TWuULRu7rHNgX7OPfkEnF7ZUgJb3SuJ1X+Ld+3NMnEmxISsqk1KEU
         vYxxvtFgj9R1cRDL7CpYxzNyc6YfTjcsOCQpjzK6EPl6X5HI1nwY28IR3IGMbdKv0VZn
         /DSVXMhDB6sNLCXPboXyJo+YsWUToN865ajGEMRf6VutHBtNY02CXrfR35DWwtPo+Pf6
         ilddtgNzAvtne2prFmcQ4xTT9tGdEh0qAlmsZsjAC7XmT46B2ESerlDfo3JHIdwfHhBY
         L4e0q6MHSHRs8pSJSdsuePdv4qdvnExESiGkhysBGQl4qCzbIPjYEtahjmfH85n33P2e
         x2hA==
X-Gm-Message-State: AOJu0YzyKw+7R+0DvCtaKj+/1/5YugcixWzury58ubbWJj3wj9QAyOK1
	eEjPAc7n0OC2UEOl8mjweegl4w==
X-Google-Smtp-Source: AGHT+IGtQfXFGgaMOvkf2SGFRQcDH27Y009QR/xSJ9tooVtss74YO/+H8DLK9xMnJdKchXHYKcdeew==
X-Received: by 2002:a1c:750f:0:b0:3fa:934c:8350 with SMTP id o15-20020a1c750f000000b003fa934c8350mr11022566wmc.27.1692131089026;
        Tue, 15 Aug 2023 13:24:49 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b782:7711:f696:663e? ([2001:8b0:aba:5f3c:b782:7711:f696:663e])
        by smtp.gmail.com with ESMTPSA id l5-20020a7bc345000000b003feae747ff2sm2610859wmj.35.2023.08.15.13.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 13:24:48 -0700 (PDT)
Message-ID: <b22346891833a5c6b1198bfa08771dab9d39b1a8.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status 15 August 2023 (WW33)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Stephen Jolley
	 <sjolley.yp.pm@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Tue, 15 Aug 2023 21:24:45 +0100
In-Reply-To: <CANNYZj8qfbMCoPcTq=BViDaa6vEzCUb6QbbOXihJoMGEdtn7Ow@mail.gmail.com>
References: 
	<CAK5yBb_CCWG_Domp-goEZuViHtMy_y9-5v1GHE1jbohzEGoLUA@mail.gmail.com>
	 <CANNYZj8qfbMCoPcTq=BViDaa6vEzCUb6QbbOXihJoMGEdtn7Ow@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 20:24:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60804

On Tue, 2023-08-15 at 21:13 +0200, Alexander Kanavin wrote:
> On Tue, 15 Aug 2023 at 16:52, Stephen Jolley <sjolley.yp.pm@gmail.com> wr=
ote:
> > The various systemd issues have mostly been resolved although the AUH d=
id break as a result and will have to be fixed and rerun.
>=20
> I sent the patch now - it's for yocto-autobuilder-helper, not AUH, so
> when that's applied, AUH job can re-run.

Thanks, merged and running!

Cheers,

Richard

