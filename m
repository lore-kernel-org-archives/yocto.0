Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B823BC61DA4
	for <webhook@archiver.kernel.org>; Thu,  9 Feb 2023 12:40:57 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.13372.1675946451896760188
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Feb 2023 04:40:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F8YZ+Z96;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: electronicconsult1@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-52eb7a5275aso12937997b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 04:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AYaWKcZWfo9ZpCsjvnfaTurmfLNza1gOU3S6W/ps1mk=;
        b=F8YZ+Z96aSBcGhnaf+zCK+w6PjbC+jJWDhLlvi2WP6LyU0bNS0FxhZrOQ5lCxdVYTB
         pUKIFd8IjovjwN4Du8LhQUi3X6p9TMx+MxXP1H8TIsRHWrdjTVvxnKwos6ZGPVctLVSD
         rSf0Yu9WyXhHyzOV8NMpXy6KmNxLKJX5Y8ot+mffOyaJYbkRQJKA9f4TuXDNSFmu9Sfa
         X5N0plkU2LvOw94aZ/Z6zvLh2/P71khREWD+oIhaSqu9SKKEeaci5UydJ5mNzNnyQ3Gs
         irZJMKyLnV07dYWKgHyDTr4lMC/zPAGb+g+RAdjZqntlO3ZQTXAXleGmlzpGNYkvfadT
         PqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AYaWKcZWfo9ZpCsjvnfaTurmfLNza1gOU3S6W/ps1mk=;
        b=29na4OaDA/iMVaZEAmdY1k3qe4NtjXfKKK+ksfMEPjztJJmZeKHMbZHvG0n6mBjiqR
         4+4TQT5k9sMKl9Kv9wTEDLztI/Xm7QvTmRy2ELY7sMDWRWn8NH1YtPfXddXCmTo24gvd
         RdFSSdTZUkx60wxd22pQnr6ggotqQ1fqQAir5deH5cLsOw8Z5DPGvQRwhbxVPF4+1OE7
         hLJdawINmcXkBvspoUOkeXkUF31BN8eK3z1Xcd4lHwyDU6DUkrKxOaOZsaDE1BDE9pQ8
         cvin5s9T/4DmP3X6mUpjwtsiIxsV+3jFCT/IgnicseU72abbL9ztN6twD0dYF+oBjRfd
         Hilg==
X-Gm-Message-State: AO0yUKWu3m+2/+cSYybAX581yjrDDIlfiebhKEItlfkVcXiIZ+tU3LJA
	lY9Q89j6pOJiddqPVnmGxpdD9oXVPBKLND4YmM0mlbbXGJY=
X-Google-Smtp-Source: AK7set+Qd1nHn/N6UbdBxFdR+N5kqzdhONofx4BaUdXaU8MuZzOUI8SoWtJHEkLqqPOj1bKKuuCahUEz02fCiD6Rfbo=
X-Received: by 2002:a81:6ec2:0:b0:527:bd74:994c with SMTP id
 j185-20020a816ec2000000b00527bd74994cmr1455945ywc.60.1675946451109; Thu, 09
 Feb 2023 04:40:51 -0800 (PST)
MIME-Version: 1.0
References: <CAGUWaEEpyN=u5-S68jNmduhKcv7nCvmCD0VYHXCJkfYcnUqfmg@mail.gmail.com>
In-Reply-To: <CAGUWaEEpyN=u5-S68jNmduhKcv7nCvmCD0VYHXCJkfYcnUqfmg@mail.gmail.com>
From: Electronic Consult <electronicconsult1@gmail.com>
Date: Thu, 9 Feb 2023 12:40:40 +0000
Message-ID: <CAGUWaEE7vOziQSdg1bb8QgHq1mgd9JiOsQvhdtgOXybscz6NAA@mail.gmail.com>
Subject: AWS S3 bucket access from a C++ application?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e18b5805f443b05d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 12:40:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59203

--000000000000e18b5805f443b05d
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have a device on which the main application is a C++ based GUI. I'm
working on implementing an A/B update strategy using swupdate with the
firmware being hosted on a AWS S3 bucket. The user needs to be able to use
the GUI to check for updates & if available apply them (I can implement
this by passing the filename to the swupdate client).

I see AWS have their own layer but can anyone point to a strategy/ resource
on how to query files in an S3 bucket from a C++ application?

Many thanks,

--000000000000e18b5805f443b05d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">Hello all,<br></div><div dir=3D"ltr"><div><br></div><d=
iv>I have a device on which the main application is a C++ based GUI. I&#39;=
m working on implementing an A/B update strategy using swupdate with the fi=
rmware being hosted on a AWS S3 bucket. The user needs to be able to use th=
e GUI to check for updates &amp; if available apply them (I can implement t=
his by passing the filename to the swupdate client). <br></div><div><br></d=
iv><div>I see AWS have their own layer but can anyone point to a strategy/ =
resource on how to query files in an S3 bucket from a C++ application?</div=
><div><br></div><div>Many thanks,<br></div></div>
</div></div>

--000000000000e18b5805f443b05d--

