Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11927C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 20:11:12 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.5807.1703016666984723075
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 12:11:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VWdrrMMG;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50e34a72660so3717266e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 12:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703016665; x=1703621465; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZDqJAQupJvjsK3qu2g7x4/ArICP8PwZs2I+jND0nTQk=;
        b=VWdrrMMGwwD3kOXDYNviMyLQPnoJu+AP5jNWuI1Lw1rc3PvB0lSyUkT0xL1hIugy7X
         ZVI7zjZ4omZxcYHmZFfUfaURLcca36IBqS9iab5LNWfzpO+utq4RD8efNcIpq2Rj+tpr
         Nx7FhmeTTmsa+/IuEEOwX+IDjiwO1pXD9kZY+yD8CwM7l/n2IpYnVcMYDvaNka+cBKvj
         bd0aUT5Fe2YA3r1sEsSZIu/A2sNC5dZnFLSyRGkkIWBaofnlwuybeeaGVuyi1s5Swe6V
         k+mCKm0WHxJDqQvHNDxNgUiP4+55ZMWERo2snuwmyuVQf+azBjXlkGGjq9Z5+FI19XNQ
         TTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703016665; x=1703621465;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZDqJAQupJvjsK3qu2g7x4/ArICP8PwZs2I+jND0nTQk=;
        b=Vod3/MSK/sKOI4I06xOMXy7JknNry0+aSCk/Xh3Cz1AEuaGVP4OaX2yINdin7ZrbN5
         6eJWJWdK6+GdO0Kzfn9MGM7UkVwnITv7CbR4fSAhKbm3nCT0EAsYLfIAffnfWArwJF/G
         Wd9gFhX0HX4xlvcC9eZn2lVVdAt4Cdg7/pQooQTTqWJz5ShUjgflo4oWzWIAgYqW+sz4
         2HNhXDN9n7MkgOcEZoU8iHtXtXrHwEmDPUdRm5Vtq/pwaWs686XLCx6Ew3Ctjg799VLQ
         FjKx0a7fPa24aM1U2T0ushlnsz1jtqkYiMykiZzTTKncC/TKtEcJSC/31nDLBOT2S81G
         WViA==
X-Gm-Message-State: AOJu0YxeqOnGY/n8yfQb5YcC8DkIDvdphnl4hpF+vufBrPqJ9UjxKccs
	DRaCY8HwwdnqSOAPZOBl1enjTPQ5c/YqgWZF0INa/QGlSlk=
X-Google-Smtp-Source: AGHT+IEOHXRKo2VC10pHSt9SUOHwqNzQA/DEWA0pufnIcjd0GkGbQLgPqjUdmugjmtpPfdFn3cdMshXzRhqL95f/KKw=
X-Received: by 2002:ac2:4c4e:0:b0:50e:1b7a:59a2 with SMTP id
 o14-20020ac24c4e000000b0050e1b7a59a2mr5631972lfk.86.1703016664509; Tue, 19
 Dec 2023 12:11:04 -0800 (PST)
MIME-Version: 1.0
References: <C4938758-12E0-421D-B6E8-F79C211AE3FD@arm.com> <6041.1703014810569017464@lists.yoctoproject.org>
In-Reply-To: <6041.1703014810569017464@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Tue, 19 Dec 2023 20:10:51 +0000
Message-ID: <CAO5Uq5Shxq+jLM_OaTaq1h3JjBKupYsskJsXE4M0oRdPiD9OBg@mail.gmail.com>
Subject: Re: [yocto] QEMU core-image-minimal cannot login
To: yocto@lists.yoctoproject.org, an010@live.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 20:11:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61992

On Tue, Dec 19, 2023 at 7:40=E2=80=AFPM Aleksandar Nikolic <an010@live.com>=
 wrote:
>
> Sure, sure, no argument there, from some reason I thought it used to be a=
 default behavior, I guess I am wrong. Thanks.
>

It's default in the out of the box local.conf
(meta-poky/conf/templates/default/local.conf.sample):

# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"

Likely you have something else?

--=20
Alex Kiernan

