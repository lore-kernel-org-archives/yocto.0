Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.1195.1607376147617906183
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 13:22:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DxqKQklL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id a3so564023wmb.5
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 13:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rBebsRFHP8YQ77B6VURm5Cz1CBOUTuI9N3f8wCTgkRw=;
        b=DxqKQklLpMWXhwgH2RXKZJVKUGBxmyUPvIZZgpa0jyikluCkl/NvtTQYww5WYeBREf
         YO8U5RVLk3F3LuhDv4X6DL7iflDyHav4Pe5c+JSNHcjdBeOiHe8CFuBXZHtoUJEnXo5K
         gX2exYeqb1cN4ABCGEig8vyQW2H4HQHhKAIyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rBebsRFHP8YQ77B6VURm5Cz1CBOUTuI9N3f8wCTgkRw=;
        b=qgZW+IVMjGG6ACNcYcuGwfSeGv/Ls7isTIJSggiM0i04mbz9BFw7NKSvtUAizIRdYD
         cKynkR7LAkqtPGYEtHJGyhT6oSjmTtlOYNMogaNllgGrdeKD+zMZc3NxPuAwhIYC9e57
         WZ5ONPT+ZC+vr/cY42/IljmfeAA7u+KtQdnAF6KWbtXdqfaWbbwl9j3WkzmSdPACnOie
         /QQGiIF9PI5pGIW9Sb6rGNTP6CxXnbYEKos3Uz+mM2Ma9FzOChscPY9wbz7yfHwA++ax
         YmocZXtXbt7RJ0nyb8Gza2DJN11WBM3FGWae2QryyimX2ymF5GRU3W7H9eurqEVfhMZl
         Z7rw==
X-Gm-Message-State: AOAM530zdoCUL8cJkZcRhg7IteMgjvZW4/7A1xYy0HdEZaGz8tdraBYM
	U6d7MQeQiqUoiiHH/GH9APBiqw==
X-Google-Smtp-Source: ABdhPJw2O+NFV9cUXuYB0HbAqTb+1O1Ng6WWJOWVHl0251jYYPZWI92xwVc996flLq+9IEszu7v2Xw==
X-Received: by 2002:a1c:e0d4:: with SMTP id x203mr818887wmg.68.1607376146135;
        Mon, 07 Dec 2020 13:22:26 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 9.8.c.0.f.4.1.5.6.b.7.5.c.c.0.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (9.8.c.0.f.4.1.5.6.b.7.5.c.c.0.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c0cc:57b6:514f:c89])
        by smtp.gmail.com with ESMTPSA id v125sm544532wme.42.2020.12.07.13.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 13:22:25 -0800 (PST)
Message-ID: <c0e45acbe1c5b263554f0f44d8606ed32dc228d4.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.2.1.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Pokybuild User <pokybuild@centos7-ty-4.yocto.io>, 
	yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com,
 akuster808@gmail.com,  sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Date: Mon, 07 Dec 2020 21:22:23 +0000
In-Reply-To: <20201207161503.7F6DD248FC@centos7-ty-4.yocto.io>
References: <20201207161503.7F6DD248FC@centos7-ty-4.yocto.io>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-12-07 at 16:15 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.2.1.rc1) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.2.1.rc1
> 
> 
> Build hash information: 
> 
> bitbake: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
> meta-arm: 03f2d78e456160f8f6f1ffe693a7bd1ad123e5d5
> meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> meta-intel: 5492270c796daf8b7a7cc9cd93880c2bb25523c0
> meta-kernel: f9d30c65d08c9cef20d6487a7aff0fff40acc823
> meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
> oecore: e525592e83062ed9a9b2d3cb37c8dbbcfe8759a9
> poky: 333f24caec0bb498804dd77cbe762f2f4d9b2225
> 

I'm building an rc2 as build-appliance was mis-configured in this
build.

Cheers,

Richard

