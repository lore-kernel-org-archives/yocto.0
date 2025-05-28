Return-Path: <csanchezdll@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35F9C3ABB2
	for <webhook@archiver.kernel.org>; Wed, 28 May 2025 18:18:10 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web11.2592.1748456286093358379
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 May 2025 11:18:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G36x0cvY;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: csanchezdll@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7303d9d5edeso51621a34.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 May 2025 11:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748456285; x=1749061085; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LOD6YjCZLIErvoV2haSDhFV9ne+p6fK4R+uiPdJdru4=;
        b=G36x0cvY14Q/x8l/ysfsynpH+bdi50SXNTVS3m1lhr59LV6DTcs5+3FNSCZBCSksb6
         AKUxDw9iC8o0ePFujhtoCsyuOqmR5h0D4Hw59Jyb1DmbXKHuOUMLdG1fafh4pCDlrzT/
         dzkPxaJJ+tGQQ0txnU2uwd8/HohhcIpours5d1/gTbxNNhrEvnQWmV1vxod0pwVzNz4o
         s2DilMvK150K9xkPkXDamz5UjLcd1kEexVJZDKcAvVQQqdrdaU0fxHwzxkFOPR1IkcAs
         ubdiBFr8d/1Y2wQ4Ko/cLtnQJH0wosVGqKZ3rqoGxMy3JOpH43Ww1Q1pcVNQOYrJYbXG
         B6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748456285; x=1749061085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LOD6YjCZLIErvoV2haSDhFV9ne+p6fK4R+uiPdJdru4=;
        b=FclwxK3/i0uy9+ChJH0SdTt3+0KlPyj1jCS+t9FhDdhRGi726vEJjKq2ZAtv92aliL
         Hgpua5HwtQLUfM8yCr42eJw5OLfm9t+CcEb4qlLZP1M9h3FT4R+ioanMWG7nMAa7u8CW
         7hWLd/D9kVfi0LjaY81OdNI0obR6DoSmoP0Qs4PsG+GLgTNRpfHdh2/aHq1VCYpqTTSI
         bT7wW6LdbvGPcDOqsZvJ7wZcLlk/0jLDFTBh4qVX14h5aBURtNMniiufvgxuW5JDs/tE
         VOv/0CvuZE2cVtrj91zYDCNFV8J6e0tvs+IojKF+aVKcN36cNL3bmtr+4vJl25u6MAnx
         jnoA==
X-Gm-Message-State: AOJu0YyBQm4k6XK9HyS1ejZ57/gC1lfFt4NhE/TWiV+y/h4tvKTYgro2
	dacPwHPqS+xmBikm0UVH+D51U8YgfAhAc5kplsQnCx1UQnldEy43bk3IrRyO+xFGYS8tTd+Oh71
	5S+JgVNUq8bIYEqCn6ZtztR5bTFFijlU=
X-Gm-Gg: ASbGncvux17L5+0AnWZDcAVsikTG1dMcuRcUmy+prxqV1D3GT+T0tdFdGQ3XG/h0ZXE
	OUcnWlWTRb/gQqozyQEKfuD6CE/CA/Iu4FnJihvlfxbsJEHird7nmQPtc+Cdyo8A3BfB66cpefx
	5hgpYgDdLlXgBZNvRnKB+Up005FpYM3S/mH6s6LoEs
X-Google-Smtp-Source: AGHT+IG0LqzlorGyd8hrBbNLzbqTg7pTWwRfPXHGj8nzrIASyFv4zQLGl/K4Kuq2ZQBDGbJVUxKkNVMvuAM8Y1WXVoE=
X-Received: by 2002:a05:6830:f8a:b0:727:3f3e:53ba with SMTP id
 46e09a7af769-7355d13dc75mr12533149a34.26.1748456285308; Wed, 28 May 2025
 11:18:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+KcR8ARBUj8PTcvA=rx-yob=WHYcS2gUnGX2aROOjy6bZGqWw@mail.gmail.com>
 <206f4a6f-ee3a-4981-8196-cd762940cf6e@gmail.com>
In-Reply-To: <206f4a6f-ee3a-4981-8196-cd762940cf6e@gmail.com>
From: =?UTF-8?Q?Carlos_S=C3=A1nchez_de_La_Lama?= <csanchezdll@gmail.com>
Date: Wed, 28 May 2025 20:17:53 +0200
X-Gm-Features: AX0GCFvOOBFpGTw89b8t2RN9rWcTd9LekTpgoUszsJ7Vm3QMNCGNZyEQ8wyizJo
Message-ID: <CA+KcR8BFfxj7Yk47E=fXrwGoZuVDYUf+FSmmKV-djjW1dgxaxA@mail.gmail.com>
Subject: Re: [yocto] Default KCONFIG_MODE for in-tree defconfig
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 May 2025 18:18:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65437

> In-tree configs seem to be handled as allnoconfig, even in Kirkstone.
> I think a patch would be nice.

Patch sent https://lore.kernel.org/yocto-docs/20250528181524.2797025-1-csanchezdll@gmail.com/

Thanks,

Carlos

