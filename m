Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 044ABC7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 18:39:18 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web11.4829.1751395148271321109
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jul 2025 11:39:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ErEFucml;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a169bso6337951a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 11:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751395146; x=1751999946; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2/QwuagMD4G+0HwA+W64zJFj8hJZvIf/ZbiYxJzxV6w=;
        b=ErEFucmlUiK/elSjjKdXhwqEYOgqMKVJdzZVgCqJtm1tu7F389PryKIt4Hfsq0kk9L
         u7jNWS+A1jUA7KnKyR+B/Dmsd4lmSsBtDdpNc04/wU+uQgu0Em7NRAxZ3iOoxFJOrmEE
         7d7bcRAhBJcI1HxfAHOB4dX95PgiYodCZlBGdDqgCZGvY7DYBlLq09B1cwveG6/Rz3p3
         5+N2QxXMkv01jQ139teZsSNLyUiRbTyt6hzJoWbe7HBvQIvlyh3yR9hLGtPklCdKoUSt
         GhG8jJsEuLVLY0Nj8lqNkKSBBk5mkfWU+2LEhnT8pkedSlfPb/tnZKDRVU0kM2V+4ozY
         xa0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751395146; x=1751999946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2/QwuagMD4G+0HwA+W64zJFj8hJZvIf/ZbiYxJzxV6w=;
        b=PqlfU1azseibNy1GGk2fHDbA8jiNwH2dmq6cQ86w0VWFiSuyzQ/XRyhc20e7Rd8f6x
         CsZu4xWiKvIL4huO8K/og5lJu+tecEx/tr1QeY4Ro9i0KDWyuaPKnTeY05uad16gl2P/
         eOeF3yICFvaa+GxlGGlM1qBF9JlHuNDFPE8Mn/BfMJUtOwEIVFLWT+f2qRhN/7owHM5H
         EMghnUmVPEwN2FmIzgEFmWT9a6DwTjrceOqNBjrAoqpks38zRWEY0BRnCQnvyYKt1Fwy
         v8yFuB1V3pcT/oiAnueAQe9UVB9lik1zp4Xoh/GOY+L8vADZ3iW7Vyle/lw1AKAr+f9L
         FITg==
X-Gm-Message-State: AOJu0YxSKg6RAE9iq0tVx1R8T71NK8P/u9+XI9t7t4k3FP41+6GHGFN0
	r+TeAYBfMVk3EPvF784JgTX0u76zKI8SVqaJqXJT4lLjAC6Y0dvdW5ttcupTzA==
X-Gm-Gg: ASbGncsull05jfg0I0esq1UYi91BwYKL5+A+ZtoDYegRQoa/GW+jDD8KW8oAIFxunmj
	MW9hzYBLwrry0sl5jL+6aJRUctUxo8SE1oRiTtbifbaTo1FNjarPMAIaKWnwkcyslUL1HiiEw67
	rYMxB3NNrzaGZLHqKdM5vCaMqBlRerLiHB6ow5UjMyS3aqI1FhqmuZgHUGtR9LUhSnwpDeKap6R
	Fp61XTTfkJBPzxk9zfsfOmHidEfcV5P9LNJv/4RI0ep1qW+TlZfi9NiDd+hOSDqYA68pw0Ug7Ra
	Hi8owpeFIHYLEOVPuZc3YV2eNWSLVzPzo3ijeaWdZcBbDseBDz+Cb2qPtGcGf3yveVSsEw==
X-Google-Smtp-Source: AGHT+IHl4djJ4wktk/7UxWIYkZNYY6lmMv83jKH4ndezccY4AEFCxqe2m10YsORsQ7bVOC6xKpR0BA==
X-Received: by 2002:a17:907:724f:b0:ade:4121:8d3d with SMTP id a640c23a62f3a-ae34fcf4522mr1691941866b.12.1751395145949;
        Tue, 01 Jul 2025 11:39:05 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363aecdsm934118566b.16.2025.07.01.11.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 11:39:05 -0700 (PDT)
Message-ID: <738461ba-f0ec-493c-85bd-46da89b25eab@gmail.com>
Date: Tue, 1 Jul 2025 20:39:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] mozjs-128 compilation error for Walnascar
To: yocto@lists.yoctoproject.org, ashish.shrikhande@gmail.com
References: <DShU.1751384525372532665.xV1B@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <DShU.1751384525372532665.xV1B@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 18:39:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65584

On 7/1/25 17:42, ashish shrikhande6 via lists.yoctoproject.org wrote:
> I am new to building yocto. My platform is Raspberrypi5 and I am using
> yocto 5.2 walnascar. I am trying to build gnome desktop which requires
> mozjs-128. 
> I have attached the compile log.  Some of the errors from the log are
> below:
>  
This part of the log looks strange:
"CARGO=/home/ashish/.rustup/toolchains/1.84.1-x86_64-unknown-linux-gnu/bin/cargo"
(this is the first env var set before by the first failing command).

This seems to indicate that for some reason your build machine's local
Rust installation is used to compile mozjs instead of using the Rust
toolchain provided by Yocto.

Have you changed anything Cargo/Rust related (or any toolchain related
things) in the recipe or in the layers you are using?

(In general Yocto is a self-contained framework that takes care of the
toolchain and its configuration also with usable defaults, without the
need to tweak these most of the time)

