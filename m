Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13ADFCD3439
	for <webhook@archiver.kernel.org>; Thu,  7 May 2026 13:14:12 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11572.1778159649178413167
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 06:14:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=PCBtd4rB;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8b7f937ef44so4388646d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 06:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778159648; cv=none;
        d=google.com; s=arc-20240605;
        b=NrEr1AgzPrpsFuWl6tDJ4I9cH9wVpbMNSSXSiTgoaBsHP8uwYqh400p+FIZJneuD8v
         jZCsDSUn32bDIQLZwFObIY5rnox7wWDvCFBmy+4Ufoxo/zy3m/iNsbMBg9Nxwj0oMeiZ
         0qmJshubv9i1ut+DNaYIXertK4436S0rht436dIzPFrcO6PhTjmJXxTjvajMx/Z7B9HU
         311nFyLe+XYtfpbiAb7FQr8+Dz/eSAcepYszwU/+5ci61BdcFVFzhBFzn3vukGMKdyz7
         8w45d8/Rq+22svNPzXbTbYv6ZKSuNl86T92EyDPPm3mRa0PFe9U+GpYi3RUz1/6x2kEH
         nLsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YDqhr40LUhfzqrs9mZat2TNlu3YDvQg6xtW2odd5yKs=;
        fh=6PM27ola9bJGB/Te2zhq1DFSLYggdsv9cIE50+hLoJo=;
        b=WLlQwpuXSXFDLeLNc/3uhHNi6QP2mzbakDlswFPxFY0SPypXlGvEzgAoi9146YP4dk
         TCeKnSieDCWquhhiZJpPB1vlw6CTdm8XHpMO/E8BZL5AnuJGViv0nnZVCS2vf3xKsEyh
         hxZcOB0ORtfpL+J16PAJJn+iJIGTS97dAXQ4SlfZh6aKO3VHUUkMG7C0NsqeCQn/vEu3
         8mZJ38IrBU1OAqXrHqxBqQzIPau0IcMv61OdZBVOk4f38HsZ8DbdL1mPWuYTQI01rote
         I0Z9FyzSzQk2TN7bfv0dSV1xbj/AkyoHL7uxsWqyb8bAcQFM2JIOw9YCZcfQSYA7pHZT
         5sLw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778159648; x=1778764448; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDqhr40LUhfzqrs9mZat2TNlu3YDvQg6xtW2odd5yKs=;
        b=PCBtd4rBuAWRtL8hCUpJ05THdTTeC1zKidH3oQIIhgb+MLFyFiNkeMxyZudYBdRkoP
         5kOnYDED+jP7I5QexuNWRequcvVYu+FKqvsXM3MgbCLSrygE0poCMqc5z4m0d9cAPa9Z
         uJJdHsV7veyxsxP6tFyD0z1XLBBr9hWgBKvHXBSIZ+KPJ0iM0ygrCCjm6m9jxPwHXk0Y
         nTu69cbMpfFi2W0fy45hFE6nw+zwlFawx4tAht+FmHeXX7YpPLye7nUnFEXvIvtUwbOP
         74pgm0fmn8KTvHnSKXG/CNnHY7IeXXtwL/79e31A1FBulxKEsr/ZLMGriJhQZ7esByxG
         ya8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778159648; x=1778764448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YDqhr40LUhfzqrs9mZat2TNlu3YDvQg6xtW2odd5yKs=;
        b=C88mwKR+aNNQNE62omfdqSTFPAtRxEhfi4MaznwgJWlzlRqj7SSsbbGrqHwChcVZEZ
         no6lBwZWHCzQMl9gtj7eM0h1LYs+cuUptSBXZkn/rBPkRoZBgJ9OQyASP6Peiic+Youp
         nRP2nThEUE24u2lyrUzIyy3vfq0xR1PauSDjF35uxgFYLGKHUE4IjwX3YrqcvS0OJ2Ly
         jLUxwgWA/C5USPJOkR6OcomtXRV14Ve+GvyBFJjx6gG1WZePGFsqRyZlAWtGO4XKzZwb
         mnFxUeXbyHpV5VNVOdxDadPBh4Tb7K+a5gX7DAkI4OeUnnwBH6ZneVmWidB8JKl9zpJp
         pQGw==
