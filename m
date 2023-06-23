Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B98EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 16:09:47 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.2440.1687536578493695207
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 09:09:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@amarulasolutions.com header.s=google header.b=BUxgGtHJ;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.167.50, mailfrom: michael@amarulasolutions.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4f955def3a5so1054899e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 09:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1687536576; x=1690128576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oh3fJP0lo2U8KQ6UxGyQqGP/KbrF1tOWSzyIKHlIpYk=;
        b=BUxgGtHJBFtqiQfuGuvU2eku3jsRGQGmgDUXpFeIf7wb7kGWTBXC/Ha2GiM6J5Ai5V
         J7WvuTe3pwvK2E4uwLjE6IrhrenV+xF2WjFfqGz2aJ3WzDllyufUuWDhax5CX+G0m97Q
         BMqYE52D0Gl8jo8w2jgai7ZcWFDN0NsODQHOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687536576; x=1690128576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oh3fJP0lo2U8KQ6UxGyQqGP/KbrF1tOWSzyIKHlIpYk=;
        b=Fh5dUn/rI65y/ZksYd264pPhIH7QKE8wYDH29umX6gKSJBeen1TvgU8wB0UQKIatsT
         WfxnIL0Mdu7RRjo6HgiA6ywVuvFToEKIfg7BX/L+lxL0dTzHUzdKQXMia5Ml5+ONteX+
         vmiTF2FgGY6Ff2ZH8Mv1qio0mfCp7lfWvkmmOMGShdjccEHQOYRSZuE3eYqp+VTVE5ek
         U7INfYLtR56BsUR+/6B9uI8SF9SwrZ++faEh/zPIllabnUJGtavfKuQZdGeudLV4kwau
         chrZoHLQdqPiu5FVg++YzV57VldvQffYMlo2DdvdKS7wwyTmORlcVkPGigvrKnK9+RCQ
         ADFw==
X-Gm-Message-State: AC+VfDxxZM40Ek2pXXiJ0Y8Tp0uDEBf8zt8Jt8iy57mlXgOYVRaAbn5b
	UrS6rUQNgDrbUraBtiP14LshOawKMubqAdVm/+EZOA==
X-Google-Smtp-Source: ACHHUZ7l8PfgZYliD8C0Mrk5cp8i1CMcj0UP7daDOCNrpaAVUIvVGYKsd/MaO5Ho/eDuzSuliiKiAnIvnv33thOwOXs=
X-Received: by 2002:a05:6512:110a:b0:4f6:2b25:194e with SMTP id
 l10-20020a056512110a00b004f62b25194emr13429852lfg.58.1687536576557; Fri, 23
 Jun 2023 09:09:36 -0700 (PDT)
MIME-Version: 1.0
References: <tEhD.1682021284572852771.sxZQ@lists.yoctoproject.org> <20366.1687536397589322732@lists.yoctoproject.org>
In-Reply-To: <20366.1687536397589322732@lists.yoctoproject.org>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 23 Jun 2023 18:09:25 +0200
Message-ID: <CAOf5uwnDKy=OQGBZqv8DVL-2fKKsO+VsoBFTQOovZZ73cnJQtg@mail.gmail.com>
Subject: Re: [yocto] Multiple wifi access points when using Connman
To: logan.grosz@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 16:09:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60418

Hi

You can blacklist the other interface

Michael

On Fri, Jun 23, 2023 at 6:06=E2=80=AFPM <logan.grosz@gmail.com> wrote:
>
> To whom it may concern,
>
> It appears some services are from the `wlan` interface while other are fr=
om the `p2p` interface of the same physical Wi-Fi module. The addresses of =
the devices are, `00:1f:7b:31:8f:32` and `02:1f:7b:b5:8f:32`, which result =
in the 00 vs 02 phenomenon I noticed.
>
> Thank you,
> Logan
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60417): https://lists.yoctoproject.org/g/yocto/messag=
e/60417
> Mute This Topic: https://lists.yoctoproject.org/mt/98397236/1862104
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [michael@amarul=
asolutions.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

