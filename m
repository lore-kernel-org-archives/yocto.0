Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1031C83F03
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 17:50:57 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.29303.1751565055420495548
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jul 2025 10:50:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NqiWMmZl;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-71173646662so632057b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 10:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751565054; x=1752169854; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MXz/HDMhzWl2+Vym86ghUi/UOBnf3xE7g+yxtsh1tmM=;
        b=NqiWMmZl/ElQ1/UasufrCIk64WybA2EC8kYBe+eRzTe/wSHlxv0ztJDEkNwpspb9GJ
         3Mrp+nHv6iBK6ZjJiFf4NEztKGUK99uIvUDzPEmZtPxuhBd/DnXa1KBD5Kpvbfg/3qgh
         klv+Zwn0XI214/bun+DCbuxBvIwMFIvVZnd8mnYZe8yo1uXSFP6HQ6kSKLneFQY5abWr
         SXhycx/ob1Fv82S+duK2UkzcpURPrYVBot6TG1GZFnlJyeMP+u4GnhN6Hv5SVVn0did6
         Ai07hhkAvF008PjB2PcCnq/WlPSsxi/u0c/BE0nFhSdneCftOEjHKk+AkNhUR8F3c/Z3
         lpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751565054; x=1752169854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MXz/HDMhzWl2+Vym86ghUi/UOBnf3xE7g+yxtsh1tmM=;
        b=bH6FmocYezTubcFlo9Jg7Zh5xsurNKkufuxOEcBZjotzviW7NprFKPZgay979huwry
         7MLVLS9tjzam6OeshzPOhKFQmeM8i9e0bZvCF+atDTahuqenInvDxFXQuU1BDGORqS2o
         cl58R9gOKyPctxQDa5n6JMf3dAAv8m9YPlVAI/hV6+NQB3xC/j593ACT9Mi/FvCfAMoc
         HujgIYYz2rFC+sLlxAW7V0NuoTds90Hc1xc0u2hw1u2KzVxNg2iq1R8qImqXWO7hb3f0
         WPJfBrqNZLeSIDuBp483eB6EXds/rvPrN7/Pr+TbzctrYrE2fU+o6OeuMcW2IbY7UIag
         GsAg==
X-Gm-Message-State: AOJu0YxOGY6W/hyFXMbddvFihD4cBLoiZZBohWWS1hU4soN9rw/kKsBQ
	X/kuUbGz/H8NDhBqJDN52MwizuWW5+qk5xJaUxziJEc/L8U+Pl/IuQtkq1gzxy97A8t4W8ksqT/
	r8L8cj7DX3Vun/k0RRRNVPJUOTujyV9k=
X-Gm-Gg: ASbGncvDQ08w1wMsYEvqQuHvlFxvYB4uQlGNke1AxWjOlgmB/9RFZZne/6AgbIYLt3U
	mfs73Nup0PYTWaBcbdvYiv+4KZp9ljNTR8DSG2jYjoO78+BFMhSiHYA1/vpZsUFissT5p/bytk4
	WiaFxA0FFJvIS47CQMbqTa7kWcj12KxovYJMHE/v/WnWw=
X-Google-Smtp-Source: AGHT+IFbNxlCGC3l6MqZXm62DVzlb+pRwz0nLWE4XHJMfB9qlGEoUrZLqDRPISzjH9uBJcBaCAb2xceZG1NVE4ar5R4=
X-Received: by 2002:a05:690c:3804:b0:712:c325:2965 with SMTP id
 00721157ae682-716590c4d29mr69622167b3.20.1751565054403; Thu, 03 Jul 2025
 10:50:54 -0700 (PDT)
MIME-Version: 1.0
References: <D51C1972-C97B-4728-8C89-BE50C37EEF02@gmail.com> <6459.1751530499281369116@lists.yoctoproject.org>
In-Reply-To: <6459.1751530499281369116@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 Jul 2025 10:50:28 -0700
X-Gm-Features: Ac12FXxBejMYNOIIQ3O-DuQfPqDuaJqm5R5jU5rp_YCR7YzG_Ws_UnA1lH38OFg
Message-ID: <CAMKF1soJMzB9GGRa4EpQUNYemrj5ZhSpXvNzOAN9teiSRgMO_Q@mail.gmail.com>
Subject: Re: [yocto] Building Android within Yocto?
To: nguyenthaithuanalg@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 17:50:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65606

Agreed. It is a hard problem but certainly possible with OE/Yocto to
build Android.

On Thu, Jul 3, 2025 at 1:14=E2=80=AFAM Thu=E1=BA=ADn Nguy=E1=BB=85n-Th=C3=
=A1i via
Lists.Yoctoproject.Org
<nguyenthaithuanalg=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Khem Raj,
> Via your answer, it sounds very tough problem. It is almost impossible.
> Regards,
> Thuan Nguyen Thai

