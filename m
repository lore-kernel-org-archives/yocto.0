Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D2BCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 10:09:55 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.278361.1697623794018870222
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 03:09:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jlUUqiAO;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2c50cf61f6dso70020361fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 03:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697623792; x=1698228592; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=erj4JofV8TfOXOBd3xFsGHc2vSiCvAYIa/oFKqgH2oc=;
        b=jlUUqiAO+IFdajj7Ayb0JjRNREdMT1To16By7hlFfmiq7Hfs3QWQPvjgSWnLhBACby
         aATfV6YjwYoGsWknJ4WmXwNJhjWmUpK+Y39n9rozcNvZVbJvhAUpkVzq6ha6823RksXa
         YY7nRiHAhSCvRNRXl0/1V0Bm3uj5k3UPLAVMm3i5vcEaanNejxsUwjSiQAI/xSJQCV0I
         aDj+rmP+0KDrrsBbj61385QY6fDACEOU9ssWbZ4S+Hfxwx11S4Hz/PUOTQw2XNJm3dHa
         CJ8QFLGmBr+/7YnYMQtbcTUuFNAcfRfoMtBIZ7DmVzqCf9APka/FSWF+j5f5X8IdznAK
         A0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697623792; x=1698228592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=erj4JofV8TfOXOBd3xFsGHc2vSiCvAYIa/oFKqgH2oc=;
        b=KjTFvgNZHrq3B5FDFkUFMr2U2y497B+vQVRP+N6IluCXZY26scII25vq/eWTrRT7sv
         CqNbUbFWgnLC2gyNfwD1JQeT1LQ3zIm5jL2ujhjR+OshJ/UeYdZtMsWiEEGXMGFtU4+V
         FKkrACJ/lHwuRs1jNbk5zolRr5zDKDlzU/IOfGQ/zNlNzL55Jsgmv6YsKbix/kmDRuuv
         DuuZeDI3zUpT76H2IdQcjMaqZfmWq4P8NdtKKxrw2baY2LinPWsaDT3gxVo+joSwYCR6
         ZdZXwaEQlYMsx9dpwXS3oU22gjPVnZeMy7Ru2E0D1Wdl3ThmUWGu48IrO7VZzilckmbZ
         fNaA==
X-Gm-Message-State: AOJu0YxIPiQCLkzI3f9Bi9I3mP+/2olvPFJ/ODVHiRlN46bRgpuoFG12
	Ozdpu1wJYCVAv9ZLGSLGna9E7PUGmSMPoh2ub3g=
X-Google-Smtp-Source: AGHT+IEoJDrQU5KwO4imgR09w9XkwGn/h2ZR4j03uN3jQLgtQJ2xmtOcyt9y2sgigbLuZY0ET7iGmaf5kSyD6/Wspe4=
X-Received: by 2002:a05:651c:10a2:b0:2be:3ca8:bdc9 with SMTP id
 k2-20020a05651c10a200b002be3ca8bdc9mr3307337ljn.49.1697623791837; Wed, 18 Oct
 2023 03:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
 <30180.1697619630482083755@lists.yoctoproject.org> <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
 <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
In-Reply-To: <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Oct 2023 12:09:40 +0200
Message-ID: <CANNYZj_scVXe2iPwTcrt-xDy2rN9ObJFo5qJmQG0ix+=J7R61w@mail.gmail.com>
Subject: Re: [yocto] Remove packagegroup from image recipes
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: Ivan Stojanovic <ivastojanovic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 10:09:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61393

On Wed, 18 Oct 2023 at 11:57, Enrico J=C3=B6rns <ejo@pengutronix.de> wrote:
> it's not really that it's 'forced' into all image. The .bbappend just say=
s:
>
> > require ${@bb.utils.contains('DISTRO_FEATURES', 'rauc', '${BPN}_rauc.in=
c', '', d)}
> The assumption was that if you have 'rauc' in you DISTRO_FEATURES, you wa=
nt to install it.
> And this was just the best way I saw to automatically end up in base imag=
es for this case while
> ensuring that we do not modify the base packagegroup unconditionally.

You should provide a packagegroup-rauc recipe, a sample rauc-image
recipe (or set of recipes) that uses that packagegroup, and leave it
at that. Users of meta-rauc will figure out the rest, particularly
when and how they want to install rauc. You've just seen a specific
case where it is *not* wanted in some images.

Forcing your way into base packagegroups from oe-core via bbappends is
really not the right way to go about things.

Alex

