Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D09FC43334
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 09:18:22 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web09.4146.1657099092162438876
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 02:18:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jyjfqYzB;
 spf=pass (domain: gmail.com, ip: 209.85.208.171,
 mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id c15so17720668ljr.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 02:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1/t80P0l7v3oEeiLWxct5aOcs39OFFZgUN89vHLKsNQ=;
        b=jyjfqYzBXiERdgpK2cwpK9NyEAk4j7UCxhgazvUGBKU5FkhjgdtYcHMI5G2FV81JJ4
         W98aCNfZV00Y8niI3gq/iYxeg/KvBXaFmXR0YlIA2+/YNgXNaDRxzI47mtAX30drPr1h
         u2zTznwf0XzrdVnwal2UZOubENwBifW1JErs74w0bE95e6qCl8zwVBNC9GHmPTIQrauG
         u05IL7jTqKXplGRoJfkjZOEm2TAk7Ieack4ZpCiO59eHFtHaDVJMhUB74khpNL+8Lucb
         tjKq3uWP2TRAIJ7KTS7VERU9NDDfAupg8+cLMpd5zq3GTcT9/9ps+X7K8MXS5LoCk+pf
         64Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1/t80P0l7v3oEeiLWxct5aOcs39OFFZgUN89vHLKsNQ=;
        b=DOGJIeP6OptUtRhJFm7nM8M7+kyzGsYyFPQxeqLdTZYbu8/eOuc+DgAaat/SZG8QCU
         i6h/n666MQ25WZgQf7N9srZHb2BSpIyTnTN60WjKFkpl8CfPx1ykeg3wCOBQlDIzqFUp
         aqzbd/JFfwPj8bnggCSG4q0V34K8hL9QMWQ9tW1bUNqzq7fDcrAEh4N3qG2SXIblR19i
         euuZsIPTfny/r/FEEgtVOrojgSLKDwY0RwpAbkK57IA625hqqMzNzNxZqu6eDr9voWIM
         0tizn8fdSRI/XHhFD7j0uQGwnoC0j4qJrFa9sYaavQkX84djn5dv3eSkh6+2tv4S1TE8
         mEkw==
X-Gm-Message-State: AJIora96QWIuV7hxwXEEIpG9RJW8k/tl9gBQD+2wRHhgFd/x8yCYEBay
	s34/+yC8Uv/Gb/4H+kpjsRjgs6H2ziNn0VOKCS4=
X-Google-Smtp-Source: 
 AGRyM1u/5gx5Yf99pk8sCPBYEw5/RN9X91Ph8REaJxJBFQWI7LvRrvoXtltooskOtQ9jVcLz3MWHxRn22JiE3ygtcqA=
X-Received: by 2002:a2e:889a:0:b0:25a:ca71:823e with SMTP id
 k26-20020a2e889a000000b0025aca71823emr21889186lji.11.1657099089936; Wed, 06
 Jul 2022 02:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <DRD0.1657024299174009146.HGxi@lists.yoctoproject.org>
In-Reply-To: <DRD0.1657024299174009146.HGxi@lists.yoctoproject.org>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 6 Jul 2022 11:17:58 +0200
Message-ID: 
 <CAApg2=Sb=ujr7vs1YWkcq4MLj1BQ9TnQcv+uouQUtoQVBxxqOg@mail.gmail.com>
Subject: Re: [yocto] cve check report package version mismatch #yocto
To: gauravsuman007@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 09:18:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57460

On Tue, Jul 5, 2022 at 2:31 PM <gauravsuman007@gmail.com> wrote:
>
> I used the cve check class by including it in the local.conf and then ran=
 the bitbake build process for my image. I got a log of all the detected CV=
Es in the packages used in the build. However, on closer inspection, I noti=
ced that the packages used in the build are already higher version than whe=
n the CVE was patched. Here is an example:
>
> LAYER: meta
> PACKAGE NAME: libksba
> PACKAGE VERSION: 1.6.0
> CVE: CVE-2016-4355
> CVE STATUS: Patched

Hello Gaurav,
The CVE STATUS "Patched" means that there was an issue in the past,
but it is either fixed or otherwise mitigated. Open issues are marked
as "Unpatched". If you'd like to see only Unpatched issues in the
report, please use CVE_CHECK_REPORT_PATCHED =3D "0" in your local.conf
or other place you have your OE configuration from.

Kind regards,
Marta

