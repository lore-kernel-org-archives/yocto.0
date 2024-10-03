Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0190CF34D4
	for <webhook@archiver.kernel.org>; Thu,  3 Oct 2024 23:02:19 +0000 (UTC)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
 by mx.groups.io with SMTP id smtpd.web10.9961.1727996534362792091
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Oct 2024 16:02:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=ZLhwhM7c;
 spf=pass (domain: ics.com, ip: 209.85.161.44, mailfrom: lpmeyer@ics.com)
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5daa93677e1so818849eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Oct 2024 16:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1727996533; x=1728601333; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RKpWb8rR1i4WZg6x0CsIvBx6+COQCVmIivXqbQKxjGQ=;
        b=ZLhwhM7cHI5ttz4JJSFxuywte7irioi3OSfRul1adZ8bBrwe7MRav7ykraFSmWF8xT
         PHnKD6FQI6HB63h4VRq3IKG8qpnvv8iGx7jzX20KQJ3SjO81zQUNBzpcpZd+Ikpvt+bj
         FBun1cRbjn9KgUIhpSiaSSP0LzYte+Duyni6M8DEXKskP0SkJqVfqw4rbhYGB/7FJEpE
         4Uq9u77qkcg8zgdHU/ys0XTswdlzVITAx2ZdpnijVgqz+XAGIZdF7VS71MfK2SSpBVMg
         zh/acmwKphUke+8Zs0s3mpizAGZjwId++6azSzYjfF/6Wp4gkKk3mcRVsNiTeHCgQ+11
         hAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727996533; x=1728601333;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RKpWb8rR1i4WZg6x0CsIvBx6+COQCVmIivXqbQKxjGQ=;
        b=QU81hb88Sp0PW6UKUDs0lQljNY9I2EijS0triSZEEBnEQah4odp6FnYuv52PN6zpsY
         6smZBHzkOlS3ozHMOUzL6im83eoh16b5o48fQX2x3zi9MY2iyWDL5Z2mhT8MZN6EQVQ8
         f5F9KSI4yFSMLSaeMHr2mjyD7jeAAZOnwhAgOfbE594tzrDXugfKEM1dCaVAkrJE4FX4
         BEvxEP3nN+0S+IuhQfAv4n7I7GbmRBI8Z1Mt7PwB3QuCrvj/EWyB+mRltpniiZFgz1cj
         UUVHq9I3nlnhonTZ5poRqabPXUkMkXay1UiVa7k9fPWsP6F8FV+FMpKWyTgUa0xr1j04
         R9Cw==
X-Gm-Message-State: AOJu0Yz4qLIhelPWayYfG4f+wqyKaoQxMGV4P5DUSFhO0/z1eXqwCSc6
	eRGw7dEQ1/NkKfZ3ZxVH4tBXgu6Fw/ugomETHDau7ISOiFXYCkN9zTfS0bgzEQtzGadvZZRYh+g
	oA0vDckFcYnO0W2VsedCp+/Q5snvUUGQbrtoweQFEz8gp/iDR
X-Google-Smtp-Source: AGHT+IEndSHfK57F0v5ShMUgp3O83iJ97uLypvK2tmqmvumu8k4DF4LlxD0JkdYRTljt/iqySOYkX3nq2QS9PHzBiPA=
X-Received: by 2002:a05:6820:1908:b0:5e5:c291:9f86 with SMTP id
 006d021491bc7-5e7cbf92022mr436841eaf.2.1727996533312; Thu, 03 Oct 2024
 16:02:13 -0700 (PDT)
MIME-Version: 1.0
References: <17FB120285840E5F.4329@lists.yoctoproject.org>
In-Reply-To: <17FB120285840E5F.4329@lists.yoctoproject.org>
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Thu, 3 Oct 2024 20:01:57 -0300
Message-ID: <CABqjNW-HqnHKbr+qGKKux0se2=R_FADwHsv8fRMF3xE8s+KRuQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypy] scarthgap: reproducing videos with VLC
 or Qt using the GPU
To: yocto@lists.yoctoproject.org, lpmeyer@ics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Oct 2024 23:02:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63935

On Thu, Oct 3, 2024 at 7:31=E2=80=AFPM Lisandro P=C3=A9rez Meyer (ICS) via
lists.yoctoproject.org <lpmeyer=3Dics.com@lists.yoctoproject.org> wrote:
>
> Hi!
>
> I have been trying to reproduce videos on a Raspberry Pi 4 64 bits with:
>
> - VLC
> - Qt 5 Multimedia
> - Qt 6 Multimedia

I also tried to make `rpidistro-ffmpeg` build ffplay, but failed.

