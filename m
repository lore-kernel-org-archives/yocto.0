Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8EF6CCD199
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 05:18:57 +0000 (UTC)
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
 by mx.groups.io with SMTP id smtpd.web10.8948.1760678336502323023
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Oct 2025 22:18:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fqvXPEnW;
 spf=pass (domain: gmail.com, ip: 74.125.224.46, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-6353e91a04aso1548481d50.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 Oct 2025 22:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760678335; x=1761283135; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sBpRN3PoNR1Y0En3wgDFV1Il3XVSjl8dybFj07Oe/cE=;
        b=fqvXPEnWjZ9WCHIhDyqhhs2oC0Rce3kgWfEi2d3UPsOLyrZBlkjrJYUQZ6mb9TAbGH
         gxVGIaXdU7n3ETwXGOvO1dYK0IOfkg9THDtxA/spn9n3K+WsodhdeCA4F+/UQtGZSHvr
         fth3crzvs+Cvt5jehjXSOWAY4cqxrUDcbVpS+8uXRRTA1E4XmtqqsGtpPmjqxPT9rIJE
         cqd18GaqxvZ2i2mTG8EV/Xmpwmktrry/4+qqb+wnWOsWgsFxazYix3psbksD49QTKtTe
         5T6f9LjyK8DDRBVIcVjgdTgKe1n1/FBPXGBlAIGw55ha17QLCWbjKsofsmKsnAIBLPUN
         o8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760678335; x=1761283135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sBpRN3PoNR1Y0En3wgDFV1Il3XVSjl8dybFj07Oe/cE=;
        b=NyXVE+HLeGv0LL1TR/GLEmq5y0z8FN8KKg39BBpvuntV7t2u3IP3F/T0pRAhn3L4EU
         CWvjiJgRGhLhV6Pkq1N7PabcAHAYoy2EVZuU/7DGm0TlFLa1hCQi3u6RXlpYnW7OoHUR
         ECy3vMg6hDCPOTuNQAIaDhTJCHYjxd2sj5yPZiwuxTveIVUgvHnWdIbF8OvpWiy5T9Qj
         YzDxwfb8AtEl1paZU+iJXib8VFu0DFrIXq1xnNyl0AfbamhFIKnqNbv1yq6+8Essey6k
         BI5yQ5bdX4uAkSRrX8/LNb5rYInaHaf9/PdYXnCyrlRAOfOf2mp+RpFGz+AfN60wVqtb
         AjrQ==
X-Gm-Message-State: AOJu0Yx6cTFmKD0F2Da4euZKSSYgzpqjq92PKjvApyENxVxuaUV4SU7s
	4fDecq4VWeEBE8U6kJ+n2uFG3qoVCcQVhLZIOt8ROidi1+0F7K9IDgOAKOF3B0P/6yvDKJcLeg9
	tsWAw5GE5Hf5DMVdOlkZURSHhx2ZdITM=
X-Gm-Gg: ASbGncvuJx4kXWM88Jl6000R1y2fXBH2gsqVO5qRpQ9ol9RqLl0txD1+XHJq43YqOvJ
	dkyztrrZoqFv/atAlKQhVIJw8TapgcDIrKJw9Je6L32zTqFfxvkow45XrqqK+J2oDxZ4Jf2+OUH
	QOte7iS9tySRi5kiYk+u4vYseBQCIW8jhnVHjo9b+YDOJWEhb+QbrxbqKDMlYk4MuBt3lHugMQ2
	3X269s1hSjoUhkSUYZn5DLZpIJDgQqaAwsTO4kpPe8TUOruVD1RV4Z0y9VYnIuzhF3Fu+2tbpy5
	i4dVsz7Y0s8vNjEpF8YDemRuQWOPiBIUkpgbo8FnAJxQDs7Fle5wFI69fYaXOsUHXej7Z44=
X-Google-Smtp-Source: AGHT+IFsJhvP2SouTX6arFLOsEpGLGJipDOut1xOwfdSbGjhFq0yQcVMl0gXMBq0byT5JGILs3QMi6koegUdQE0YuKI=
X-Received: by 2002:a05:690c:f89:b0:783:7143:d82a with SMTP id
 00721157ae682-7837143e0f2mr28717497b3.21.1760678335478; Thu, 16 Oct 2025
 22:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1spph3_i8074mkFHz7GGn9gR7qprxexRCCxvzigvBz9Ncw@mail.gmail.com>
 <26514.1760670716178104579@lists.yoctoproject.org>
In-Reply-To: <26514.1760670716178104579@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Oct 2025 22:18:29 -0700
X-Gm-Features: AS18NWBwDvisyWdmQvuUjDmjBAlcGqcc372bgcun_Sg-Bx7EuSwRF5WoMjv4zDY
Message-ID: <CAMKF1sr=5mwdmpN039EPpJzwgO=RpjpMYZqNHKFwaL8-35YHXw@mail.gmail.com>
Subject: Re: [yocto] Building u-boot with clang
To: anirudh@astranis.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 05:18:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65944

On Thu, Oct 16, 2025 at 8:11=E2=80=AFPM Anirudh Mathukumilli via
Lists.Yoctoproject.Org <anirudh=3Dastranis.com@lists.yoctoproject.org>
wrote:
>
> Oh cool, I might be able to use that for u-boot
>
> Eventually though I am going to need to build the fully poky distribution=
, is there anyway to generalize the hack to use an older version of GCC wit=
h a modern yocto release (I tried setting GCCVERSION in my local.conf but t=
hat did not seem to do much).

Simple answer is no.

