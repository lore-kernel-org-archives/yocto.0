Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9C8FC433EF
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 09:55:30 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web12.6625.1641462929669405882
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 01:55:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HIhuFkNV;
 spf=pass (domain: gmail.com, ip: 209.85.222.53,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id y4so3312047uad.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 01:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=gW5/ULElTd6jtxCwTYj8NoEgC85f3dgYxJnHtnqmdds=;
        b=HIhuFkNV9g/Pc7zwdox09o56eEthBeGHGxyL1a1bSZ77hSCuQL+klsxtraYduSy7Er
         Uqoc3spuUu+e02BTbv033q6dIp1FWKr9JDEjYGBS7AtVVKvIA1sE2GWSWkicYKw4crdq
         SnFTfI19GbJnbD2e9ocV0mLjO6uXW+eKe0FkO53YIlMl+5X7LuOfbWAXCl8FYuKgytMX
         Kx5GlztkykCD+eSjzHZdkn+lNNJ8oIDwt/njWg0caDNYAMkTbVkXywVF40z5VASPA58W
         BqLNFJllmtHtGyWnSowSxoWkTbjaLZy3bgIj3sRroFU/p0SE89boEtdtNg/CzJFNFsui
         8VPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=gW5/ULElTd6jtxCwTYj8NoEgC85f3dgYxJnHtnqmdds=;
        b=wGxWbbGXpDk9bhdC0dedGotVehxsjKDzJTNBXKKKSbFmmNU2c6s5BMX+lwrVyZ2xL9
         1Xu/v4gbWTzQ0bAR2ur0jldOJWcKakuXuShfhWsFfhG5maoObuPeROynlbqzeBgbS2Pt
         12GTfbSXxlIsHdQI3w6BR/4I8iISVAyTFgFljfoA1P4Xr6PXmBwylvIJuSGrNlKC1vCZ
         HPSYqMlHDiJRkkeV2uASAVvFaU5xSPGxeGaJhgijlm6K1RT6KaETNtPBK9zCPu/wESux
         2QlG6qxaOrnNiDYkfj5oRaORfzLqJjUFDVLEjbvZDWNiE8+6BXXn1608lKinyr18JD44
         K26g==
X-Gm-Message-State: AOAM533mfWLDFSOO59NOz8CyNWRKi/jwBrj2cbTih6jRb6G7APAsJbPe
	zLBsR6Ty82eYAb856+V7PbrWaYUNS3QQBTpf56SirUl0F1s=
X-Google-Smtp-Source: 
 ABdhPJwHCRFI5MR+kGxwhjl3OFjhItG4m8zCjKpONfi2T2IxA0Nr/g2/ivy+FLwQgzUYChx8A3Ws17TXCXGGYr98XYg=
X-Received: by 2002:a67:fd6a:: with SMTP id h10mr19469143vsa.38.1641462928651;
 Thu, 06 Jan 2022 01:55:28 -0800 (PST)
MIME-Version: 1.0
From: Jupiter <jupiter.hce@gmail.com>
Date: Thu, 6 Jan 2022 20:54:52 +1100
Message-ID: 
 <CAA=hcWT5BFAwLfER2ZWnfO9VFAtZ4uo40Q3vGpRNE7+PdhWWBA@mail.gmail.com>
Subject: Honister wrong date time
To: yocto <yocto@lists.yoctoproject.org>
Cc: oe-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 09:55:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55746

Hi,

Strangely, my system built by Honister always has a wrong date despite
NTP service being active, has anyone got that issue from Honister?

# timedatectl status
               Local time: Wed 2021-08-04 15:17:10 UTC
           Universal time: Wed 2021-08-04 15:17:10 UTC
                 RTC time: Thu 1970-01-01 00:06:20
                Time zone: UTC (UTC, +0000)
System clock synchronized: no
              NTP service: active
          RTC in local TZ: no
# ping google.com
PING google.com (142.250.70.238): 56 data bytes
64 bytes from 142.250.70.238: seq=0 ttl=60 time=9.462 ms
64 bytes from 142.250.70.238: seq=1 ttl=60 time=13.289 ms
64 bytes from 142.250.70.238: seq=2 ttl=60 time=12.869 ms
64 bytes from 142.250.70.238: seq=3 ttl=60 time=13.129 ms

I have never had date issues built by Zeus:

~# date
Thu Jan  6 09:26:35 UTC 2022
root@solar:~# timedatectl status
               Local time: Thu 2022-01-06 09:26:45 UTC
           Universal time: Thu 2022-01-06 09:26:45 UTCk
                 RTC time: Thu 2022-01-06 09:26:45
                Time zone: n/a (UTC, +0000)
System clock synchronized: yes
              NTP service: active
          RTC in local TZ: no


Thank you.

Kind regards,

jh

