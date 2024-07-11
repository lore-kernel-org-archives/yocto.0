Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBCAEC3DA41
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 11:52:00 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.9959.1720698716253247417
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 04:51:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bDGbc2PL;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so13547131fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 04:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720698714; x=1721303514; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6IlS1Q+hme36DkCcAlheY260nJLYc6i/Qt41O+oxeY8=;
        b=bDGbc2PLA7SviQ/NhyeG42G519MCPezsXdaAvOyd8DiJyRV/ZTahU9zkJo8LtpUjJh
         ynDTrqiBY6p3/lTCa+xSszlTiXxi2nv/bCGM/UJ/agzeN7Zw3POQI/wepLWgMchaRMq3
         T7d2Qxt4Q7WR2qpngsJZDL6XMm9wveLNnlF7sbmzNZRJdHruHyuGRsdxdFwb6otZmdf2
         o4lZB3G/9LrL1qsHugM5CUbXkj9RWMt54In0eRMVNmXOIiNx2Fiy8g1fOxESGVsfn2lX
         OK5xa85ghoU9i6ZbYhkE9GBiP4J6uH7AHmKwzC012ZQRpxOtUuca2K3XgxsvHma34nZN
         Maaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698714; x=1721303514;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6IlS1Q+hme36DkCcAlheY260nJLYc6i/Qt41O+oxeY8=;
        b=uKNeN9WZp4UQWhJNPjKMrxd/D9m7ez4Qp8kV6rQt7bJBU5DYTcLgXFGOytbRDZKOcA
         6W4VLebiQeJ1t1a3xEca2d00ntZ7MUcmBe0RpP9Wuj21UU/6AV+77NtGO2w5WRTb5uG/
         A1+5xo5mD1ow9ce6ZPvxxOWdvTGVFNdheqTZySL4WjSyq9tQecXoYQKkG0EBNQQ4wN3Y
         tVHdFGbGK/UIduRf4aWbp4qAx9ovmWnlvOsJkSbbi8K3qSXy/AXVp6UIRPFoFrRuV0/m
         TshtrvG29OafDZGCHfHJsgqaV3e2YKUTnEv/bVnfihvhSnPCGpqsOoZ+7KVoYCi4dUNr
         U8mA==
X-Gm-Message-State: AOJu0YyILeqMo0oDJR4hwjB73HDBAXTL1Ez/zJsYG0i7denfQwbElS9r
	9LZmJ9DL++eKpX73HjT2A50Y1uXKrAUp0hzHMZIM69cUHwUo3nF1VimOoIH5aT7vOul7LKBeA0K
	MVaoTHoRlnCiyPjaW2IrXirEuCy7VbmJ+
X-Google-Smtp-Source: AGHT+IGT+DdeTeVYZswzH0bc6bxTQC+CUqu3AcwV+C9wf8T/Z00cZ+If8RP1K4U42xsfXVyFQQBbOjJRI67CBPViW6E=
X-Received: by 2002:a2e:870a:0:b0:2ee:87b9:91a8 with SMTP id
 38308e7fff4ca-2eeb30e46ccmr67649091fa.19.1720698714093; Thu, 11 Jul 2024
 04:51:54 -0700 (PDT)
MIME-Version: 1.0
References: <VxRX.1720687573779163831.wDFU@lists.yoctoproject.org>
In-Reply-To: <VxRX.1720687573779163831.wDFU@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 11 Jul 2024 13:51:42 +0200
Message-ID: <CANNYZj9LXwGTswVAn0Fon2SyjQ72g6LY=cNNDE_YeE95Kvn-TA@mail.gmail.com>
Subject: Re: [yocto] get version info of dependencies in recipe
To: yocto@lists.yoctoproject.org, tastyherring@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 11:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63468

I'm curious about the use case. How is the version information used
once passed in to cmake?

The correct approach would be for the pkga's cmake build system to
obtain the version from pkgb.pc (pkg-config file) in its sysroot.

Alex

On Thu, 11 Jul 2024 at 11:40, tastyherring via lists.yoctoproject.org
<tastyherring=gmail.com@lists.yoctoproject.org> wrote:
>
> When writing a recipe  I would like to get access to the meta data of the dependencies, specifically there PV so I can then pass this info into this build.
>
> >> pkga.bb
>
> ```
>
> DEPENDS = "pkgb";
>
> EXTRA_OECMAKE += "-DPKGB_REV=${PV:pn-pkgb}"
>
> ```
>
> Is this possible?
>
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63466): https://lists.yoctoproject.org/g/yocto/message/63466
> Mute This Topic: https://lists.yoctoproject.org/mt/107159621/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

