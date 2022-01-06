Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C71C433EF
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 10:56:28 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.7136.1641466586930106787
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 02:56:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=wiY8ltss;
 spf=pass (domain: burtonini.com, ip: 209.85.221.44,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f44.google.com with SMTP id t26so3988476wrb.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 02:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rj73pLP4ZcMIPz90xk/7kXdl5BQMVRtL7KkoGuuuBns=;
        b=wiY8ltss/9ctrUH6YrncW1W54VTX9knZ3bWaaix/CWmS8alpTBWIsHsLfUAaDHpbb4
         p+Iye61zwQ1bqCMGJEOulnsrF7clwSJ4fC6gQwgK6gMuQlw5JPmvMisGhPgzy8dwJneW
         9o+vDaOQeHCLPPuBBVygjQuTuROeRpnLJssGBOGcxOGwh2KJt2OxHe0ad+ZRHCrul8aq
         0FjAIHBn0TTNcLbnTY7ev50n7l7xoi+Um2uoy6ofUdQjYPvQ8brUIkx/3wWvEHJI0+/C
         04Ru7fOEBFLclIYSSHz7hKpX/19YSuF0xCeE/3n4AAJtZL648EcIretKgVhAqft69VjL
         +d4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rj73pLP4ZcMIPz90xk/7kXdl5BQMVRtL7KkoGuuuBns=;
        b=0fmhPKawH+QKXtHOHuLwfRwhiUkW6p81tEKwcJIjQOiAd28/1tAkgXu0Qu5pMP46Jd
         9vuVbUEKnfIdb8ZVy3e/J/DFiGCMrDYE0CSmtZD3t4LbV+dOgsTFEsZ+BA+D1UJWcEOG
         W8XqFHElKX8JnO3HNlUVtGlcw8MGeeoqRA9L10g8tIReu2hz3KSU+bTM9E6PxxpoPWth
         L27D2R0Pe26A6rpl+hEavSFASL57LM4sLquZgfqncQMJJHw+/v4hXSlrdty2ToaBtzXf
         htD86+dpd8KVtu1E5S+CFTOPdZAS/EKPWbnkmGhoRMsC/IqwlQu5r1DWOilDIkDPdq8J
         vGiQ==
X-Gm-Message-State: AOAM531hJYXpawMbD0sPr1JF/Dgq8mAZV4llI+a2DeiYETf99zjMhEFx
	Xge9FlTnJ+ZmIT/6b1e+nXb8d/v8eLYyenrkNfwwjw==
X-Google-Smtp-Source: 
 ABdhPJy7JNr3o2VrZpFdL2eLPOfk2JkYaSv46J8AcAwKSLOHWprLcBVs6vI5ZY8fSnQpJM5r3PsUBuanwlh1M7nDtBI=
X-Received: by 2002:a5d:59a8:: with SMTP id p8mr49151228wrr.497.1641466585107;
 Thu, 06 Jan 2022 02:56:25 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAA=hcWT5BFAwLfER2ZWnfO9VFAtZ4uo40Q3vGpRNE7+PdhWWBA@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWT5BFAwLfER2ZWnfO9VFAtZ4uo40Q3vGpRNE7+PdhWWBA@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Thu, 6 Jan 2022 10:56:14 +0000
Message-ID: 
 <CAAnfSTvrEx5tL5Q5C1wYjdA95V1+iUyUR+Egbi-ywngxR_=s9g@mail.gmail.com>
Subject: Re: [OE-core] Honister wrong date time
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>,
	oe-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 10:56:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55747

Try reading the journal entries for systemd-timesyncd.service and see
if it is reporting any issues.

Ross

On Thu, 6 Jan 2022 at 09:55, JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> Strangely, my system built by Honister always has a wrong date despite
> NTP service being active, has anyone got that issue from Honister?
>
> # timedatectl status
>                Local time: Wed 2021-08-04 15:17:10 UTC
>            Universal time: Wed 2021-08-04 15:17:10 UTC
>                  RTC time: Thu 1970-01-01 00:06:20
>                 Time zone: UTC (UTC, +0000)
> System clock synchronized: no
>               NTP service: active
>           RTC in local TZ: no
> # ping google.com
> PING google.com (142.250.70.238): 56 data bytes
> 64 bytes from 142.250.70.238: seq=0 ttl=60 time=9.462 ms
> 64 bytes from 142.250.70.238: seq=1 ttl=60 time=13.289 ms
> 64 bytes from 142.250.70.238: seq=2 ttl=60 time=12.869 ms
> 64 bytes from 142.250.70.238: seq=3 ttl=60 time=13.129 ms
>
> I have never had date issues built by Zeus:
>
> ~# date
> Thu Jan  6 09:26:35 UTC 2022
> root@solar:~# timedatectl status
>                Local time: Thu 2022-01-06 09:26:45 UTC
>            Universal time: Thu 2022-01-06 09:26:45 UTCk
>                  RTC time: Thu 2022-01-06 09:26:45
>                 Time zone: n/a (UTC, +0000)
> System clock synchronized: yes
>               NTP service: active
>           RTC in local TZ: no
>
>
> Thank you.
>
> Kind regards,
>
> jh
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#160223): https://lists.openembedded.org/g/openembedded-core/message/160223
> Mute This Topic: https://lists.openembedded.org/mt/88234719/1676615
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [ross@burtonini.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

