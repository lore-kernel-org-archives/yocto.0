Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 760DCC5B543
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 15:13:27 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.89777.1749568399434127545
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 08:13:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XQS1328C;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60497d07279so11258436a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 08:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749568398; x=1750173198; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=65ULjVl4rrJIRz5u9oI0I6n0CZbIzfiAYDmYsXhmoOY=;
        b=XQS1328C+pf1nNOGbro9PUaM92MwOrHMideNX8oYwu+IsdZcqno8a7myucrb35yvEa
         QxeN/JgJM6vKKGrZ+iSDlWffA+7CasC8CA0oUU6BhUhsKZzLZAFhAurXfpSSMbmarq0n
         3Mj0iagtcfbS091EBeT25WxAB3C0PbuzsHgTLHEqOkmdFwWkNwtlGB5WwfToehnQDGXu
         mukYl7gf/EgfUd14XYDUf6kNhC1gJl+kbEWH0GXwFfD2vgBF363FxUB3khw/8vVk+vBT
         6OsEPNgUQTCnT1KUi/ap6dIu35LzV5rsmVhyxe4UlVcR7lgEON1AqFzZxIYT8h2nGc1C
         NyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749568398; x=1750173198;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=65ULjVl4rrJIRz5u9oI0I6n0CZbIzfiAYDmYsXhmoOY=;
        b=h037Kf+lBLVomTYRLZ2NN4xiec/XaQe6Wh5FNwVGEI02Imw7MXUODJ5MhSwwRKMpgb
         +1BMKpFZwV3nu+uD8xoislrdqoC6K+nE4z4cboCV3zLzsjIIVfN7r/xvXg9DhT3d84tC
         HmuD04PoH3CAHGiT+h/1+VXv8ti88NZXRZFVd7ex+G0E7L0qj1D+BbLDBlAwDKwMkkhh
         VAseyX0pAu88HZ+rztE4+h381z5NAo2fQ+nM05P3cvgj1Db+n3IQTAVR+xV6BsF5Mhsp
         zPZKC2gWYY0sjL03Y+h4YCF4HvN4wkQcPRLbgnvnVC9/ACIaA/WOk4nGB3dHCbPKuhcN
         cv2g==
X-Gm-Message-State: AOJu0Yy2y7bpfD4D2nn41f4IMB0pnul/spQUrNRIVOUFMN1SqQvn4Lme
	LfElNNf43PkxHe8O5ZFT2AUGfmexGGl+wepGUxnCu4g3npZom3DyCSdz
X-Gm-Gg: ASbGncvC+AShKFYTpENEhDoPkGkqVfVvJKNXBRULdq/xzPYRfc1AppC/Dy6Rb3gN3zU
	Xl/IHGf7ElUVh1WrdobiNohDIRDB/W7y82AfmQbNUuVEj/Fy+UQC288ZKdPHDdJybbSQkeWiA7A
	rJSt6abPRD+IrQilYmy5QSrQPtk+M/ggSdFX+dmCVGtAlOCP8pM9Tm0P+QVoLb76iXQgMKK4+61
	77lmHVJk7kg8g9b6Wb2EWwhgHkkvAHS255czqO9Gaz0bas2/PCqmm2XghPxJiLmILqbv7hbPEBQ
	cEXTl67JgQsWKgLY29FxmIwJkRrfcbERq60W9MKM3Kpkb+CX9dx3b4cdB6t2X8W5XMTjBuBdwOb
	+y3OC
X-Google-Smtp-Source: AGHT+IHWiUrn7j2khrIEwDATop/iOVwHMNpCIttJq5UxOEirZJYWiYXFXEu87FyvHgF3IRoAvBqwug==
X-Received: by 2002:a05:6402:27ca:b0:601:f3f1:f10e with SMTP id 4fb4d7f45d1cf-6077350d9a3mr14878658a12.5.1749568397555;
        Tue, 10 Jun 2025 08:13:17 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607f0847541sm2968276a12.76.2025.06.10.08.13.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 08:13:17 -0700 (PDT)
Message-ID: <96b1e79c-f5e5-4d5f-b609-3ce89757a7bb@gmail.com>
Date: Tue, 10 Jun 2025 17:13:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [OE-core] [yocto] Yocto Project Status 10 June. 2025 (WW23)
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com,
 "openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>
References: <CAK5yBb-PRoA1biG6PA_hX_RndM9QqG7G_7ikYFUZE3goEaP-_Q@mail.gmail.com>
 <8ce48df3-b8a2-4b95-96df-bf0fc1ac1eaa@gmail.com>
 <CANNYZj9EQ=xjSXRii-6RYk4uzV6kzztzWCDn1Mo5z8nNyvURhQ@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANNYZj9EQ=xjSXRii-6RYk4uzV6kzztzWCDn1Mo5z8nNyvURhQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 15:13:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65502

On 6/10/25 17:04, Alexander Kanavin wrote:
> On Tue, 10 Jun 2025 at 16:46, Gyorgy Sarvari via
> lists.openembedded.org <skandigraun=gmail.com@lists.openembedded.org>
> wrote:
>>>     The clang build time and size increases continue to cause
>>>     significant concern.
>>>
>> Is there more info available on this somewhere? I'd be interested if
>> there are any concrete recipes/configurations where this is showing
>> prominently and could be used as a benchmark. Or is it more like an
>> overall "lot of small things add up to a big one" issue?
> Please trim quotation lines when replying.
>
> It's simply the build time of clang-native and clang target recipes. A
> huge pile of c++ code, probably the heaviest recipe to build in
> oe-core. At the same time clang is a critical path item for mesa (and
> thus, anything graphical).
>
> Alex
Ahh, so this is not a regression that could be bisected, but the cost of
the new dependencies.
Thanks.

