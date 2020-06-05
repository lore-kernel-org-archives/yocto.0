Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.13424.1591370681336362535
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 08:24:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hpHmSLm/;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: lukasz.odw39@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id q19so10538591eja.7
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 08:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sZAgVHgk2W5R6pPsdvXf2+iyf5q5cm3LX9IlMdg6DpI=;
        b=hpHmSLm/nIVy5kfV9TMEa5UXJYes7FIR3dOFtMRpImf0mMBpLX3vBGM3E2i3MRlE1r
         IJevNQDwVQHe12TDyo6oBaYtyR1vLZfxZ5Aukjcv2CKsmc6qwSutI52fIrHQ3s1JfSzl
         eBU9zzVIyrKNaDkjhJCgYSb8Qft1yD9QFMFaCTjr5Mk8NFRYoAa4q5NzWcy2UUqVQj2R
         YXNRCa2Grm5hTaNBAZ7VNTuiTbRN/Obn1fgQF1GnwXobLF6p2kcE+tKqNt6kPFdugmug
         Jzwrfzt5dDOb3qdzZ3LAGU9w5NMAyVhDn+FZ5q85qqrJKBLxysRLepIJZPxfrqqG5j6G
         yARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sZAgVHgk2W5R6pPsdvXf2+iyf5q5cm3LX9IlMdg6DpI=;
        b=gJFCFLGV5a0Aze/3gNm63xbmHbXl0AAND3h6JUx5REyl6PfgxQEnvZheKdHR45Jw/Z
         +gX7rRscR4dgqtYULybl6RZGYztmzufCK8rPOuwsf1ZgTke09F/wlZAu22+ESP/Td1y9
         Hw14dAcdCgMgSnOkgwu2FngHMpKo0X4sqIE401mkMRE3R0umXeuV3mnDRMWnyFoq+Af6
         EseLjl2CeysdWKCE1Zkc8HQnPM3x2+rlwgR5/euEHtaJDeU3Q1f0xZ6FZUIEHLHgsc+L
         itNdC8MLZtwYoFBMzRlJKSqr5xhkzCCHtn2AsuxA5OTwVZzp5j1NwCVPXcssnHmqjqHL
         phCg==
X-Gm-Message-State: AOAM530Z0XfBA4jW7Hake6st+IVypoAPBJcE4W26+/5W4CWPBvIAlpUD
	hUZEruxzK0B62AR3+JwVV0jpO6TrEPN7gXODEPydZ3B+iHA=
X-Google-Smtp-Source: ABdhPJwyioWeNMDglrip2Ph01ueKta9zBV6Pdzij7yrDPa6c7CgQg40eWt+okyRbetpZJ73PU0hgC1gwLF0ZM34aNwQ=
X-Received: by 2002:a17:906:6d19:: with SMTP id m25mr7248915ejr.524.1591370679563;
 Fri, 05 Jun 2020 08:24:39 -0700 (PDT)
MIME-Version: 1.0
From: lukasz.odw39@gmail.com
Date: Fri, 5 Jun 2020 17:24:28 +0200
Message-ID: <CAGK+5gXLTrvb4bFBZj3owByWLJAWB0w=5DvEia0Xiw2JZOr3mg@mail.gmail.com>
Subject: SDK: generate license manifest
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello,

I am building SDK (bitbake image -c populate_sdk). Those SDK binaries
will be given to customer.
How can I generate license manifest file (open source disclosure)?

I can see *.manifest files for host and target, but they miss license
types and license texts.

Best regards,
Lukasz
