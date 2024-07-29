Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F833C3DA4A
	for <webhook@archiver.kernel.org>; Mon, 29 Jul 2024 18:33:20 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.123.1722277993266389775
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jul 2024 11:33:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DG1/trlr;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52f01993090so5938977e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 11:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722277991; x=1722882791; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMhtzlrC3sexSffpBfoV3Ry5qZdd2teXhqeiJXo45Ps=;
        b=DG1/trlreJ24fI78bux4LGO6yks4J1WpSlrX5Snswi+2s1nRioGVC/cobwPceSOByv
         b+khrZi66kxRQcXBM/bC5CMdgCrVoxraNaiEJ9bh/ThBgZ0thHq7Ks3KeFneVjOrrQWf
         HjhFpEcdrcRoSXpXn5kDjkOGIWWrAD+OPVJrn8UiZZa6YD8/qsEEuznLMfIj4TvVmVxr
         nth+2ZXUjBuzOq3Fw+UqohcDHkbhNVaVkEk6Yo6fRCcgBcsOz7eVpdVxcRHwMlcQqoMd
         jBUzCiURoCV/FD4puK85WxkaHeuKVNZ3zlNCeWR0eJ/yNVs8MTQpHJzHlqJmtjD1QLkY
         mkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722277991; x=1722882791;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMhtzlrC3sexSffpBfoV3Ry5qZdd2teXhqeiJXo45Ps=;
        b=HyvLTqYV2y4HcOO4LN8cC7DxX04ZUX4oCLqDLPPX7rEgj6+ItR3XNYXWr5JNVPKPs3
         9fAOzaqjYDM3JYr9tqMW+WoOGUoPjOlr2/9rjfDPNX5ak5zhzf3oiCNe56MgZYPDOeMK
         6XkgJ7AE4u764mgp/T6zT2EbpJv6roCs8Cj+rWgnmaKmZC9WEqzFNPEUfHqRwieFRi86
         UU7OG4FG1h8JJU/+GW6mV2P9N/3dpYjAYDImaQO80pZinGz3XnuGXMvIKei9irmtHBkW
         bM7M414YU4Fg7qBx9ZVg+B80xADrMlA4KisSjdF5tjPLlGsc1qjEM3OQBDb6lGOypRV6
         xqPw==
X-Gm-Message-State: AOJu0YxxJheBdHmDNWN+IL9lV/o48l565Q4J1cfm+3m85/IRf3S35hWs
	4Xl2tStr/0L3nRI36BA+zNs75Mj+w53E2kvZm68WYhFgCQPfjKpXHSMtl4+meWRIuco+msjRoSM
	kuqAr0rTtIPljY3z0CRZ2hVC2M/FDu5B3
X-Google-Smtp-Source: AGHT+IEuCus80P8cgg5yaojLDR4r2JG/932F9aPc8w8nENV4i+YyVBG9IP8zRg+SjG/CsmdkecXsPgEbxEhX2e2z3qE=
X-Received: by 2002:ac2:5f5b:0:b0:52c:e159:a998 with SMTP id
 2adb3069b0e04-5309b27d524mr5309995e87.29.1722277990986; Mon, 29 Jul 2024
 11:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
In-Reply-To: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 29 Jul 2024 20:32:59 +0200
Message-ID: <CANNYZj-SH92hn5goJ5N+kZq-3X8TNL9=azsqoVp+2fP6zfcp-w@mail.gmail.com>
Subject: Re: [yocto] Update glib-2.0 from 2.7 to 2.8
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 18:33:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63587

You can try, but this is likely to unravel into a mass scale upgrade
of half of oe-core recipes, and you're on your own trying to make it
work. I would suggest simply moving to a tagged master milestone
rather.

Where is the requirement coming from?

Alex

On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi guys,
> I have kirkstone SDK with me that supports glib-2.0 version 2.70. I curre=
ntly require version 2.80 which I noticed is available in the main branch o=
f git. Do you think pulling the recipes and manually replacing the file wil=
l resolve my issue. Or any other good methods I can try?
>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63580): https://lists.yoctoproject.org/g/yocto/messag=
e/63580
> Mute This Topic: https://lists.yoctoproject.org/mt/107603886/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

