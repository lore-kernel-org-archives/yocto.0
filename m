Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58918C369B4
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 14:38:19 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.21538.1744727235347510254
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 07:27:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z7HCLazr;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: kasper.sloth99@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac73723b2d5so1120719266b.3
        for <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 07:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744727234; x=1745332034; darn=lists.yoctoproject.org;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :content-transfer-encoding:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ByrUfem+QCiE1nhb+zg7svqIQ47rQlVIdhX/uHvodE=;
        b=Z7HCLazrUOYdFvB5MAwd4NJapHrSgaZI3vCJ90zKRhQaQ1/zGk29rUvkPffmpF2Da8
         yi3jqTEw/X5c8CNqL35m2WuFdKOJTvrw8+bPPhL7DYd+XuhejNpobFU74QV+/28zFoSX
         gsoCrTZYlTWBjFZrjC/K7FSy655kZVlcaAq33G6ASdFeqoiGczSGvHRDDy7G9CdnoQr6
         7z4QPf6Ag7h+JlSuP6yNEdt9ZcI19IPTcaRPGoull06ef4f6A73iD4Xl85DXaGv8+L5E
         m51YWzJe94olfR6sCHT+eUt8k/c8fmGZon3RpnQIX+uminHf3Hl1w71vZD+aJZ7HQKUp
         uD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744727234; x=1745332034;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ByrUfem+QCiE1nhb+zg7svqIQ47rQlVIdhX/uHvodE=;
        b=BYH4qMieFJZ4TWpnmpMT2bBCXcEiepkRM4bMhgPfZZw8FwAyH17ISVKASx0dprh0Ih
         LWjE/ELtsBhZwR9f5TBJ3Stdajezyxhlpa78sJn39wm+QIsyOKl4kaEM/dQ6t0HvfKwo
         EhhXx7LpmXLQA01YIZxDXqn18cu83iy24k80TjFr8W3mC6bN/80dJ0Ts7dbuEf8LRMiq
         zYBX0hvWDep6LgXcdDMR1iJ0K5Oo4L1WjXX7B67ERazrWPCHGCzw376s+nnEcg2IJTiC
         CqIeYupYrq3I/n66M7CDeDSyRidbKExI9xgM5Rs4vaci017gAR0JqBljQWWLDG4yYum1
         7sKA==
X-Forwarded-Encrypted: i=1; AJvYcCXjkfIAzUt1BCcOQ4rOUt/uYU3J44OhhVQxgxhxs9AMEaNsONfGHpf0g+zNBue5qrC8kO8l0g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxiElctWyuXNqOj6wE6+qrw1bz7fKr2+PxxzNiMEa/moPwUg2PE
	ORytPZODsoinP0dRGax/R0yLa1KOA0Zubthho806Oaqgl6MfN6a+
X-Gm-Gg: ASbGncsE8dpmsgySH8yVl2ysFQ9faI3IdzBbCJ3BXmizyLAQEXaexPXzsQYONowRNx9
	qlZ5+mC+5peYAO91IMKYf9sdJEBCGCvdPj1bcZJoBJ+tzBl44h0yq9TXpgJck6AdELIr1l+cTYV
	Hjr5Q8ILdHTTbkLgbQcuXPVSkzSfKcFxXt6q5/OYjv9ZvMTKohq7enU0/hHudOz5DGjlKUxRsiL
	lkF1Kwt2SZXsI1OB807pf82eFfq9jqynOl7bd7lI8r62S2HtSm4IAm6zuGxCor8OokcX73VPXB+
	aT95G9h+ig4rokbIpsAElY7x378qL4+o7KUXgE46ONZ9/XruoQX4MZLTwTu1hw==
X-Google-Smtp-Source: AGHT+IETezb9cx7RBDzfU6VZoCPdxQ0E5MgQSeqdla4wpvOhScH3k215M32azZ6IJ8e0cVgpO3HQFQ==
X-Received: by 2002:a17:906:730d:b0:ac8:1cf7:7aa7 with SMTP id a640c23a62f3a-acad348ddb8mr1558334566b.15.1744727233490;
        Tue, 15 Apr 2025 07:27:13 -0700 (PDT)
Received: from smtpclient.apple ([37.96.90.214])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1be9c27sm1115104166b.68.2025.04.15.07.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 07:27:12 -0700 (PDT)
From: kasper.sloth99@gmail.com
X-Google-Original-From: Kasper Sloth <Kasper.Sloth99@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] sdktest.bbclass does not find custom sdk tests
Date: Tue, 15 Apr 2025 16:27:01 +0200
Message-Id: <C55E1981-0449-42C4-AFB0-85D121496CFB@gmail.com>
References: <60eb4d60-1462-4fef-8939-5fda25f6e0bc@gmail.com>
Cc: Ross Burton <Ross.Burton@arm.com>, yocto@lists.yoctoproject.org
In-Reply-To: <60eb4d60-1462-4fef-8939-5fda25f6e0bc@gmail.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>
X-Mailer: iPhone Mail (21G93)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 14:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65173

It would be nice with a patch. Will you backport it to scarthgap?

Kasper

> Den 15. apr. 2025 kl. 12.26 skrev Gyorgy Sarvari <skandigraun@gmail.com>:
>=20
> =EF=BB=BFOn 4/15/25 11:29, Ross Burton wrote:
>>>> On 15 Apr 2025, at 08:28, Gyorgy Sarvari via lists.yoctoproject.org <sk=
andigraun=3Dgmail.com@lists.yoctoproject.org> wrote:
>>>=20
>>> After having some sleep, the problem is still the same, but I realized
>>> that it can be solved much easier.
>>> Forget what I wrote in my previous email, and add the following to your
>>> image recipe[1]:
>> Whilst that works, I consider this a bug in testsdk.  If someone could fi=
le a bug (or send a patch!) to unify the test case lookup then that would be=
 great.
>>=20
>> Ross
>=20
> Yeah, it occurred to me also, just wasn't sure how well it would be
> received considering that it took quite some time for someone to want it.
>=20
> But with you altogether, that's 2 (at least). Will try to send a patch
> in the afternoon.
>=20

