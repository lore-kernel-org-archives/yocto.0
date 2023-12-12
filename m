Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CE98C4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 14:00:41 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.2217.1702389638089688184
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 06:00:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=gyH5CF2Y;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.50, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a1f5cb80a91so604843466b.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 06:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1702389636; x=1702994436; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p94bNhBeppbLDpBhD5WJAcUDNCNE/6pSR3rYwvXqgPo=;
        b=gyH5CF2YrHwy8jnQqKAa0plqA14n/0VdIIGzAQm8GXoklNAqqqqljFzKFvnhECl5pc
         L0kjhqUh4hHYzqwsKeWRELL7YpreUsmN8YYfyWjb3q7rawuURb1rrzbBS1sk2ZI+KQwM
         gvQTF7WlkKvZDC4g+eCtKrr3FGbMgydoEPuYfefcHTKDNGn4ffAgMMbHxYjh7u1UXPFl
         2ZCR9TvR+ziitzTC/eMOKe4u8jQiyeSE9YdDakM6L2xxQ1aFse/Hqs+fkoCMH/lYrAbo
         SVmR+G1eCA8pptw/Qes8lRKV3jjxjkoBp4oIieHDu995Phwk7exRe5Jb4zoMhcpChnyC
         IKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702389636; x=1702994436;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p94bNhBeppbLDpBhD5WJAcUDNCNE/6pSR3rYwvXqgPo=;
        b=ReGsUpXxOMqnCtKhHOzsyQpAjDaPv1pyj7+EZIFpxHXqtvMQ0OEAMClVTsSh2fYepi
         CmV2QQlUo9v8nWQVkVaJEpk88hBjCdKik004S0PeMucKP7n8K8NlZ19QxTZaFFLFr1cH
         NVo14ggbiV8VkEiDhlJT15IYKCtJzox+pgvjXwHkbkfJ0kVUkSUy/L206UIdromxC4+9
         CjIHccJiqjFHfR14KmgGErLYoLfLZ+RN4wPyRFcIiplt1+OTry+3mN11PdMWJlD6fKKS
         rT8e6W8PV2ov0LzrcVbzEmjP5lkIzP5MzBuU0V5UsDFew4Irm5tFh5g5C3Kr3mqUrQbG
         3GRQ==
X-Gm-Message-State: AOJu0YyHwjh6etT5EWyZ3sFjYz8knyDB4izOqZj+wXtPuH2vzc+ykKnM
	ohiETB8xo2laYZlOIkydCFP1rwZj60TmmVuGWnn2kBVgM95ppX07aPw=
X-Google-Smtp-Source: AGHT+IFoCgMBKAkz+h4R/Gf1BUJqSOg9W7XQZJTDlQxmsQSDj1AvQpA+VJ0pYbouAWlBqVvBVS+kLYSxRB01qzBKnkM=
X-Received: by 2002:a17:907:1685:b0:a1f:75fd:75cc with SMTP id
 cx5-20020a170907168500b00a1f75fd75ccmr2800697ejd.89.1702389635901; Tue, 12
 Dec 2023 06:00:35 -0800 (PST)
MIME-Version: 1.0
References: <0101018c5ca512a7-ba5e6eeb-5046-4d6c-a260-eb3ca42437b1-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018c5ca512a7-ba5e6eeb-5046-4d6c-a260-eb3ca42437b1-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 12 Dec 2023 04:00:25 -1000
Message-ID: <CAOSpxdbUSHqvooisRA7wg5LPkjOZqdQ=JBgbTY6y2=R7iOEWoQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.1.30.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 14:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61861

There was one warning in qemux86-64-ptest for a known autobuilder
intermittent issue also present on master:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14825

I did a retest, which passed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/81/builds/6031

I think it is OK to proceed with QA.

Steve

On Mon, Dec 11, 2023 at 8:09=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-3.1.30.rc2) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.30.rc2
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/6320
>
> Build hash information:
>
> bitbake: c0d60794a32e3f8bbfbbd6800d87ef2782aacf2c
> meta-agl: 512d244d48ba0d33f609f425a6e8a907b178cdac
> meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
> meta-aws: e317ca5861b23dad5d0b2468fbe3b4b1ef367194
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
> meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
> meta-openembedded: 9135c7ea7350d5d241f4afc3b28087122ebe2d19
> meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
> oecore: 55157aa2f8b157b1cc63e1134d9eba6db0cf16da
> poky: dbe19706ec01c1eaa1d377a792e7d825054050b0
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#354): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/354
> Mute This Topic: https://lists.yoctoproject.org/mt/103125676/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