X-Forwarded-Encrypted: i=1; AFNElJ+WPcl4wfgON5uVUuq3bbXDBr5ZyLK63MOwKPkxrGdctzlwspT9yTMEqDXsAVXjCDYf7BOP5w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxxyBNheYX0FMazVNxQ/2BBZz9GNPdNL2B91xyEbEypA4+MtLhd
	pU0Z0H7KrecfrZ/Z9nlFUebMINsrtQM1xiuKw4Ve0UbHSW4uL7rLvnxYMMll455OyDCcXRhw1SB
	0y52DHrgGLSTJB3e9swDVWUbdnrKY0vU=
X-Gm-Gg: AeBDieuI68MzWKAdfMYU2KSVc/dDK+PvGFeSNuYmfw4sqO/TRpm9855lvNQpzW0ZSCG
	6i47slT5OAnVFmAq4eWSj2ThH3lyYGL1ygLulX+Q0vPHnpd6eN2JBTmG8fGz04dwRF4GL2ZVqCw
	z92JHuy8kyFAxgijWlOU7/IxVsiyHxglrY23OSSi36x6S224B2v7/MT8OjUjk5Rs1MdoFKgkbqt
	JjoFgxBb9t4jduibLTng0fgMKfKdV0KIXqB/yzL+cGFDOl0kvvh2L3sqDNkijaVV0WxPtAy8YFK
	cIM/ZP+zxKpgy/+lC5mtWU8bLvPwtx0c0L/UvmqgXme4/zPPk5qw
X-Received: by 2002:a05:6214:19ea:b0:8ac:a553:528c with SMTP id
 6a1803df08f44-8bc45f1aee3mr118052856d6.42.1778159647970; Thu, 07 May 2026
 06:14:07 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <6100A74F-B06F-49D5-9895-DB7D5B563773@arm.com>
In-Reply-To: <6100A74F-B06F-49D5-9895-DB7D5B563773@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 7 May 2026 15:13:56 +0200
X-Gm-Features: AVHnY4Lrl09NphEZSJi_FOj1vYi9Xnddvehsx3EfxGg6sg2eNzNuaF0F25mnMPA
Message-ID: <CANNYZj9YxLpwDe4pTiT5-WMYUG=6AdV1u=dQHCZt45Pk9QF=xQ@mail.gmail.com>
Subject: Re: [bitbake-devel] proposal: build pipelines in bitbake-setup
To: Ross Burton <Ross.Burton@arm.com>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, Zhangfei Gao <zhangfei.gao@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 13:14:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66493

On Thu, 7 May 2026 at 14:37, Ross Burton <Ross.Burton@arm.com> wrote:

> To be honest I think I disagree with you here.  There=E2=80=99s already a=
 load of =E2=80=9Cbuild pipeline=E2=80=9D tools from sh scripts to Makefile=
s to the multitude of  task runners written in every language under the run=
 (invoke, rake, etc).
>
> Does the world need another one?

The idea is that bitbake-setup should help users do something useful
with a build they set up, by providing a standard UI. You'd type
$ bitbake-setup run
and it will give you a selection of what's possible, and then proceed
to do it. It's the equivalent of 'kas build', just more flexible :)

If someone has written their pipeline with make or a shell script,
then bitbake-setup can simply run that (e.g. a pipeline containing a
single step), but I think there's also value in having 'native'
support for multi-step pipelines. They're simple (e.g. executable
commands are static strings that can't be parametrized), and if that's
not flexible enough, there's indeed plenty of industrial-grade tools.

Alex

