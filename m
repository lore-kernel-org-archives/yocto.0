Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C5C46CD4
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 20:40:23 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.32047.1703104813194128904
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 12:40:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D7VsCu+P;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50e593c756dso132764e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 12:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703104811; x=1703709611; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pu3xD6fPJZRIKijMcnP1G+8M6aN5vv+mldovFcg7Auo=;
        b=D7VsCu+P3yxxTZbVVQpu/WUN3ixyJZ5Hh9bW8s5DmKHAKpqbJqkynueLal7O6NZgJC
         JbCHJFGUg/x/9n6C8Lpmdam7N4CQNr1EszdS717DzTbYWjEwhLQl7YC9Bm2sVAqi2dHG
         BeBoIldlqy0U1KwKqKJ28M9cUvjyBeEgAlgYTWVDZA1udMrWxqOj3GP/UI0NzcemmRru
         qCU8NwNaPshpvpPitD6mdwNvO8rzM1VP8YMKt0SGpq+/BhJpiyFMVgUzirmu6FpDUgOD
         I+cAqwBJlPy6hEMvbEsnQMNtt9metjI0M44xpuzdY+03QdHArShm6Q5xHqqR3eYySwGs
         p00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703104811; x=1703709611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pu3xD6fPJZRIKijMcnP1G+8M6aN5vv+mldovFcg7Auo=;
        b=U2mU20x8Kwb3Zuhi+39EWcsnZqL3s8DG1rN8eXH7IbQGNKTEGU5Cx33im7hHsV6Umj
         tRN+R2shqd2AC+bDEYiUYI6tHS1ML62weDfDedO+cawkUjfZ9iBPh7TRyHrHjXGIvIHc
         4MMI9BpiwJg90id4BIyupMO7RhNpz0M9hv5qT5vFdk3eUmQWeKPROVd0XBu3cAwlDp1N
         uCmlR+qs6Vb+P3KzvEkEYNP6vFFNgD1IlFvGzpnRsQMxScAiZJSv4uzvyE9S/OhRSofV
         JNLilLsjDugz9iTfbzsnH/bBkEAE7dGMirDC04SrfT/MMzZJs8SDadQ530/xi9vOoEgA
         Z62g==
X-Gm-Message-State: AOJu0Ywrb1meuA9feGxcocX0TbsnxtidrXBe8dt273IHb/IEZBOgig09
	NC2InyEJCPvDanpPOu8rQlpWTcqdOGpPlwNWC2wBpEwAXmE=
X-Google-Smtp-Source: AGHT+IFGcMwVRdw4LAVU8IylJjxtSpZ/bJtPYzwCsFUCZbdgNUnuomiyR8kucQE7+JGBKElZMnmA5rdeohSVdA5tIWY=
X-Received: by 2002:a05:6512:2002:b0:50e:3dd4:39c4 with SMTP id
 a2-20020a056512200200b0050e3dd439c4mr2080774lfb.62.1703104810916; Wed, 20 Dec
 2023 12:40:10 -0800 (PST)
MIME-Version: 1.0
References: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com> <24207.1702552293492620689@lists.yoctoproject.org>
 <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com> <CH2PR19MB3429DB00CE138E0B42C57172DD96A@CH2PR19MB3429.namprd19.prod.outlook.com>
In-Reply-To: <CH2PR19MB3429DB00CE138E0B42C57172DD96A@CH2PR19MB3429.namprd19.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Dec 2023 21:39:59 +0100
Message-ID: <CANNYZj_apJTWSZAEASHSxGaXfs2oFQBb66gwsFpR9EesCPJ0=Q@mail.gmail.com>
Subject: Re: [yocto] do_populate_sdk_ext failed
To: yocto@lists.yoctoproject.org, mwen@ambarella.com
Cc: "ross.burton@arm.com" <ross.burton@arm.com>, Song-Jun Han <sjhan@ambarella.com>, 
	Jian Tang <jtang@ambarella.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 20:40:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62000

On Wed, 20 Dec 2023 at 01:51, Ming Wen <mwen@ambarella.com> wrote:
> Song-Jun and myself are in the same team. We spent some efforts to make i=
t happen for " do_populate_sdk_ext" finally by fixing some issue in Poky(we=
're using latest Kirkstone 4.0). But as you mentioned, when we tried the ge=
nerated eSDK, we found that it still can't go with externalsrc enabled. :(
> We're wondering whether this limitation/issue will be resolved in your ne=
xt LTS Scarthgap (5.0). Or it is still waiting to be fixed in future. If it=
 is the later, we will file a bug for eSDK.

Hello Ming,

I have to stress that Yocto is a community open source project, and
not your commercial supplier. Nobody owes you a fix. If things do not
work for you, it is your responsibility to find out what solutions can
be, and implement them with code. You can of course file a bug as a
way to document the problem, but it doesn't mean the bug is going to
be worked on by someone within reasonable time. That only happens for
high priority issues that affect many people, and this one isn't such.

Thanks,
Alex

