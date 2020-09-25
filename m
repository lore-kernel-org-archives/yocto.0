Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2163.1601017648971789386
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 00:07:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bytesatwork-ch.20150623.gappssmtp.com header.s=20150623 header.b=bJdd+okP;
 spf=softfail (domain: bytesatwork.ch, ip: 198.145.29.25, mailfrom: daniel.ammann@bytesatwork.ch)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EB16D38C1106
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2020 00:07:27 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id j2so1405905eds.9
        for <yocto@yoctoproject.org>; Fri, 25 Sep 2020 00:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytesatwork-ch.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=AELa7XuMrvQpOt2VeNmv7qP2Mo1c6leT1zkWPbyLFsU=;
        b=bJdd+okPEj6LSlbzgIyIcIyN4TjRNQWnnfFojL1Nn6THLqKK600gD6+4L+pZIaMdU0
         FRQSsZv6Zh+Vhjyq9DRjqzg1wTVitzEuuEVXh93MnglWpqZsSIOudcMf6Fqu/rYlNI3q
         7Zi2yXu1vJ4mTdfIaufe6CNDqBVMQPfuUJh0KSLmBklz2by8HtbAD2u6R/v4TJzhOa4w
         pR3kYz3o69Xz5+lpffULLSb+gswPemUY+sRgLOq9ctFv/+MWeNcV64aK81ESNaSBJGUe
         ALG4zbridt4UmhLnvqklWFeplsA239sGNKm3l/FkmePKEKkqefXGR6AgMRjeEnVlc/Wz
         9pVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=AELa7XuMrvQpOt2VeNmv7qP2Mo1c6leT1zkWPbyLFsU=;
        b=ovfGKYCslFZG1W9HRbN9GDZVFzzDC7+QFdV7nwO99SFNDNYfDLi/DwtAQLgInXE54R
         /SLlbJJKmFj8SnrLYAHhOfHoOEtIYL2kp3VqMteoMZ5mSfJFnh8lowaC9J7npI8lzkAO
         APLFFFLo5rGCMlhAxFqKcUPkA1EmO3YFkv+NU+mSrH84AKR9LwT2EqvtaJm0YeGs01w/
         XgkgfDBfQ6f6BMET4fXegaLemZnlaXjiulmRrkz7ejXytYNujr6e7K8avTO/DNgnCxCJ
         3On2WReiVg/cdxMQCj8kzOOcHxASItPYMu4IuE08ElArXe9zccE+UwgOHVeAC3HiaPu3
         PoNw==
X-Gm-Message-State: AOAM531+Oz3Yp1hp9RdA6tRx0RJ5RctxqgWt57U2lsyt3qCRhaOsR6pW
	jQwqXYdvhJB8gerazPyNAKVPsI39ppOpRgPX
X-Google-Smtp-Source: ABdhPJzchQU/JfxZ3HwNdofYR3WQY/25AFsvHHx6oYmDhZRtSb4lHw9uhSkiJW/zCbbivVitKfsmYg==
X-Received: by 2002:aa7:c419:: with SMTP id j25mr2517525edq.109.1601017646033;
        Fri, 25 Sep 2020 00:07:26 -0700 (PDT)
Received: from [192.168.2.42] (162.40.150.83.ftth.as8758.net. [83.150.40.162])
        by smtp.gmail.com with ESMTPSA id b16sm1245342eju.64.2020.09.25.00.07.25
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 00:07:25 -0700 (PDT)
To: yocto@yoctoproject.org
From: "Daniel Ammann" <daniel.ammann@bytesatwork.ch>
Subject: Per recipe licenses with dependencies
Message-ID: <3b6d1659-5abf-846c-2bf7-7950657904b7@bytesatwork.ch>
Date: Fri, 25 Sep 2020 09:07:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi

Is there a tool or an simple way to create a list of licenses used by a recipe
(in contrast to an image)? It should include all of the dependencies as well.

Thanks, Daniel

-- 
bytes at work
Technoparkstrasse 7
CH-8406 Winterthur
Switzerland

phone: +41 52 550 50 67
