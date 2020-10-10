Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.5068.1602330570348394636
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Oct 2020 04:49:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WdVQWGkS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id t9so12932213wrq.11
        for <yocto@lists.yoctoproject.org>; Sat, 10 Oct 2020 04:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=st4dv0q1liqCqpHfWBLtIT/dfldP9f3CYBObRE/utlg=;
        b=WdVQWGkSXH4gJtRyImf3s/kYh8Pp5D9aIgt7lhvBlGbZ5xV/rJzBaWIztndzqoY61h
         HpMyteRYOpp3O70jpPvsr5ko8kT0zDjGqlpKhULWci3cU4vZpgfV4vc+ul59IfFiB3Ag
         u17cVFwzmbUnH7rZLnsw9oVI2l1vUDigvi040=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=st4dv0q1liqCqpHfWBLtIT/dfldP9f3CYBObRE/utlg=;
        b=l43st0iV8fb1kbQU1D4RdiiaSeLfyfUS4taLL3IZVy7sDLqMgtCO4oZ479kWFFlNT9
         QXMAyvoaYd4Hucw69XD6YkYohufwMvG+gwd6At3nBGIdPsAw2hZ9lKr7aYV2NEgEN13J
         igBA9ER5taGu1lDg8uODjV6W/V/uFxshwkcPQ5XJ222o+O72vpnTw32iW95VXlQa4F9v
         j7EtVinkAHJcAIqzQ8CnbWR+QdCNzO8V9UJNBLBlo11Yki6qtX5JGiEiaNKmWInTZRUz
         35teMHNa3UR+BjJ7maGT9LUXywK+f9NAx4MuawELZ48P9GAxv0/NN6lEbWy72n/gnWJs
         GcJg==
X-Gm-Message-State: AOAM533QUTMM8zwnSoJODFzeWxXc6WJvGm+Cd2pmwvVkykeQqsberz3A
	58Eu/ZWtVgrR6glRRsQW/SWybQ==
X-Google-Smtp-Source: ABdhPJymlgUKuYyDr7K/FUN1zDCvEeqXMW3yrtvtC1H2zikbyBexHPHTnj9sXRk38J0dHJOtUjt+OA==
X-Received: by 2002:adf:ed52:: with SMTP id u18mr20554532wro.357.1602330568682;
        Sat, 10 Oct 2020 04:49:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 0.6.6.4.7.a.b.4.4.1.e.0.e.3.c.2.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (0.6.6.4.7.a.b.4.4.1.e.0.e.3.c.2.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:2c3e:e14:4ba7:4660])
        by smtp.gmail.com with ESMTPSA id x6sm16283436wmb.17.2020.10.10.04.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 04:49:28 -0700 (PDT)
Message-ID: <95239db17dd56574c469f85b971ec19c45bdb471.camel@linuxfoundation.org>
Subject: Re: [yocto] Cleanup populate_sdk artefacts
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Arthur COURTEL <arthur.courtel@smile.fr>, yocto@lists.yoctoproject.org
Date: Sat, 10 Oct 2020 12:49:27 +0100
In-Reply-To: <CAL=Sv2Jmks03QQBBoSmr7Ed2y=HEyi4d5Q6E=1Oz_yQp0j2-EA@mail.gmail.com>
References: 
	<CAL=Sv2Jmks03QQBBoSmr7Ed2y=HEyi4d5Q6E=1Oz_yQp0j2-EA@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-10-09 at 17:16 +0200, Arthur COURTEL wrote:
> Hi all,
> 
> I'm working with a yocto Dunfell (3.1) on my embedded system.
> I successfully built the SDK install script for my image recipe
> with: bitbake my-image -c populate_sdk
> However, the other day when I stopped the SDK generation before
> completing (CTRL-C) and resumed it a couple of minutes after, bitbake
> was not able to finish generating the SDK, saying:
> 
> Exception: FileNotFoundError: [Errno 2] No such file or directory:
> '/home/yoctouser/build/tmp/work/colibri_imx7_emmc-tdx-linux-
> gnueabi/my-image/1.0-r1/sdk/image/opt/machine-fb/5.0.0-devel-
> 20200924080856+build.0/sysroots/x86_64-tdxsdk-linux/usr/lib/locale'
> 
> I was able to determine that bitbake uses the variable DISTRO_VERSION
> for building some paths during the generation.
> My DISTRO_VERSION changes for each generation because it is built on
> starting time generation.
> I had to remove all my work folder in order for bitbake to restart
> the SDK generation from scratch... Which takes some time...
> 
> Do you know if there is a way to cleanup the SDK generation properly
> in case of a halt in the middle of the generation ?
> 
> Thank you for your time, have a great day!

bitbake <target name> -c clean

should clean up that kind of issue and allow it to continue.

Cheers,

Richard

