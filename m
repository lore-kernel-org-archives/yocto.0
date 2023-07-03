Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D45FC001B0
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 17:22:43 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web10.39440.1688404958041862105
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 10:22:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=o5NX6D3Q;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-78363cc070aso238679939f.1
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 10:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688404957; x=1690996957;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FJMYWJ3GXi0UaqbHlhkofTx5IPYh9rMOiBYD0rN/OwA=;
        b=o5NX6D3Q+o4iRej8ZjvDVIHv4tuzXL6509ZnHVn0o7WNUMTIPStTzFwf7mNGVqI8Cf
         b3ZDY8LEqiLqofk4GZ/xiWMURWYAJRzOGS08TOvtD9uZMGux5HAoilpuoTInEwrJFEhm
         9r5RmelogVyv3RqzHbbQnekJFwcqRF8sohZm+l+HA08frYbPOHqni/f7UPzXtFI1FbY2
         9e2xHa8RLkgcdGM6QcP8UWp/wzpLMT2MEIZDeXy8xKkCBf7ulusPFIjYxIEdc8+OkTSq
         iMAWhWCwnFJL0ba1hGU/rvf/usocGu87McnYraWCXN0pjhCRteL/rpO5gZxIBR3sJqmK
         /Fkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688404957; x=1690996957;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FJMYWJ3GXi0UaqbHlhkofTx5IPYh9rMOiBYD0rN/OwA=;
        b=X6wMXk9phJZyFxGiiWboP1BqOATe650WpgNtfFyiU/92XQdmJi5N5p0apZUla+48YD
         e1iflcYHdISN8TnRFgWkJ+lIZxFpdf8177tzJcGvHlEWveqJLto2fNrSJV80yUrlh8pP
         AGUz6BbDcTm/ZOBOrHkVie+CWin5tbKtUrxmcF0cHLmsDlljkF486Ywp4KAA2Og3JEht
         AtYnXFW2yGfQBLTp+Y8e6CA8GPKYeepv7AfuI1qFdsORsfnLnjkWKqJqjiNZ51DRmsjD
         VjyaEog4qRZehwL1XOzPNvMb4SFKXYShtzAkyf2pPlKTwlVT3fPjrYEMiZFOqi+al4ub
         bRGQ==
X-Gm-Message-State: AC+VfDyKDT4AZX1afw/99+rBhc8bMQCqqmppAiPKIofNuytXbBdnxOYN
	XG6uOfwVGzeveEvDCbl96BOFq0hjmJuxxvZPW+4=
X-Google-Smtp-Source: ACHHUZ55+/nu+xzrLJYow11Qtf2nzPRMA8RE3r8PAoC5NKCQIr+QlzV34iAMqpxh/c/Fqk5QhFGgqwTWNdh7O45Nw7c=
X-Received: by 2002:a5d:950d:0:b0:780:c38d:5397 with SMTP id
 d13-20020a5d950d000000b00780c38d5397mr11484421iom.1.1688404957253; Mon, 03
 Jul 2023 10:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
 <TMR6XR.EE45UBD6649W1@t-online.de> <CADkTA4MOWSbCOWtbzKhJ=X97u6GvQiRbBBBLyvK1pg4HjDv5Rw@mail.gmail.com>
 <5G38XR.TXXNOJQ8IM5Q@t-online.de> <BN7PR14MB2420E244B854E63C1E6A49F38529A@BN7PR14MB2420.namprd14.prod.outlook.com>
In-Reply-To: <BN7PR14MB2420E244B854E63C1E6A49F38529A@BN7PR14MB2420.namprd14.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 3 Jul 2023 13:22:26 -0400
Message-ID: <CADkTA4M9dhXdbJ76DU6eKNbrmaCHZNANmhYe6Er_1fmk1ih8xA@mail.gmail.com>
Subject: Re: [yocto] Building Tailscale with Yocto #golang
To: Janne Kiiskila <janne.kiiskila@izumanetworks.com>
Cc: "f_l_k@t-online.de" <f_l_k@t-online.de>, "przemek.recha@gmail.com" <przemek.recha@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 17:22:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60505

On Mon, Jul 3, 2023 at 10:05=E2=80=AFAM Janne Kiiskila
<janne.kiiskila@izumanetworks.com> wrote:
>
> Hei,
>
>
>
> Golang does have the required features to support this, but it is more of=
 a challenge to convince the repo owners to start using this.
>
> You can download all of the dependencies in golang with go mod vendor and=
 then store the vendor-folder to the repo as well.
>
> But, the repo will get a lot larger that way. But, that fulfills the Yoct=
o demands as far as I know.
>

Yes, again, if you read the mailing list discussions on this in the
past, we are well aware of what golang does (and doesn't do) and the
options to fully integrate into the core capabilities via a dedicated
fetcher.

But no one has stepped up to implement a fully integrated solution, so
we have proposals only as this point.

I've gone a different way with meta-virtualization and am using large
SRC_URIs with the dependencies fetched to allow full integration with
the fetcher, and still build reproducible go binaries.

Bruce

>
>
> Best Regards,
>
>
>
>
>
> Janne Kiiskil=C3=A4
>
>
>
>
>
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Markus Volk via lists.yoctoproject.org
> Sent: maanantai 3. hein=C3=A4kuuta 2023 16.43
> To: Bruce Ashfield <bruce.ashfield@gmail.com>
> Cc: przemek.recha@gmail.com; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Building Tailscale with Yocto #golang
>
>
>
> On Mon, Jul 3 2023 at 09:07:11 AM -0400, Bruce Ashfield <bruce.ashfield@g=
mail.com> wrote:
>
> We really shouldn't suggest the above to a developer without also the exp=
lanation as to why network access is disabled by default in tasks such as c=
ompile.
>
>
>
> You are of course right with your objections. However, this is the only w=
ay I know of to get around this problem. Reproducibility is not a must have=
 requirement for me, but I use some gtk go programs and would love to have =
a way to build at least gotk3 shared, since it takes quite a long time and =
has to be rebuilt for each program.
>
> I had experimented with this some time ago, but it looked to me like ther=
e was no easy solution to this problem. This is somehow quite a conflict be=
tween different concepts.



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

