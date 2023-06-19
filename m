Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40DEEB64DA
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 10:20:42 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.4425.1687170034482991507
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 03:20:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=PhWjyPJ3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3112902f785so1588476f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 03:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687170033; x=1689762033;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GHPxCNWG58pD/A3SYMQUNDS/1UkS5BCjUluP1DKEx0Y=;
        b=PhWjyPJ33xLkrQaI6Xyvy9bCYti1jqrAufUx9hpZ22GVFCrndbC4jXBkYDWR6KUClb
         dRK+GdT3d1GyU10STJuh2LLabZNEv2wNMlSVhjO5rcubqlvNsMbtwtBnirDPbjd5G1p/
         uutDIokmx0dHpIv+SAQZzQ3zcL7xLQGZV8spg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687170033; x=1689762033;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GHPxCNWG58pD/A3SYMQUNDS/1UkS5BCjUluP1DKEx0Y=;
        b=STKl2ZoZrw7fAb/va0s/ZPH62A2CvfSHY5xio2Q49jvjTPUj2O1FMWnLT4gEpNmXiZ
         2QBDPdvIle6rye0pBZflz9Ux5KQoObnIKK3kR5V4Qaowauo6qsB/zEFEA+1SAl+HihR4
         piv1c5dOblU4G0b2+9E6V6PK6mbwyxH+27nviD4ER8fhLHI5ikcvgmIAHKZc513XcCPZ
         Mb7UDY30M7Z+XhIn4pgLb2EJwTmtcepmRh9iISnKUchYb+kIA7w0HY6fBpXxZKGI0LWm
         ajpgaB1Y/29kCQqOUWQ+X29vi9EH2NXkDos6ABAB2N+G/EVm782jJGv0VG0jI/GsvjT7
         aEng==
X-Gm-Message-State: AC+VfDwkzKKC/1Qw620gSVwztv+t+LYPDbWVTdYCllePvr7rFKVAS4GM
	LYbx6rUIDJdfIri9zVBcJ9VPsQ==
X-Google-Smtp-Source: ACHHUZ6laXVi3N3B613ZLtQrwWorlSTS/4gQJ6b6Mk5Drqjf4xAwaqh5a53XTd0lvnpgRmLceMS/eQ==
X-Received: by 2002:a5d:5005:0:b0:30f:cb3a:2c46 with SMTP id e5-20020a5d5005000000b0030fcb3a2c46mr12638633wrt.20.1687170032891;
        Mon, 19 Jun 2023 03:20:32 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a584:d6f1:d866:e41? ([2001:8b0:aba:5f3c:a584:d6f1:d866:e41])
        by smtp.gmail.com with ESMTPSA id l15-20020a7bc44f000000b003f90846d8a7sm6290480wmi.6.2023.06.19.03.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 03:20:32 -0700 (PDT)
Message-ID: <ad0022f44dab4aa6bd077c1541f76bd2761d3ce2.camel@linuxfoundation.org>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <Ross.Burton@arm.com>, "alex.kiernan@gmail.com"
	 <alex.kiernan@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Michael Opdenacker
	 <michael.opdenacker@bootlin.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 19 Jun 2023 11:20:31 +0100
In-Reply-To: <94252681-15F0-4C7C-AB6A-A4476A2C2A8D@arm.com>
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
	 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
	 <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
	 <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
	 <CAO5Uq5RYQ47LGrfvguMTKOhjvWxXe4HXSov_8knPieVxT4Rvaw@mail.gmail.com>
	 <94252681-15F0-4C7C-AB6A-A4476A2C2A8D@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 10:20:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60346

On Mon, 2023-06-19 at 09:53 +0000, Ross Burton wrote:
> On 19 Jun 2023, at 10:48, Alex Kiernan via lists.yoctoproject.org <alex.k=
iernan=3Dgmail.com@lists.yoctoproject.org> wrote:
> > FWIW we swapped out our x86_64 build machines for Aarch64 build
> > machines (both 20.04) in AWS with pretty much zero pain - it went way
> > better than I was expecting. That said we don't run ptests, or qemu,
> > or =E2=80=A6
>=20
> Sure, our meta-arm CI is 90% running on graviton3, this isn=E2=80=99t an =
=E2=80=9Carm
> is inherently unstable=E2=80=9D thing but rather that some of the current
> physical arm workers were unstable: reporting core temperatures of
> several hundred degrees celsius and shutting down, etc. Halstead
> resolved the problems in the end but it wasn=E2=80=99t trivial.
>=20
> The worker running 1804 is the oldest and by far the slowest, but
> it=E2=80=99s also been - so far - the most reliable.

To be clear I'm not saying there is any problem in general with ARM
machines! We just know that particular hardware, we had a lot of issues
when we first set it up. Since we got the config right it has behaved a
lot more reliably than the others. Changing the OS introduces risk and
my question was whether we wanted to rush into that, particularly as it
risks the machine being written off if things go badly, I was already
under pressure about that as it is getting old. Things have got better
since and nobody is interested on support on that particular older
system.

Cheers,

Richard





