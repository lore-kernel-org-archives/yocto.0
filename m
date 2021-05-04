Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.112.1620167541219489718
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 15:32:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=VV20ouPL;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 11F4138C0554
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 22:32:19 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id l2so10999650wrm.9
        for <yocto@yoctoproject.org>; Tue, 04 May 2021 15:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=T2TxDOV4e4FRNUKKQDhQM9+ekxwD22LvMpj+8dv9TcY=;
        b=VV20ouPLpLYMuAG2sWNZyBGEgQnrHP/Oqlm42WhZQdgU6NiDIWhFNgfPWxywQVDc1+
         0yTukw5HBjyKzvioFya3wntjPw1aXsfmElyC5s6fmYUjFb06hYmfKgx2D6AkggNb0DJq
         9M9m+Tx5ml/ZHOuRSzaj4npcB0ijzqZATuC8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=T2TxDOV4e4FRNUKKQDhQM9+ekxwD22LvMpj+8dv9TcY=;
        b=GCB6eZq+pL1bcFrovhXZcI47DPNRR5idzfKIN2Td1Ev15DiwhbpKL5b/5c6YhzhH8J
         Uca2503n1Nyxx8NtPg0OHXEkMcM2I1zNYkLu/c8bVJKLJFUxRG+QYmIgySt4hdaXiUdz
         CpQGWePq5Vw2j3Ag0t2wYuZuUV1h7D+kuZs9ja/lwNe9fXidxsjB4fnCGnw7Ys0bif3a
         9jU8Nc/Icuy6GuD+Ykhb1bc+bzPlssdCTpm1QzvNO8xYFKPu+3JZrCdMGL0xTB/lmzbp
         J5sknrvwrIccObKtyFDHFjYrjkr9/1mYlpCEZB3JjJm+IzWIwRv1701j3mFI/aH7q/Kt
         7DUA==
X-Gm-Message-State: AOAM531Hlwh4+PA6mQVklQHl0F9oPlpB5P6iEM2W3QNKX33tyG2KrquX
	yd2o5u4/KPgd7vuMPsdEFhuYvw==
X-Google-Smtp-Source: ABdhPJz0zvJwNIJ3k1Datpeo83jD9gaR3RKZitMO1CvtqxC4hfEr72Zgc8pEPKcfxwZGtkFL2EUTeQ==
X-Received: by 2002:adf:cc85:: with SMTP id p5mr34234310wrj.75.1620167536671;
        Tue, 04 May 2021 15:32:16 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8041:e424:9226:62e7? ([2001:8b0:aba:5f3c:8041:e424:9226:62e7])
        by smtp.gmail.com with ESMTPSA id m11sm17446560wri.44.2021.05.04.15.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 15:32:16 -0700 (PDT)
Message-ID: <5a4091d0cb7b20f7d41e33b67fb5b7502b2e58b4.camel@linuxfoundation.org>
Subject: Re: [OE-core] [yocto] Yocto Project Status WW18`21
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Stephen Jolley
	 <sjolley.yp.pm@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, OE-core
	 <openembedded-core@lists.openembedded.org>
Date: Tue, 04 May 2021 23:32:15 +0100
In-Reply-To: <CANNYZj-agAhiswr-8qpsQPQ=hP0Orv5zdLtAEEqcVGTTjhWyPw@mail.gmail.com>
References: <168601d740f4$44e42800$ceac7800$@gmail.com>
	 <CANNYZj-agAhiswr-8qpsQPQ=hP0Orv5zdLtAEEqcVGTTjhWyPw@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2021-05-04 at 18:38 +0200, Alexander Kanavin wrote:
> On Tue, 4 May 2021 at 16:46, Stephen Jolley <sjolley.yp.pm@gmail.com> w=
rote:
> > We are pleased to announce that our April 2022 release (potentially 3=
.5) will=C2=A0
> > be the next LTS as per our original two year schedule. If there are f=
eatures=C2=A0
> > desired in the next LTS, now is the time to get them submitted and st=
abilized
> > ready.
> >=20
>=20
> What will happen to the current LTS at that point? Will support be cut =
off,=C2=A0
> will there be a transition window, or is it currently undefined?

We have discussed extending it but we currently only have the funding for=
 the
originally planned 2 years. Discussions are continuing but since we do al=
l=C2=A0
agree that the next LTS will start then, we decided to at least let peopl=
e=C2=A0
plan against that.

Unless funding/support is secured, dunfell would move to community suppor=
t
if anyone were willing to step up, or become EOL and replaced by the new =
LTS.
There would likely be some period of overlap of a few months to transitio=
n.

There is also concern about pressuring wider community layers for longer =
support
cycles which is something we need to think about.

Cheers,

Richard

