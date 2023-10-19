Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64194CDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 15:37:21 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.31319.1697729834770017163
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 08:37:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Q3BqXj1R;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4084095722aso13492165e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 08:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697729833; x=1698334633; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rf6/UQuS6zC5ga7HbCu6SconudtOVm2XQ9855g5O/RA=;
        b=Q3BqXj1RXJLOXvD6oyEUajrBj9p2nWhb+n2ncKnRU8VnXA3eFYPuugW1EEivaheXUx
         XzpNkxkZl+JMJbhW+kd0d3k7J+Vz67V6MqMsKDG3MUy1BREq654VSUBf27JyKY9el4Y/
         98+6eH+zDZ5y0XRT/sR0f+LBE6rQJ5BPONFhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697729833; x=1698334633;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rf6/UQuS6zC5ga7HbCu6SconudtOVm2XQ9855g5O/RA=;
        b=Ek7GHOZjF5e7bZOInINLNmB9Bai3sJeyYk1oWjVI4Cc5Uk76m8eWgUXebflNUG9A7p
         Al2Zddb10NSIm3M1S2/nAcGZOIH3AoNjmAeQmgVT+ONzm8FS20tvB4mQAgyUzQE+EWAa
         n3CM2tjuxCG/18nRFyJPJFs9hFR9RUnszh9Bq3Qs60xWEXYqjPGCdRutO2UsUHGGy7wn
         aY/zdV5rFl5ZCekjcfGir+9OpJa0npQyX+EFoFsczy2D9EWZeB2EigehGMHmcXYEDLBx
         IyKJLJopyjZb2al3ygPnIjSyRepPsEeSfOWxPWBNT34fo1CHK/3/TmCRfRQGAbwnyPJZ
         P71g==
X-Gm-Message-State: AOJu0Yy6rIzLft8iyAh4uAr/WEHO/7qwPsj0qgjcBtEkLiWfaiyiYNxa
	FkcF0dVqzR7MPOvzx1oZ0ym2PA==
X-Google-Smtp-Source: AGHT+IGqYYQAJZHfBL9rMzwbqspqaGYHxBLfkS/OxYBi8liVlIzHGB6uPtj3UytCWNnlfVdDGMy4AQ==
X-Received: by 2002:a05:600c:3509:b0:406:7029:c4f2 with SMTP id h9-20020a05600c350900b004067029c4f2mr2070499wmq.26.1697729833045;
        Thu, 19 Oct 2023 08:37:13 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d50b:9488:c681:57b6? ([2001:8b0:aba:5f3c:d50b:9488:c681:57b6])
        by smtp.gmail.com with ESMTPSA id q13-20020adff78d000000b00326dd5486dcsm4714347wrp.107.2023.10.19.08.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 08:37:12 -0700 (PDT)
Message-ID: <3da1d50e599ef264448d392906d562ec174df796.camel@linuxfoundation.org>
Subject: Re: [yocto-security] SRTool usage for CVE management at YP
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Marta Rybczynska <rybczynska@gmail.com>, 
	yocto-security@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: "Reyna, David" <david.reyna@windriver.com>
Date: Thu, 19 Oct 2023 16:37:11 +0100
In-Reply-To: <CAApg2=Q5FG4X49MeCC0Yg9yhsFe6pSDRY2o81coNDftHafs2HQ@mail.gmail.com>
References: 
	<CAApg2=Q5FG4X49MeCC0Yg9yhsFe6pSDRY2o81coNDftHafs2HQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 15:37:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61420

On Wed, 2023-10-18 at 07:43 +0200, Marta Rybczynska wrote:
> Hello all,
> There' a discussion pending on the usage of SRTool and CVE management
> for the Yocto project in general. It is related to the need of having
> a list of CVEs the project is affected by, those fixed and those that
> we know we are not affected.
>=20
> In the previous episode, we have had a demo of SRTool by David Reyna.
> This weekend he has updated the code base. The next call is tomorrow
> (Thursday, 19th October, half an hour after the end of the Bug Triage
> meeting) to discuss conclusions of first tests and the next steps. If
> you are interested to join, let us know!

I'd be happy to listen in.

Cheers,

Richard

