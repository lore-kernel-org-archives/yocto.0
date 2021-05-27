Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web09.666.1622139727852238608
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 11:22:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5eYerEl;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id 22so1207855pfv.11
        for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 11:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Ipysp1XL7gqT32UZvTrY3MoOgL6m3R0lZFwFWqnqM6M=;
        b=O5eYerElPkf+Ml5pRLXwDZDhGHzAGtLEZepu4Y3jQsUlaP6Lk2B8pyQ7qA7rR6w34F
         qBM1txpSHF/04xvO8bZx7/nJu8H3AIYlRu/832GBRnRTh1NtqSvKc9g6s0ZYffTOE0pi
         sT2XGt4OLzWZDpBKis/MbESn/sxioKYMHY0Kbn2zgofqmmvmTH3vwA78N4X2WYr0kHEQ
         z7wS+4AHRvLpGmAfF8t33Po1rQVgv8XXZbqHpVhLcm/jysS23qETwViyXWp0Kl5892Zn
         lalLswM/DvqyNAfq1vHcHo5nZkfqUm23Avn+kcUsBIoIY8QUqKN4TS9HoqzHJ/SX8YUz
         tV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Ipysp1XL7gqT32UZvTrY3MoOgL6m3R0lZFwFWqnqM6M=;
        b=KsLMSOW5GTil0xKRtTKPcnQAwJJx+HhiAwxKza5sO+Rmf9ToHFv12NM/RRTG5Tzdk9
         +JceqG1OuFImtHVsdFXlmgJxGnmP5Mag5nZDYTtEGvStE2Pmrp3yrAPIf1i4qabdRx2q
         JsMx8BJPCp9MLbG+MfdvwCQDpIG3s8MkZigb8gADQXgBC6JfmQbCr3WTvKyFlWBuwXsX
         Q/cG/u7a8aNR8blARlSGI++DOiLp5aIXBZdjEWGffPADw+kvFluexSQSe+akyTeHA8Bf
         qTkerXn4b8BEa1U2mGJJlRCWlz8fV5wcFmuOC0CjZtEejVSQf4tOkcSf/2h8TiTK6wh1
         t7vw==
X-Gm-Message-State: AOAM533TDsoaltpvcX2tDJUsMhXueO8Mh5/r2zdjvyzNppsmgWNQsfDc
	FwHmXmPtzklmp1kZjk3Op4b6EWIxNU/xi0d4fI6IydLtb9K/QQ==
X-Google-Smtp-Source: ABdhPJyv0WGJxeVo8s+b82dGPyBolyuZTADgYIQbjsHx6ESBCU29ACRfoVDU9jrP2LFXaHJPf5we034/nih63gK4Bx8=
X-Received: by 2002:a63:fd44:: with SMTP id m4mr5027756pgj.396.1622139726894;
 Thu, 27 May 2021 11:22:06 -0700 (PDT)
MIME-Version: 1.0
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 27 May 2021 20:21:55 +0200
Message-ID: <CAGAf8LzUih8=XRojxtbcCUSFrfzgxHhqTY-9Gg-Ovg+CQO0=wg@mail.gmail.com>
Subject: [announcement] jumpnow/meta-bbb and jumpnow/meta-jumpnow
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Folks,

In order to continue to develop my:
https://github.com/ZoranStojsavljevic/bbb-yocto

And advance to yocto hardknott, I did the temporary moves:

Cloned both jumpnow repos to my github space:
https://github.com/ZoranStojsavljevic/meta-bbb
https://github.com/ZoranStojsavljevic/meta-jumpnow

So far, I did only the framework job creating hardknott branches, to
be able to commence.

I'll try to advance meta-bbb with some recent kernels (5.12) in the near Future.

I hope Scott Ellis will return to continue to maintain his repos, but
in the meantime...

Zee
_______
