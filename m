Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F267CA1002
	for <webhook@archiver.kernel.org>; Thu,  4 Sep 2025 12:00:30 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.37340.1756987224162015796
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Sep 2025 05:00:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ADRoKj0E;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-726549f81a6so9335456d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 04 Sep 2025 05:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756987223; x=1757592023; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RhEhA/KSpU0FUVrQ6d+qXMSivOIoNEN4uj/caW2xqk0=;
        b=ADRoKj0E0hK9MswMfRQsB3tmr7H3QDXqMMDNTI1Ohc1oOaKKTUSdWBJmLNMH7c+9qo
         BAszIGgjQ/edbN2JMigfmLL5edQooF+zYVF20MdhVZFxgJbjImvtuMoPaUJoLU4qazAT
         A6sulkftznOTTDqiJV48D8JxwoE34muix+yybR0z8gayw0m3sQvv0gFB1Kld3WHChlKL
         GWA+J2HmjADb8QJ6A7QobZKIqAnu6eAsk3XpNWvi/rDf1EDoNSjZMIhPCu7H28d+5fc8
         pSOAXwkjsRXlk8VDZJjBl8X+WpgezsI4j/1mKbDj7ZzCRERmZ72qz3gjeL1dy613Eyh5
         wf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756987223; x=1757592023;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RhEhA/KSpU0FUVrQ6d+qXMSivOIoNEN4uj/caW2xqk0=;
        b=r/j2m9QeJ5UP/rwuaBcExztmeCOlD88x6hdNZFWTcSA/+smOrAtgfomDNvt2M2NsMU
         xdp6jiJAXhodYI0O2ltOu8lt+nW4T14jwXWpAumcqvRjpUsLmJJdD0ChGNREP7aXUzTu
         M4vJKYaoQcsZK1fOjHxzBecugfbLZaFnxk1Np5oT8zBd/jWbJCn5DcTFo+Ptc7fN/pBc
         fE5xeFCEd8o49sbzhwlPoDEQ2GqN/FI1YVpzv09pAQAyNiCYfE6rxD7yRA+iNJSprYyL
         j15PYbfo//SWutw8U4yBGS9M8xpnIfen6LtdpH+QjcmQgfi9P/rU3zx4DJPytgLLoAKf
         4bxg==
X-Gm-Message-State: AOJu0YwVe8jpEnODFzVJ7G8VwYKKt1IG/Bg9ATMUfjsggZKlAexFr8kR
	LK8IUpXzC+m1NHagwLa4yAmaQlwmE1uyc3hQ6g+VtZJPVv0R2f3mHDXvnhzIYTzA92t6/TpiC7M
	fkABzfr9V3XhdBYAhwhcwjxEQhyE6XN+GEA==
X-Gm-Gg: ASbGncv2qazx8J1KZ3GDrh2YG8K0PCZQkpDutZcVuGz2p3gR8G0KYhyjygQ5bTwxv5m
	6HVbE5jR8rP6AhbKeWL31K5VnyEPMG17s7O6d0TQs/6MJdABXIwzN+A9NM3zOOG70rFZgjv68tk
	ZdD++lIdwTtUV3/LCHjC8MpA2a/+v2yOFvDiSJSN6ORll4asxZVKBgG+1WF1z/f9NMWINmmZRGE
	gAqEORzJzLsIUDpFmw30PJwpkVa51bcsfsXuVG300R7PWpPYu8Mbf9Q2eCLOsEwZmo1t7tfWtL+
	AHXkbLcZa+cG/vLVlLYUpgtUYqCtcYz9TEDEDFqp
X-Google-Smtp-Source: AGHT+IGeiFS1GOGcoIdUUjDApU/YuZaoMkuYUwM6Jx2lGRm+KqKpEr1f8IvVIWXlcdlomgka5Xh4TC7dD0IyMwWpzRw=
X-Received: by 2002:a05:6214:19e7:b0:70d:bffa:21fe with SMTP id
 6a1803df08f44-70fac870629mr234997086d6.32.1756987222898; Thu, 04 Sep 2025
 05:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36zLfeAOau+KqBeXJxNxmmNCw5uHTaWRBiUUCQCGjj5HA@mail.gmail.com>
In-Reply-To: <CAAfyv36zLfeAOau+KqBeXJxNxmmNCw5uHTaWRBiUUCQCGjj5HA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Sep 2025 14:00:11 +0200
X-Gm-Features: Ac12FXy8W3dDQZ9YLB8zDVaIKM2CxQA_S4czLeIUeFz9DNuJ5T-Lf-Z5CXIMEy0
Message-ID: <CANNYZj-sOomDEBhJwTiROB15BPEr=t0XmTiWyYwBy0GU4GaEKw@mail.gmail.com>
Subject: Re: [yocto] using cargo from cmake
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Sep 2025 12:00:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65817

On Thu, 4 Sept 2025 at 13:49, Marek Belisko via lists.yoctoproject.org
<marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:
> I'm trying to compile UnifySDK using cmake as a build system. But in the =
cmakefiles they call explicitly cargo explicitly. I cannot include cargo + =
cmake together. Is there some existing package which uses the same combinat=
ion or what would be a proper way to handle such a situation.

Yes, librsvg uses cargo+meson.

Theoretically, 'inherit cargo_common cmake' should work. In practice,
you'll probably be the first to try it.

Alex

