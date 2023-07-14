Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26CFBEB64DC
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 19:29:17 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.4262.1689362947863276680
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jul 2023 12:29:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=DmZf1i0E;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2b6f52e1c5cso35221561fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 12:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689362946; x=1691954946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V+6hVhgauLTsrL2FI8acW35iAay+VAGnst94UMKDC3E=;
        b=DmZf1i0ExUJBbe7oaSUTrf5LwQOQ4F4VF+7zPyDVKJsjBra+6S/Mu4M7+eoCtETcmZ
         0w65EGeU89irlMl1nx4n8iH8r433gn98my3TaVtdqd19aCK343Dv7W8SlT12msUSNpvI
         BgcPNXVhvSJzBJD2Zkfqi8QsoizXMYKG9vCIWURbscnZGSXUwKEu/oWkWLkEa+dhiMB5
         JneeFdftV8hYTTLxH7B2sYRWmW0zUm79/og3Q3rObN9SNegimvPgHcs2sALye55qtRNn
         hrdk8wfz1sn3GrIxtZM+Zsgy25Ko8b1m8Xi5CKyhfy5V3JMN9wyxA8fgF2jqJNgzwSbe
         OuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689362946; x=1691954946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+6hVhgauLTsrL2FI8acW35iAay+VAGnst94UMKDC3E=;
        b=YTqWPwYUrwqZig/ylQD0oKI+Et6EaYgq5uCoCBseb0KED1Bn09sM+vMBwmPoGOddVC
         zb1MPOMWs+WR9tZu87H+umFiwM/XENtYQ3Okofg9NV9/4HymEpkIvshFpWJ1Fd+UnGVg
         t0TU/hTTxEWArCBMHzpMo0JXSbm6kAPKa5Mc13iE03fkPWpHVWJLiPOzaEfd5HOo0WTw
         8nAZz7al3MnC5UNpmME7CGvY0MnSrT/w+Zc2WBqg7itFXon4Q7uShU9XJrv2QzU+Le2g
         a+s4nOPMM1u+BlrLU2g/o+1/1mHO63nESE/3TJM03V0zcC1s331WnYmnLIlXCIQc8F5v
         fjRQ==
X-Gm-Message-State: ABy/qLY2E4n3PbaMcAMSPJcKIx/xJ8mI8L2DYGeLdjKHR2MFlQSNmhea
	tS0avCZHANa8HuPZ0FFHUjZZDR4M7+bphjvwFIc=
X-Google-Smtp-Source: APBJJlF+QiFjhXWJTRytZ9YcWv/DNYfoQa0wWCTFeX0yYwKYpDTB1M/TEupK01IdDXgL5YUFnfFWt88Dbzdsl6mAXA8=
X-Received: by 2002:a05:651c:8a:b0:2b4:6c76:332f with SMTP id
 10-20020a05651c008a00b002b46c76332fmr5349699ljq.9.1689362945443; Fri, 14 Jul
 2023 12:29:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
In-Reply-To: <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Jul 2023 21:28:59 +0200
Message-ID: <CANNYZj-9eUXBpK3YV4ve=DFJS5Ej9g9PptAL94c83QR5BhhnPg@mail.gmail.com>
Subject: Re: [yocto] How does SOURCEFORGE_MIRROR work?
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 19:29:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60581

You perhaps could check log.do_fetch to see precisely where the file
is being downloaded from.

Alex

On Fri, 14 Jul 2023 at 21:24, Tom Isaacson <tom.isaacson@teknique.com> wrote:
>
> I'm looking at the Kirkstone recipe for gsoap
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/gsoap/gsoap_2.8.106.bb?h=kirkstone
> and it downloads from:
> SRC_URI = "${SOURCEFORGE_MIRROR}/${BPN}2/${BPN}_${PV}.zip
>
> SOURCEFORGE_MIRROR is defined in poky/meta/conf/bitbake.conf:
> SOURCEFORGE_MIRROR = "https://downloads.sourceforge.net"
> BPN = "gsoap"
> so the URL is:
> https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
>
> But this doesn't exist:
> $ wget https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
> --2023-07-15 07:23:40--
> https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
> Resolving downloads.sourceforge.net (downloads.sourceforge.net)...
> 204.68.111.105
> Connecting to downloads.sourceforge.net
> (downloads.sourceforge.net)|204.68.111.105|:443... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2023-07-15 07:23:40 ERROR 404: Not Found.
>
> So where is the build getting the file? Does SOURCEFORGE_MIRROR fall
> back to a different location?
>
> --
> Tom Isaacson
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60580): https://lists.yoctoproject.org/g/yocto/message/60580
> Mute This Topic: https://lists.yoctoproject.org/mt/100148132/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

