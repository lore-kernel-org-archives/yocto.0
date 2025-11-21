Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D1CFC502
	for <webhook@archiver.kernel.org>; Fri, 21 Nov 2025 19:56:28 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20125.1763754979325896312
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Nov 2025 11:56:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IVJJWUdK;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b3d4d9ca6so2070829f8f.2
        for <yocto@lists.yoctoproject.org>; Fri, 21 Nov 2025 11:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763754978; x=1764359778; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sLDQgg6MLhfWVYdLPA1nng+Fo475qJTjKaoEWJCIGbA=;
        b=IVJJWUdKGQciJjc/dOhFXDJ348QMcdg6rn3b2C2qNNQCZvrlxStmDntIv8eYMHeNYY
         EGDEsz9k230wei9uFAecY7/qUq14bZyXMilwNFWzBiHDX2cCWfp9gsY4tPJ6ZB3TQRWe
         cqog/OnUJR2f1rkEsiKicRfXiVvreaz3p35/Zbpuyub4O2FbhXpn1FAI1ejJRP/zJKH1
         uC/723Se+yOdcdOpxkmvgiUfEOAa9eWpdDVtaF2z6NK5mynihFy/PUWgEu4IYTVAWjEI
         r/ER69J73MoG7Q7JrqRp/jlGh8gmZUcYbohKNuQ+heeAqUeHrQqB+J7LRbMnfVKXsBsM
         QLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763754978; x=1764359778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sLDQgg6MLhfWVYdLPA1nng+Fo475qJTjKaoEWJCIGbA=;
        b=SGIaN3ztg3chrnK2WoWB4X2aBOZUGAYbok9hBC7G0cAk6TysvOEFP5vuv4he1Qi+Fl
         e1m/Cz8LX6NBFcqCa1GO87XMpWqmC5yKMDpx9qTfxJ4w6isFzvvPo8UER+RlQ6JbjgNT
         lssKGYylrnHqKSamQMJ8381jbaLIWLDi5LxCcEOo6r2RK4hN7PBdNnM31zzS88cSILZB
         jUmrSPBtcn65l+0U0JIE63q+lnummBbypYbhzMDFhMYhFVwQt/CI3Pc1OviY+Nm/IHI0
         fltcjMBteAqJH8xYt/QMhJ+LUrLa+4wuxk/gcBhZfPWLmeZ/SdrKJyfAsFYL6kvPYUuQ
         lkSw==
X-Forwarded-Encrypted: i=1; AJvYcCWc0YicsZqCOvYKU7XYssgCCeWLEw130BJTBEZG1yREmJRbkgUxABotlrjPC6wukNa7XDFfcw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yyqy+ZZ2BIBBzFwWi8jDaDxOlSDlsmZ1TVzQ7LNphXz5s9xV1ZZ
	cuMgml/OUZn0zIuj8FaoXHCXtvAjiWZ+kDkXybcyZL7/09ORYFjE5bEJ
X-Gm-Gg: ASbGnctL632n6aYwskrsy/SVH8TPZkKaqUAvOu/qdFZe/oNzR50TpJYxA9QQ8bw8P6L
	sr/QqwIOCcM0WOuvU/1aD1gFihFI5IEp/McWpxLf1b18bzRvCGG556eTHDAC+8KEMN/S7KOqlK6
	P1Dpqqs2/GQbRqkeWWI07cdmhADESGbATViqT2ySVAzjELOevkdfpQgCJuAJF0FksKG5nV04xM+
	nA59/sm6+lMXvK1CM00rt0HpIXj4or8OZTOYjGA0gJFSS19ttN7xyk7g6h2/fCe0HE69pVWvWOx
	d7e/xB8wUwL3+1Vj+pcrjg4PsU6BTPNXENGP1tQwt6wFSn92GT/NdSJL+KknT76biYYYHSopVvE
	3ivnR/7ypHD8FlI91KeA7pM3xBdfT75WkWeJxBBA+HRLx394kN9UkE1/76xtF535zQSSQzweqfB
	9exbJfhAfENLAwwPbRGRYOFLes0+4JCQ==
X-Google-Smtp-Source: AGHT+IHoIE3m1uVcolE6OjUBsBGaaq3FHxLBRAPNxzHvVlIHIbHCVd2w4Ex+WxyWoX1P8+AcPfVZdA==
X-Received: by 2002:a05:6000:2387:b0:429:dc9a:ed35 with SMTP id ffacd0b85a97d-42cc1d3479cmr3922492f8f.43.1763754977437;
        Fri, 21 Nov 2025 11:56:17 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fd8e54sm13020322f8f.40.2025.11.21.11.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 11:56:16 -0800 (PST)
Message-ID: <46e999f4-7254-453d-8414-b019d0381209@gmail.com>
Date: Fri, 21 Nov 2025 20:56:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: jarno.katajainen@solotop.fi, yocto@lists.yoctoproject.org
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
 <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com>
 <564360.1763630492381329900@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <564360.1763630492381329900@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Nov 2025 19:56:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66042

On 11/20/25 10:21, Jarno via Lists.Yoctoproject.Org wrote:
> there's a issue at github where's detailed istructions how to
> reproduce it.
> https://github.com/agherzan/meta-raspberrypi/issues/1407
>  
> I'm working on raspberrypi4-64, and my layer/recipes based on
> core-image-weston. I had this previously working but stopped working
> due to recent update.

I have opened a PR[1] for this. If you could test it, it would be really
nice of you.

[1]: https://github.com/agherzan/meta-raspberrypi/pull/1548

