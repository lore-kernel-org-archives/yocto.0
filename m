Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 066EAECAAD3
	for <webhook@archiver.kernel.org>; Wed,  7 Sep 2022 10:05:14 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web12.5926.1662545106953358673
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 03:05:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ceYNi6bG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id bz13so16132583wrb.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=cHZJN2uEx9dOGP6OJYIdhDYD7tdVnRA79n+GbZMFHSI=;
        b=ceYNi6bGvf5Ck19UsHekpHvrXz9ct16fa4pQZrD/wpfYsBVWIPULQ9/rfbcEgTg8d7
         ZmSlYmciO5WbLI6/a3qk+TvJAzPjHDRY7U+PfwpKmcoHuJKrNAlnZGXopKAHny3674/P
         E024FK3VQ0hnWVhf9suxrXdG5Fm6OOFm5jb1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=cHZJN2uEx9dOGP6OJYIdhDYD7tdVnRA79n+GbZMFHSI=;
        b=52l7V42+rc8FkJbY4au7VJF4UEh9HD8DOFDQCSIVBKKrwrJaZ8NxzUBKxHPB8SKSQS
         Zg8qsClttE8aAUrvTkL5R50nvCBreRi1LnaBV93WFL/Kom3sqjPXdzKBHhUwz6ZXE5Lf
         Q+YToXnwpQh8yKkxg4i7j2YCWIe+W87VNwDHotH6j8kTu5OW4O5+GQy5Ar6M8w8CMelI
         rTPHovUaUOtAQzWvYAjg7g1H9TL0k1gGcUZtrSrrxGJj6tHiuoiGEuojYGipLEva1+zA
         mwAunI+CoV6a3eynlJXzPjemV7CZ3s0vL3UgT6vQVygoqs6QOvcAKmukYp7FCrMW6iSd
         ZFGQ==
X-Gm-Message-State: ACgBeo02xeBmST8LoKS9rbJc6xK1Lc6JsZ6203kEI8ROD89zw6l///x0
	GdOxw/+lEwckvkFYnnDTGDM0sg==
X-Google-Smtp-Source: 
 AA6agR78WI6ZL8u7rdjwikQ0xE9a77DoI/Xpgq21rvTIqpIpNofNDH9Mbqzl8U2WAXx4LvK3Mfdo3A==
X-Received: by 2002:a5d:4602:0:b0:228:62df:7d2f with SMTP id
 t2-20020a5d4602000000b0022862df7d2fmr1588818wrq.247.1662545105388;
        Wed, 07 Sep 2022 03:05:05 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:eb69:bb70:edb:6315?
 ([2001:8b0:aba:5f3c:eb69:bb70:edb:6315])
        by smtp.gmail.com with ESMTPSA id
 p7-20020a05600c358700b003a8418ee646sm27481142wmq.12.2022.09.07.03.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:05:03 -0700 (PDT)
Message-ID: 
 <47d011ca872cb9e5434b6cb352e526d1d7b05b1e.camel@linuxfoundation.org>
Subject: Re: [Yocto-Advocacy] Help needed: list of products built with OE /
 Yocto
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: "yocto-advocacy@lists.yoctoproject.org"
	 <yocto-advocacy@lists.yoctoproject.org>
Date: Wed, 07 Sep 2022 11:05:03 +0100
In-Reply-To: <5bf26cda-3fee-7233-c7a2-390f0bbd36e4@bootlin.com>
References: <5bf26cda-3fee-7233-c7a2-390f0bbd36e4@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Sep 2022 10:05:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58000

On Mon, 2022-09-05 at 18:51 +0200, Michael Opdenacker via
lists.yoctoproject.org wrote:
> Greetings
>=20
> If you are using the Yocto Project to build your products, and are=20
> allowed to mention it, one way to contribute to the project is to add=20
> such products to the list that we keep on our Wiki:=20
> https://wiki.yoctoproject.org/wiki/Project_Users#Products_that_use_the_Yo=
cto_Project

Just to add that we also list projects and companies using the project
as well as products.

Being able to show where the project is being used and who by does help
the project "prove" it is used, the scale of the usage and why it
should be maintained and developed.

Cheers,

Richard

