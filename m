Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.8668.1627426104838314822
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 15:48:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MEqEtV/6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id d8so181502wrm.4
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 15:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=9r4WcOs/z/W4SxMeOCeUeVteOWw18hLpyhwXboCygT8=;
        b=MEqEtV/6ZZM3ag4atxoHzJ7EKkgdMVEwKoC6VWPTzoM2L3DHk8bKTxzGnB5bXgfuAw
         FCpPfZjwTbkaZQ0kDYeUC430JBZxgsRQV/+U0oj8X/EyOFSFmpw41rRvzxgiNYQZAVva
         bx6/prNpoFJFXkdGnDKTbu7kCg+ODBJE+CtJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=9r4WcOs/z/W4SxMeOCeUeVteOWw18hLpyhwXboCygT8=;
        b=MG94LnDAGImJyq+FfP85j1K7zVfbxWWDIdVseq+gg8vKEJ2F9pVeB4++WoTMaddBEB
         dhfXi9aG5EQwtIbKgwCnkr/pVnDdc/+/GdBtD+/giApDrwvEExc+Eh3JlYA6tGw4UcI6
         E2RH7VtCnoEaAZrlPtQazoW1oyX8wy0Ila+NQb1Qh4Umh+qTOeiV3TbiA9PBz+6RrPQC
         nTu8EftPJWMT2Jgcqq9Ohya+HAoDk3LgoRvtV2lhe2bc1GLYck7iWrk3Pcrk8QS1u6xm
         t001MVJfM24QxIi//dSjdu95mf0oSOYenz+Mop2XZ7lR/5biTqWX8UyyrODb2RgtJM8l
         /gBg==
X-Gm-Message-State: AOAM531ISA1lD7HAM38wiL6D6LjmHXA4vy8+mAAu3THik9Dv+fpMVJ2g
	9G6IypKXbBdhyDG7j8or1Y7hbbrQyWGVIw==
X-Google-Smtp-Source: ABdhPJyRTE/GzXEdlm29Eq2aHmCRj9PB4dChIk383KHsKCvXhrLT1tTjCQdWTriNptYjbglFeZ0OeQ==
X-Received: by 2002:a05:6000:1248:: with SMTP id j8mr26741457wrx.391.1627426102992;
        Tue, 27 Jul 2021 15:48:22 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:824:a750:d1fb:a5cc? ([2001:8b0:aba:5f3c:824:a750:d1fb:a5cc])
        by smtp.gmail.com with ESMTPSA id x15sm4541426wrs.57.2021.07.27.15.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 15:48:22 -0700 (PDT)
Message-ID: <de37e80025dfd59afd14daa355bf6100e70a656d.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.10.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Tue, 27 Jul 2021 23:48:19 +0100
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.1.10.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.10.rc1


Build hash information: 

bitbake: 0e0af15b84e07e6763300dcd092b980086b9b9c4
meta-agl: 68c0029602e539d005c33b6c36baa32e34bf67bf
meta-arm: b79b9122e0dc66ca03542f82ff4fa8eb05174f61
meta-aws: d66de6ed82fe6b89e3b8b2626f4db6f5d7d5713d
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: d8bf86ae6288ae520b8ddd7209a0b448b9693f48
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 8fbcfb9f023e0eab7f122eb19607a1c757b0d245
oecore: 9ae339ace9274be71bfd3b5e5da64dceac9fa963
poky: 2a848e95074318f3a243df7b3f40513a13173a82



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


