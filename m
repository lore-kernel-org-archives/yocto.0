Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web12.11135.1600932842678044971
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 00:34:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VYAWxgrV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id t10so2661227wrv.1
        for <yocto@lists.yoctoproject.org>; Thu, 24 Sep 2020 00:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=H7VMsqVs7Ps+CnN+J9yKViSUb0rla8UI4sYkWtwGajY=;
        b=VYAWxgrVkiJZ8gGpbd33Xna7SXck9Jt2uyFPaK7E320XoQZR0D0qiU3lf+zr/WVR+w
         TvTmQgSd4TOek7OAjRuLU9rU4fD00nIwzeWoj/8jqdRYdWAVmypS9HWMWwPbUcVxJ33n
         MvvwMuKhzXYGuJ6W4E7O9sd9/ZhFvmzVqDwHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=H7VMsqVs7Ps+CnN+J9yKViSUb0rla8UI4sYkWtwGajY=;
        b=EhPU4oACbU3E1bcFdY+ZWr7TtZRUwYEQ2uruBvYZkjyybMJ5Arw4Ie6QysyepoARVA
         4Cbr2+Mcna/SNzgW/BCcSE/51dDiHrp0cR5+Q7HvilLPDgBmvNT8ne+O6r621zAeXtPd
         hU4ENGllTOkLcFMAqTeq37jzmuJuw+oO1N7vi5RCcFx4HnFK2TMGYrGtb2kMgvSpBYmg
         3p4mt+jNlGqNXhd1yMt7k2ZKxj1ooXyk9bQz5D9N1i+EnJNL65X71Dlg97/frem4vlDJ
         Cxmk2qZ46xm+Hn10gWc213DqRcRB0TLCfcfmEDGznA7p0NYQkl2Dm22Qn0ZKVI16JJnD
         PcKg==
X-Gm-Message-State: AOAM532EQJa6Hsiiit96zcBDFmlguws0KsvgktIA3w7n99px/3R3AgkR
	gsosKrTAHk/4IFOTqaJxI+WrXg==
X-Google-Smtp-Source: ABdhPJx5FMCQZnTT9CtC8fKKcmTRuj6VWyFS4ZlwyT7hlsheIelPzwJ5/J0aEwjGQAoV21uHGsaylQ==
X-Received: by 2002:adf:f6c2:: with SMTP id y2mr3466096wrp.79.1600932841042;
        Thu, 24 Sep 2020 00:34:01 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 6.1.9.3.6.2.6.e.a.a.c.2.3.5.1.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (6.1.9.3.6.2.6.e.a.a.c.2.3.5.1.b.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:b153:2caa:e626:3916])
        by smtp.gmail.com with ESMTPSA id u186sm2334281wmu.34.2020.09.24.00.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 00:34:00 -0700 (PDT)
Message-ID: <d9cb0cfcecf697299a862f18bd2cbb3e406dc8fc.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.2_M3.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Pokybuild User <pokybuild@ubuntu2004-ty-2.yocto.io>, 
	yocto@lists.yoctoproject.org, Saul Wold <Saul.Wold@windriver.com>
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com,
 akuster808@gmail.com,  sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Date: Thu, 24 Sep 2020 08:33:56 +0100
In-Reply-To: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
References: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-09-24 at 03:22 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.2_M3.rc2) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.2_M3.rc2
> 
> 
> Build hash information: 
> 
> bitbake: 27b53186fa67d281d29b2f8e15bcff8dc2557b8a
> meta-arm: c7a1a5f9fd415e3ae1078c2a1d6af9c25e9e6498
> meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
> meta-intel: 254e3a79b3a37045f829848e0a5e04801bec1439
> meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> meta-mingw: f1e1d5a803a48ed70f2b0eaf0ef15ade70479fce
> oecore: e68df923e1bf9e82662ee2619ac9e2f239e8f7be
> poky: 0a243cd21263f498b6eca7c0b168e655dd823e22
> 
> 
> 
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

There were two failures in this build. One was a single selftest
failure which I'll look into. The other was a qemumips altcfg image
loss of networking. I know Saul is working on better debug for that and
we have open bugs for it.

I don't believe either should stop QA.

The 3.1.3 build should also be arriving shortly. Sorry about the
'queue', everything was finally ready for that release so I thought we
should get it built. We should handle 3.2 M3 first, then 3.1.3.

Cheers,

Richard

