Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web09.4509.1631217594824745485
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 12:59:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UwH5wRKZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id g16so4216123wrb.3
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 12:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=L+kE5k5evIz6vKQ2vSSO5WoBlVsmuNNKfwGdmw/nASo=;
        b=UwH5wRKZ5DEVVIfbLBuYxJAareDCjLTMCqWtU82Hs42m//KtzmjWuGtPUXUSrPUSxi
         99hDIshTaeJwUhKF2fHl3RwTsKL04d/lPbVXPYvkJEmfBLRaiEAVE69lD75JzkvCI93C
         f+p9jb4jq4DP0u33e6gNBzTfPeB5ZUjsB9Q5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=L+kE5k5evIz6vKQ2vSSO5WoBlVsmuNNKfwGdmw/nASo=;
        b=UGI7Rx0IjqdwGXtFxEmU7kVGExfy+xXp8mYsYSnlKw5ujzgQsn0ONGEggK17F80PqM
         AXGY2UiwQZQkwtdh/PcOB4eBjB3WKuVRzSU+xtnNwKJXYKkTCUyQ9cPOUZVs6Mc5vgm8
         8eKuTgHJhg3TWuqMX115K/0SSoLYM9G1M3763/AYYQa0VK9+tlsIhLbPQqQ+fLAW5mZT
         ZekMgbQF4N2e+rnRwGz6NUTAzKl7gPafY9oZesmjdLS4pIU5cFsesV4JKU/7uCqA43xh
         npeEj3v5lxEjtnr7Lp2YxhyTxH0YZrzQB5T+P+ysYj+O6m8Xf+yWpfJ02fG64TFS7SQg
         wTww==
X-Gm-Message-State: AOAM530D/3DRBPX7QvE/60dmrkt/t6l3rXdO/agmGtXFHc4cnDU/f4sv
	P+IVdi/1mzQw5jWRsR0kma/IZXA5qA+ikfsQ
X-Google-Smtp-Source: ABdhPJxqrWYzyGeQzocNDP/tACoozetvXz9hMkQ0+IR4kYl9uHrydd6cI2KjyU/Qm5hZUVW8/kwnsw==
X-Received: by 2002:adf:8070:: with SMTP id 103mr5603871wrk.74.1631217593172;
        Thu, 09 Sep 2021 12:59:53 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:69c:dc1e:bcce:ea45? ([2001:8b0:aba:5f3c:69c:dc1e:bcce:ea45])
        by smtp.gmail.com with ESMTPSA id n3sm2728218wmi.0.2021.09.09.12.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 12:59:52 -0700 (PDT)
Message-ID: <32334a100a5bd0c20239e42a463e5604f00345ec.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.3.3.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Thu, 09 Sep 2021 20:59:52 +0100
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.3.3.rc2) was completed on the autobuilder and is
available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3.3.rc2


Build hash information: 

bitbake: c7b506d11df78cfc4610db6578745eaa6220b13a
meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
meta-arm: ba82ea920a3a43244a0a72bd74817e2f00f4a1af
meta-aws: 171aa2cf4d12ff4877e9104b6ec46be54128e3d8
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 5c4a6b02f650a99a5ec55561443fcf880a863d19
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
meta-openembedded: 7bd7e1da9034e72ca4262dba55f70b2b23499aae
oecore: 567dd35d893c5d8969d41f263a24da8fbae3fc2f
poky: 0a2ca9d60f3851515a79d5aa9ddd8b4069b5a206



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



