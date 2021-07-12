Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.10741.1626095342827778032
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 06:09:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTLTfOAP;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: koansoftware@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id gn32so34514390ejc.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jul 2021 06:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=IT2jur9/l536JMoyug9QUJEOJ3HTw0hzENbpqdZ42Q4=;
        b=NTLTfOAPsxeQTcyzUXqCRP4o5M+u8aUsuujt5gMYJCWvnKPQvNI5j4NrDxi+rjolUS
         /GvFKU+hPHS7YaTI4FZMLeoJwoXjmOIuW2HWFq1PBVoVzq3bLbbe+YuMvhUXBZWd6VZP
         QAkn578JwA8RL3w3bKlbfpfA4q4m/ilwz0IAMIbA8C20z1NXG3/Rb6DFUJLxPOy4zp2Y
         N9TnXkr8Blg4MEnG9T4maDja1swqWgl3pqO/0oahb0/g+lhe8mWhIBCLZ/sZ8I5CZnt8
         R4RLPuoGvbP/NpE5P9vkXC72SHLsEDHRAuUAEqqizfK7EoFBb4VjVe4rguPE1XWTU5lZ
         MVjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=IT2jur9/l536JMoyug9QUJEOJ3HTw0hzENbpqdZ42Q4=;
        b=GJHxnXEKxwY5Igur8rcFk2+141xut6x+m4rmdvk7iRysk3IMT7XzSbA7yZBlgRbFDg
         KAMLgfiSlWHWTCDF4SS+rXslhB2auikOWVDnmFNUhSB+jRVqCAg83fzv2as89LM5hPYj
         YMQ08YVfPtb93Qdn51fbiBUYicoJ7wblUjLtKljxK8v8N9nCNmgTluNArl9Y53HPIJxM
         j0Z0zXye20wfRutjBu19tPzEDmZvtYAFOV5RLi4RwLoaJiYXk1tBzqCrXDn16i47PEpT
         nZcykPvzti4jHxngOmqEVVlIU0fIFECzx3+XyWoOllljNk6xVQhkaf79F+quCjE2c/PI
         P1ZQ==
X-Gm-Message-State: AOAM5325qSoLRePdR1VZou56tsDHfqlacXaTXJmRA5QL6psqTFRS0QRv
	yehDWB+NCyxcIYok4F+Ry4k=
X-Google-Smtp-Source: ABdhPJwSnHiSZGxafNnmDoVe8+pWKDRN9YOOcHiSPdof7CnIUYbiPwt6ce1P8utrxmzPfxJk5ThnsA==
X-Received: by 2002:a17:906:190c:: with SMTP id a12mr27332447eje.37.1626095341206;
        Mon, 12 Jul 2021 06:09:01 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from [192.168.0.6] (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.googlemail.com with ESMTPSA id z6sm1514545ejo.77.2021.07.12.06.09.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 06:09:00 -0700 (PDT)
Reply-To: koansoftware@gmail.com
To: yocto@lists.yoctoproject.org
Cc: leimaohui@cn.fujitsu.com
From: "Marco Cavallini" <koansoftware@gmail.com>
Subject: [meta-spdxscanner] Question about meta-spdxscanner
Message-ID: <bcef287b-9214-aa03-3274-2a84f6d7ede4@gmail.com>
Date: Mon, 12 Jul 2021 15:08:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: it-IT
Content-Transfer-Encoding: 7bit

Hello,
I see that meta-spdxscanner has been moved to 
http://git.yoctoproject.org, and doesn't maintained on github 
anymore.https://github.com/dl9pf/meta-spdxscanner/issues/21

Therefore the only way to get in contact to developers is writing to this ML

I am trying to understand how meta-spdxscanner works.
I'd like to test it without any external service (no Fossology) 
therefore I am trying the INHERIT += "scancode-tk" approach.

I am testing it with a dunfell version and I noticed a lot of errors so 
I switched to master and the bitbake build started but again I am facing 
to a problem

ERROR: bash-completion-2.10-r0 do_get_report: Could not invoke scancode 
Command

I'd like to have advice from you to understand if is it possible to test 
it without any external service and discover what kind of artefacts are 
generated into deploy/spdx.

Thank you

-- 
Marco
