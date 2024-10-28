Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93234D1359C
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 12:05:40 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.49736.1730116504302901953
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Oct 2024 04:55:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YaSnsWT7;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2e2fb304e7dso3407907a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 04:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730116503; x=1730721303; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T0mCvyFn+E6w7Lwqssd7sPCxazxvS/8+MWE4Te5DmUw=;
        b=YaSnsWT7sep6uEriDbKgU0va+L8CNPq/ZIji7MdhGx26xfTw0dUzrM8HESLAENTKvs
         yTZYnNXgmYE+mbG8WGkjg+UI/VtCG5ganVh3ibduqHHomabATX6fI92nNNZImoMHER3O
         7evCh02pRz0qM79VS//4GVXqAI0RtCtaMN/I5HaeI7yY3eug5cLbIO2E3V00RT3G66OG
         b1Q13CGTVAl4gWh9OtSYYbO9yKuhdKYycNA8CmLXvgMJXtK4URAntrST1xzIBqclAa80
         wFfKn8LWmzxYdbiOdIeTTlq7jSkhI9mCTgcEfgi0JHZxzT+MJUJsyAxvnyglety+s/jP
         lzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730116503; x=1730721303;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T0mCvyFn+E6w7Lwqssd7sPCxazxvS/8+MWE4Te5DmUw=;
        b=S6WCcaNJo1VhnYTF7saP+61i1WGllPoVEuDdumLk/9Q3jX1Z5QFhRxbIF3CdfGLjJM
         rg47HLa6c2g/xTQymeyK0fQC+uYt9RptOJtrqDDzvq1g37ryfngRepTSbuY2TNXntImN
         c5W+aeklpX8miQU1f8HKSVCEleHf17eipEbfhM+gc0GotIwkgDmScPoCP5KXVaJcwNWY
         /fqiu6iJDW3kx7kNnnW6/iET5t2mt92+iIoYDyU6zFQqJeZ4VXktTGe1hRvvtQdamo50
         JFCgMPVNju43Fi3vddkyZpqEz5hJSnbj7Fq8BNHtfzu9H0hjB1x6LbKf8BGrRR0X2pND
         DcXA==
X-Gm-Message-State: AOJu0YyP7RDNYAApm5J4+PIe+dfnTZhcnraT6DgvVrBinDsucgU2G2XH
	9GbqlIvKjlve4W9lvEYycndOlGW38hM7JIaO4Z1t83Ob5mkGSMi6TBb+M46U2NDmS4DVhDloftC
	aE/j8f1RIrXwKMkE9N7TFrF6EpOFtnwlR
X-Google-Smtp-Source: AGHT+IFMgeYCfzAgTZ6ov+qeRrFcpxadl/OjYG1RoGqP9ePlvrZKp5v1BFnsHwF7exOqgOjhKI8J1QUe0XDHWuuqFDY=
X-Received: by 2002:a17:90b:3654:b0:2e0:7b2b:f76 with SMTP id
 98e67ed59e1d1-2e8f1072f43mr9343554a91.19.1730116503264; Mon, 28 Oct 2024
 04:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <0M3K.1730094431599446009.TJNU@lists.yoctoproject.org>
In-Reply-To: <0M3K.1730094431599446009.TJNU@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 28 Oct 2024 12:54:50 +0100
Message-ID: <CAGAf8Lxw_sX2=vRWdWXfsz3J_DO5ooWBRVMxnCi_P67K4nozsA@mail.gmail.com>
Subject: Re: [yocto] What does LTS really mean when it comes to recipe versions and API breaking changes
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 12:05:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64154

Interesting questions... Yes, it depends which kernel is used under
YOCTO scarthgap... NOT only!

I would suggest the LTS kernel. Which does NOT ensure the smooth
integration in the scarthgap.

But using the long term kernel (backporting the upstream features)
greatly reduces the risk of breaking the scarthgap build. 6.11 or
6.12, one of them will be the LTS.

In my personal view, there is (and could not be) the 100% assurance of
what you are asking about.

Each new version of the kernel and sgarthgap releases MUST be again
tested, although I assume YOCTO test engineers will test new scarthgap
releases with long term kernels (which versions???) accordingly.

Zee
_______

On Mon, Oct 28, 2024 at 6:47=E2=80=AFAM Aleksandar Nikolic via
lists.yoctoproject.org
<aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Greetings,
>
> when it comes to recipe versions and breaking changes, what can one expec=
t from a Yocto LTS version? Does it mean (1) recipe versions are upgraded i=
n such a way they don't cause API breaking changes, e.g. if my program buil=
ds under Scarthgap now it will also build till April 2028 (Scarthgap EOL) o=
r (2) Yocto really can't ensure (1) and LTS means that only the recipe will=
 remain compatible but not what it builds. I'm assuming it's (2), but would=
 like to have a feedback.
>
> Cheers,
> Aleksandar
>
>=20
>

