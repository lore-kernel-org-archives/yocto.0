Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 031B8C021AD
	for <webhook@archiver.kernel.org>; Sat, 14 Sep 2024 19:27:20 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
 by mx.groups.io with SMTP id smtpd.web11.101872.1726342033532255006
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Sep 2024 12:27:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iJp95Z7c;
 spf=pass (domain: gmail.com, ip: 209.85.161.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5da6865312eso1621577eaf.3
        for <yocto@lists.yoctoproject.org>; Sat, 14 Sep 2024 12:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726342032; x=1726946832; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H8+dlI5PG+IUIR/9D9MJdb+U+VZfv66/1cwfKqkO/84=;
        b=iJp95Z7cSe/y1MMjKd95iwbz+jUTknmem/RT/utX5FCtD5vRAP3BAgm1O1VKFsD7lA
         q8zrKLpZwquSR9cMXmYCYiZIQY9dsa9JzySOyjXYMMk7uefomBvi1smfYAIXSMsv9M5P
         7aGe9wkLaWBHsmil+gKwN/Gu5hTajaFk7VCJ9EvdbM3zrsKf3V6wrNtB3aF8cNiD9kqp
         gfIR/1XAcERzOUh/QUWIGlGpD6v189+tQLPPVYBS62uI5olGBxz1k2Q88HO/Q51eQnrx
         pJthOdma+qBXAHKOWUEsBTE0Zm3x/47dle3KhlC2lTkJexwZa895MkISXvINKMmls+uG
         nUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726342032; x=1726946832;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8+dlI5PG+IUIR/9D9MJdb+U+VZfv66/1cwfKqkO/84=;
        b=JV9USb2RtMOix6r82Rq7H6ZmynqOI80qU5aesbTrg8dFN/qcJppcNbR7UA2ytoMYeJ
         cdsXGScVPV8qJkY9J9PR2LqDRIvPmy8NMUzCwWlwA2PqD7i7bMgMM66p6rMNs8OTRhvn
         R7toFOHCobbeUnGq2r0xw1BTM6m4FOgb2PG03HDui7aem7e/luoRUmep8p4uvPIZmc3p
         PzVbS10MM0DCf7mYy/pWSJhlrF6C7DLdm0WnvXYjRJm/Qe5oDS9Eh7dbqt9Y0/nqBjia
         F9FY6ZdjrSCwYZ9NfpGoWGulKg3bhzAyIGC1VPahs8T0hdd6Bz8JVO+oCdaS6PfO+jnQ
         NZ+g==
X-Gm-Message-State: AOJu0Ywv/qpZ4vJ2udP8/1ERqqfRbMxm3S2bcU7wvOQAo2XWGPn8pQfZ
	y/+3j9PcIsuSFyF+JnmeG+/quk5CDTpLZLR5C5TwobjljWuxQvDxLR1GU/UrqnH5vK75HFOGbsP
	T/ptvg4hXsy0u5N2cHd74eulC5vgBd0ikQfw=
X-Google-Smtp-Source: AGHT+IEvDn7lwDKCNsRYGKOo1mjf/SD0BreN378KdvDbKCkvuGlBsCI8IdxU3q2vvAGaqszlMc6zF96uwJUFy77O0CY=
X-Received: by 2002:a05:6820:2294:b0:5e1:de92:6b51 with SMTP id
 006d021491bc7-5e2012bc63cmr5113655eaf.2.1726342032553; Sat, 14 Sep 2024
 12:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwkeGHLaV5xoq0PG_yOrX_B62QzXaaTGQP-BqLmUB-ytEA@mail.gmail.com>
In-Reply-To: <CAOf5uwkeGHLaV5xoq0PG_yOrX_B62QzXaaTGQP-BqLmUB-ytEA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 14 Sep 2024 12:26:46 -0700
Message-ID: <CAMKF1spHsz6Y5MxLvsiZMyLVAc2o_gWX7Wa2A2ZXHH-wG0ta7g@mail.gmail.com>
Subject: Re: [yocto] Jenkins warning-ng icon for yocto security report
To: yocto@lists.yoctoproject.org, michael@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Sep 2024 19:27:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63837

On Sat, Sep 14, 2024 at 11:41=E2=80=AFAM Michael Nazzareno Trimarchi via
lists.yoctoproject.org
<michael=3Damarulasolutions.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
> I have sent the patches to be included in warning-ng to support yocto
> security scanning result and looking for some icon representing the
> can result
>
> https://fontawesome.com/icons/categories/security?f=3Dclassic&s=3Dsolid
> In the free section. Can anyone suggest one?
>
> More info here
> https://github.com/jenkinsci/warnings-ng-plugin/pull/1824#discussion_r175=
9750853
>
> The analytic model was already merged but now I would like to have the
> proper icon there

maybe something like below would be helpful
https://www.yoctoproject.org/wp-content/uploads/sites/32/2023/09/YoctoProje=
ct_Logo_RGB_White_small.svg

>
> Michael
>
>
> --
> Michael Nazzareno Trimarchi
> Co-Founder & Chief Executive Officer
> M. +39 347 913 2170
> michael@amarulasolutions.com
> __________________________________
>
> Amarula Solutions BV
> Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> T. +31 (0)85 111 9172
> info@amarulasolutions.com
> www.amarulasolutions.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63836): https://lists.yoctoproject.org/g/yocto/messag=
e/63836
> Mute This Topic: https://lists.yoctoproject.org/mt/108453353/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

