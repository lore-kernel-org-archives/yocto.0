Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5642BC02194
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 19:46:57 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web10.51174.1738871211822145858
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 11:46:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B48TlpVP;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2b828fd9d22so269968fac.2
        for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 11:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738871211; x=1739476011; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=36jEym8xCNphRbA1jvrRAql+0AmpyKEMtZOYAI1jBRY=;
        b=B48TlpVPn/szp+T6hfifOgqLWlE2XE5QHjQyI346mZV9LuNeFvE+ai/WFozS5gmqtI
         IqDuxLlUe/hKIKmFr5qeAZ5MjRSHUtxg4zpqrrxCD2Rlk3NCSYQ767M583smquw4s+Oi
         Ely4VbOPQNnmybZ7tN3J0NbDsvxQJDW+qkmTbcaNaMiWqTn7H5IbqxnM/1b16j5zGKo1
         xH4FhXkF5C22KvYtZbL4qPN51ny5xhfmXzjMoJkuW/Ze1YidfrZ27HUR3amMaUFPIN9W
         vM2xQ0LxVyclovnBcqWN7neRINEoji9VhTDxyJd9ImxIKarQ037NAgO9HGX5PeJ1+1oX
         15bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738871211; x=1739476011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36jEym8xCNphRbA1jvrRAql+0AmpyKEMtZOYAI1jBRY=;
        b=wRqiKXrACiyf3NE4ecrrzKDEIaLtmVUeX60KwZtV7NuJMZ6Xa3cvy2rqeKcR2xEIBP
         Y7aGeKi0bpEiXrhXq3tOItgfrL5LiyVOAWuj652H8zzrc+LUCQsEmQ5ONQgIcUN7v65L
         M7TCDIwOc5JP/D+YrWg5EeiV2BxmpIMCRvUvtcOdIXTPd6hEvIvk8LF3dfCvm+Gs3Zki
         qRrGki0Fo6VEW2MbnHY9YFwUTBrgGAA9omhB8/dnVh9SE2iJnFyStYQGh127aZMf1qdn
         Ux0mk9GRxKPFZ9suVWb8lFSLx67hnnAAnWUU0dvwtvp0AQUnlm/U5Wyi4t6i8iG4L/t7
         GCrg==
X-Gm-Message-State: AOJu0Ywrp2kC50r5EDWjjqPgvsYH8X+ze8KLnVfioyXS61sAqI+LlLGL
	vRgIqL306IIKquapE4TRlHuIhToZJ5voxe2HGx+XiYHsx6QG52EbnouIqt71WBWec++bpv/14ey
	ZaemAAYgMsVSj8yMnTL6q30ivxsh9MvW8
X-Gm-Gg: ASbGnct5huR7Mry/dOQ0Xq1JEFyE6J646bQH6jMFJMtlVxOan2yH+kdOZ2mYOsdOE7Z
	FazAg1TjcSNwwAIkSJcLX7AmeGX/Vy9xBiufmX6QQHXkxoqZM1Mu8cuDwLwWte68+rwd2FEGIgi
	6lznzh72/Ns69Ay2Vijf57/8Y4iQ==
X-Google-Smtp-Source: AGHT+IFuBHQfgU+ni7NMs1pRV0g+7MTvgVIjZLJxREGk80R5iB7kyAXUu+gC+wvlqwflW4/6sffx5seohYcL4jWVJI0=
X-Received: by 2002:a05:6870:8e0c:b0:29e:61cd:d3b2 with SMTP id
 586e51a60fabf-2b83ee80591mr255675fac.38.1738871210942; Thu, 06 Feb 2025
 11:46:50 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sqUyhqDgwfLHUS=JcnrQRQNXQ0AK1aLdEGjM+fgPgS9DQ@mail.gmail.com>
 <22391.1738870765614634394@lists.yoctoproject.org>
In-Reply-To: <22391.1738870765614634394@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Feb 2025 11:46:24 -0800
X-Gm-Features: AWEUYZmf8N0fhqq3Et_ahf7msjQUWaqSOQaVQN1UFJNvLAX_cV7eD1UvZlKtq9s
Message-ID: <CAMKF1sq2MrjRGY95CtH6PTwNPn8KFbrNmrv1a+req+4RNn9Z0w@mail.gmail.com>
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master
 branch of Yocto #raspberrypi #raspberrypi0-wifi
To: jdowd@slashdevslashnull.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 19:46:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64733

On Thu, Feb 6, 2025 at 11:39=E2=80=AFAM John via Lists.Yoctoproject.Org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> On Thu, Feb 6, 2025 at 09:15 AM, Khem Raj wrote:
>
> raspberrypi0-2w-64
>
> So Khem, the 64-bit build works. Thank you very much. The next thing I ne=
ed you to fix is "World Peace!". Please get on it...

cool,  yeah I am working on world hunger :) I have queued up world
Peace for next.

>
> I'll give your other steps a try now. I in fact, prefer the 64-bit mode b=
ut this should still work and since I'm setup for it I'll see what we get.
>

That would be helpful.

> Cheers!!
>

