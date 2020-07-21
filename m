Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.14089.1595315678742572325
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 00:14:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=BEF3D9mo;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.46, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f46.google.com with SMTP id b11so8680768lfe.10
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 00:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=LaGapx0DMR9bFOEgo4gHX6qxTFSNc7RKkdNjMunsPAU=;
        b=BEF3D9morJ1WBP2QJ6yz0rYlrgu7LJWMCXj2VmeGiBJuFNBRcT88yBkZMWbOH6z9Ml
         d2prdLJ+JvE3UbvdNhRHoKrup0FG9PdtA/2gITbMGP+UiZOaA5oyeM/nY/M5eMM6d3dL
         BxDsUrBUDdl/Csf9p90ZrQPEbmeudCce+Jd94BubzDhL0YFEjZsRbaQC4u9QL4SyRywy
         A76uKjZgEDMD8v67x5c0G5LXGqarMQ91EBUwwzO8S+S0XTw926Y25yosM3svauzoIvb/
         tcuBWXJum7/Wchszwg9spzO8OuFY66ZavOfj2JwxCSg+IkyxGsYNL0PCmV5oVfMWUp1Y
         AXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=LaGapx0DMR9bFOEgo4gHX6qxTFSNc7RKkdNjMunsPAU=;
        b=Bje1fC8ONV9DaFeYx3PseVlkpaL2E6jzCs/s/myl3UdYlL4GjNuuaQPdtxdIoF8abZ
         nsY2H8p30XH7MPJw9u4YDRehVp0GHp6CZ5v5ujc4L4lzvU8tzT7U3c5+0T9ofCzOEAJM
         OAky8n+YYlVcynE2yE/BgzOI+FHOSCfVpDA5mjQM7SQi4b+Jq897sIVrgrU/cazHGLY5
         U3C1YV3GGCmlC3QNFVDVk6g6e8HHL6ANByw95c095f/+pcYGunokcHJfYpwk2pOvdgsB
         CB2V1zGaEmtCJVlKMMfR0IcuYrcMwlcMNKbU3feNyQELj15/Z9XxezU/8xeInRo+9yov
         4kRQ==
X-Gm-Message-State: AOAM531PKfBO58huhDyIR4u1vScM++6u15liBYmJRQMjUXcpSAnJn9lm
	96Jyxy1PM20LN2ZKEZfFGG6mwdXC+OE9ehTx2tnbkw==
X-Google-Smtp-Source: ABdhPJyRQL6mnO4lVN7w8KFf9D2XRAzA8FlijbpxD6RrJUq5Va2DhVwIymx0XGACi8yHG0OfgIh9A2Zqhz9MYeXZ9dM=
X-Received: by 2002:a05:6512:2082:: with SMTP id t2mr3749969lfr.142.1595315676738;
 Tue, 21 Jul 2020 00:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <vwp4.1595315227497297738.rdls@lists.yoctoproject.org>
In-Reply-To: <vwp4.1595315227497297738.rdls@lists.yoctoproject.org>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 21 Jul 2020 07:14:10 +0200
Message-ID: <CAEt6NwrhMH=RV2UEdK7tZ_bMABXBjZsTXmWLVToim9Ev3fPvFQ@mail.gmail.com>
Subject: Re: [yocto] Building of warrior branch fails when building with Ubuntu 20.04 LTS #qemu #yocto #linux
To: Bernd <bsp@swissqprint.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Am Di., 21. Juli 2020 um 09:07 Uhr schrieb Bernd <bsp@swissqprint.com>:
>
> Hello,
>
> we are using the warrior branch for our embedded Linux project. Since Ub=
untu 20.04 LTS has been released we would like to switch from 18.04 to 20.0=
4. However, Ubuntu 20.04 now uses glibc-2.31 where the stime function has b=
een replaced. Therefore the build process of qmu-native-3.1.1.1 fails with =
the following error code:
>
> /opt/ti/tq-yocto/build/tmp/hosttools/ld.bfd: linux-user/syscall.o: in fu=
nction `do_syscall1': | /opt/ti/tq-yocto/build/tmp/work/x86_64-linux/qemu-n=
ative/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:7404: undefined referenc=
e to `stime'
>
> Is there a work around?

The usual approach is to build inside a defined container, like pyrex
or CROPS, for example.

Greetz

>
> Thanks a lot for your help,
> Bernd
>
>=20
