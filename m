Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7CBC433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 15:46:29 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.8428.1641311188883337827
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 07:46:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=H4z6z+Fw;
 spf=pass (domain: burtonini.com, ip: 209.85.128.52,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f52.google.com with SMTP id b73so23532795wmd.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 07:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jKKKOFRj2m/v9GDEgonCqrVWTB4qryrAUHC6L4u/0Rs=;
        b=H4z6z+FwlW1HRW25E68ScnbOEzC0g1vbVgLRUO9oXSnrY/yTq6Ja27Sz/S5/4v7Nc0
         quYHEcI6r2BIbsTYVaz8D9RP+I47+6BTzalEHnWMR/M48kppXyeKj4uGV6k6tZc4DWyw
         NqS1BWVUt20cE0g5kEftZI0ot3XnWpxFznalWVGzqkQnNMPWuaFmLfyl8bUE6ViV6Yg7
         hzN7DN1hbuFRHdtL3E5IoDhhI61xRKWAvAwBvxp/diE8zU6aWCi13OIGbi7ytucaBCk7
         SJPazfXLjL2Vp45TJ2SWspZ6Gq85W3G8F81UWicrm+ijLr7ktktMx/9a633BSNNArmHK
         Mnlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jKKKOFRj2m/v9GDEgonCqrVWTB4qryrAUHC6L4u/0Rs=;
        b=34W9gBa6AbiDJ1CBvkHjaVbDeCMO3HeoSq5nGzl74e6ajHZ8gyiD2/88ASapYREHcc
         KA16X6R8ZkvsCJd/pysys7OeGKzYljB1FrxBZAYH0AmzchfWeeLYE7ZIwPPPH/8zw1MK
         KwJ6mXF5lHRcfvb3zOnnK8quK0LkE3q9L+Bb5AyP3kQD1DO8BmkLVw0XJuluaA6afGyI
         dWwJYNlNu0wsV+vYW/R3R8TpsVAJliy3ZDKCqzUa3eZjCQYMgrB1LGHZnf97LOIy7Dh3
         +Ukr/p3SSvEj+AiSWqOmqsKWVVIdap/9IBf+j6Xe1hTfoSUUzr9A7MiywenQ/NtfuaVo
         fNcg==
X-Gm-Message-State: AOAM530kZa1rudENBg7OGQinNpYEaPg4UhiL44IqsXS+RCvbxafaadib
	NOy4gazzzN6pL1z4sofU+POiwR8lmbsryJVrOu1ehQ==
X-Google-Smtp-Source: 
 ABdhPJwGIJM5/s39mUBu0kE0cqTd7pcFOmtdqV+9sh+dfi4U1VasBI4k0qqcUrx4w7JCsf6DlOd30d99GMGrKqG0Fog=
X-Received: by 2002:a1c:9856:: with SMTP id
 a83mr42589773wme.157.1641311187059;
 Tue, 04 Jan 2022 07:46:27 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
 <CAGeH+D1tWdL2wD5R-2GgOfvq3SeLFCKAaMrLGb_-pvXrPW+ePA@mail.gmail.com>
 <e8b3d35c-4752-d2ca-ba1a-22040aeca3cb@bootlin.com>
 <CAGeH+D2ByzQjBCgzUr1WNE7+=gXenViPJBo1XjgUF_Ofv2q4JA@mail.gmail.com>
In-Reply-To: 
 <CAGeH+D2ByzQjBCgzUr1WNE7+=gXenViPJBo1XjgUF_Ofv2q4JA@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Tue, 4 Jan 2022 15:46:16 +0000
Message-ID: 
 <CAAnfSTsHrTvWSieS1-QJLrV8eqPRVG4bYgvTcXbGQ4SnWSvemA@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Arik Kleiman <arik.kleiman@gmail.com>
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 15:46:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55725

On Tue, 4 Jan 2022 at 14:58, Arik Kleiman <arik.kleiman@gmail.com> wrote:
>
> I don't have option to add systemd.
>
> Added alrady tzdata and all time zone folders exist.
> The issue is that ntpdate returns time in UTC.
>
> I found a way to get local time zone (by using ip lookup). Now i looking for a way to use it to update system time

Just write a small tool to map the local timezone from the IP lookup
to a timezone name (such as Europe/London) and write it to
/etc/timezone. You could do that with a short ifup script.

That said, for headless appliances working in UTC is absolutely fine,
and for user-facing devices it's perfectly acceptable to ask the user
what the timezone is, as your geo-IP lookup might be incorrect anyway.

Ross

