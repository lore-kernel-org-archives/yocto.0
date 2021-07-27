Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.2221.1627397381851188428
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 07:49:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=URyvQUe/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id l11-20020a7bc34b0000b029021f84fcaf75so2079025wmj.1
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 07:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=5Ipmye/GMxr7IvVmnkIdqoQLM1kKcozFckeyNPH7MYM=;
        b=URyvQUe/SgqyOYRN+7k3lHqnhMgK89xd1Y+sqZ4IPC7FXRTOL6jVyJ9IL1SgcH1rgX
         59gNv8AHyvRSdZUhMbzHsFRvDgBeA7/N/uluiq2NzV4OG0S6PwYmHe6ZIPyXf8MmnB1H
         DtVuIr7UTHoX0gcbPxPXDTF3PcHuuJWHt3kIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=5Ipmye/GMxr7IvVmnkIdqoQLM1kKcozFckeyNPH7MYM=;
        b=Nh+9SFboS0ph+kPDKZFhmuZeB+y7gRIsU1JAPNcJg73v2LjpE+6exhkx8mfXu45bDn
         PpqMjYa8D/4ZMc65VZZkGq4XSo+4PS8NF675gJOZsUvhOK4/bhOGHQuUt9QbSCQ7eMSv
         18vxt4bEZhHzHleM20UZh+LiVze6g+Imh6V70JoMe+nFMnWt050firpv/unBKdmHCFcp
         og88RKerIJKurLwIaMpfYZT94OV6AWIB74Po1DgK/hV8dDuTAnmoZ1TYJrJAimFa6lKr
         g4ZkK3sfMiD1ZS/tUPgbgYrXfD7kbeSzlzOYSRsnIQMY4zY67A77u0L6ul1KAuqDD20m
         PgNQ==
X-Gm-Message-State: AOAM5326gfGL2/lzrH8VkLiFdhLVtSY4tb5VSz9jXwNm32oJhhSjOtm0
	Gkbb182pZSE9gxxVr/mTP6D2IlKtF3kjVw==
X-Google-Smtp-Source: ABdhPJxdC+INhfH7Up+g9PMQLXEYX3AjQZFhyUS7cnJdEhms8EsLp6q7n4cWzf/luz0r4xBHAtsfow==
X-Received: by 2002:a05:600c:2f01:: with SMTP id r1mr13056887wmn.178.1627397380082;
        Tue, 27 Jul 2021 07:49:40 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:8722:e8c0:4ebc:1cd4? ([2001:8b0:aba:5f3c:8722:e8c0:4ebc:1cd4])
        by smtp.gmail.com with ESMTPSA id o5sm2686082wms.43.2021.07.27.07.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:49:39 -0700 (PDT)
Message-ID: <0c60ce5c7e5456d31dc1d89a94451f9d39aa08be.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.3.2.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Tue, 27 Jul 2021 15:49:38 +0100
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.3.2.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3.2.rc2


Build hash information: 

bitbake: 731fb52eb03338c0bdb2a2256c22c64c22bcbace
meta-agl: ee397d099bf5db91f14f357f874a0fb074208fbe
meta-arm: 4e14a1c5ee84808cceb5354c6c26dd8ebe6696ce
meta-aws: d66de6ed82fe6b89e3b8b2626f4db6f5d7d5713d
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 4c7eecf2550fca9136a332400be6da358d264cb6
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
meta-openembedded: 8fbcfb9f023e0eab7f122eb19607a1c757b0d245
oecore: e458c15627e7b27392d158cbb9417f66424aa7d5
poky: 31c639eb8664059eb4ed711be9173c223b4cc940



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



