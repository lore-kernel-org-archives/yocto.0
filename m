Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 311A3C87FCA
	for <webhook@archiver.kernel.org>; Thu,  7 Aug 2025 09:23:39 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.47472.1754558614537951879
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 02:23:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RNt98LKu;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-af95b919093so115702066b.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 02:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754558613; x=1755163413; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YqTo5yGaE1HjJr6Bs/ZIxYlmjTV4SYhb+sMXHNXRGhE=;
        b=RNt98LKuH4PpsEVlwfOIlJLeXpJY9g0Pu1jQyuT0OM5LPVAyKrL7SE3wYmN2Y0fxlg
         a0Eqh4k/dAdMsVJypNTLvfyM0F+PPrnvGjtCx88ueC3ZqWpfuiNSFueKsrIJ9X26TupG
         zNiDVwD9zouOhaPM+4P1tcagCYrO184YWiQdf/wZz0vXDmQHWLOHaITZnU9sliTGLj/t
         uq0sbyob5z9NV9yVg8Wt+6dBUcJt2p4xDN3wZwjK0/GRxuQl94qNpfo1knTPA40Der0Q
         o8Z9EI7D4TOutQGqgNgWtLKCBmzDvmsr6hwJxKU36jt590BnWMv0840rYRXeQcRnWpjr
         MUgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754558613; x=1755163413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YqTo5yGaE1HjJr6Bs/ZIxYlmjTV4SYhb+sMXHNXRGhE=;
        b=H4kruN9XO2QgNPU/FfASKR+dBCr4WZkXlRR28Yr/XQsi6GzLMUM0CuFB+YsAFM9oST
         ANOL4jc4pV6z63UlzvwB/ASzwqZsbLBKn2KnnwhBaL1juob4rRu1Cglro/iIsggxDrCA
         3tWa/v/ay/OXbGjT+AbsLTBRq1MYfSds1MFN9yfD5sLArTIJfOp+uT27PwK0l3kYpEtv
         w7KYyb9u14cIwD2g2BIucPZzrA2+cbqlYbpD/RWJwedXfBNR5lrv5Z0ejuubx5QiI/Xh
         neun8N+HDiDQfvySBg7zaZQK2Ln1sG7QfBk5B9QXG54/V8DAEAOpLK5EbCVcEwaj/eRK
         GDKg==
X-Gm-Message-State: AOJu0YxugGh8qZmPhvcpAyc4OLenBO7ODKQkc0n/xaOe3SB+lpppPa7a
	kX9YYZixxvMCnux71xUGviLA/0Ibzc91UqIFJw9EyG3Mx3Kjd9ZO3YdwWIzXzg==
X-Gm-Gg: ASbGncsU/k/H79Tg0FDlZHhTAQQZq/0N0NqgT5ciwp9gaUB8aIVG/GpfOFYlu189itw
	0yt8DzrJbpicBHPyg/Z6rb1mK5RGRokrAw3YEzZoLdCb4r9Pq9NuciAx9f/7lEEOUhi7EiAIZSO
	nCmCm1nGbKY0T2EOstmWPg4DPklMRsfSgzlgZQP7rsEPQ9i/7AZ08BrabUZl2xz+dHSEqrPzFVD
	EKNTM6M0UUithXGDLp0eQb5GM1fh21ZgS5G1bKPKZwYFM891GX+gMoKzg5k2btC/K7XNoJ/GRE9
	rFkBL9gure7Ks0bvFMgr2Hh9qtKOaPZyaw68t+b9OvRVbZJzYRRUraRgZrTWCGsbv5D377CyKFS
	S+Ty9aQ2T2mrA/zmorO1IfTigkkdLporBzLrp5uX2
X-Google-Smtp-Source: AGHT+IEXW+jYHPrMdKScPvAN3gIfDriSLeFzprvwdQDSCSaATJKM+jua70Ck4ARz1Za/zYBkZW6CqA==
X-Received: by 2002:a17:906:fe0b:b0:ae3:bb0a:1ccd with SMTP id a640c23a62f3a-af99032e2bdmr559515666b.26.1754558612651;
        Thu, 07 Aug 2025 02:23:32 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3375sm1271247966b.41.2025.08.07.02.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 02:23:31 -0700 (PDT)
Message-ID: <ab829f13-2456-4b36-ad54-3d395f5ce1fd@gmail.com>
Date: Thu, 7 Aug 2025 11:23:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Extended SDK installation fails during git fetch of
 kernel source hosted on private repo
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com,
 Andrea Galbusera <gizero@gmail.com>
References: <CAC+thW16nHpv48PKw3BMUtq19i7VHxPUq3iTFu_6wV26GSFLsQ@mail.gmail.com>
 <6834.1754494912820088673@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <6834.1754494912820088673@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 09:23:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65737

On 8/6/25 17:41, joseph.maniaci via lists.yoctoproject.org wrote:
> I just came across this same issue while attempting to install an eSDK.
>  
> So if AUTOREV can cause this behavior, is it possible to determine
> you're bitbaking an SDK/eSDK and alter AUTOREV into what the latest,
> for example, git hash is? That way, when installing the SDK, it'll
> just reference those static hashes at the time the SDK was built and
> this can be avoided?
>
I think overrides should work for this:

SRCREV = "${AUTOREV}"
SRCREV:class-nativesdk = "decafbad"

The first one is the default, but for nativesdk the second should take
effect.

But this sounds like a bug (even if AUTOREV not recommended, maybe a
warning, or even an error could be useful). Do you know if there is a
bugzilla entry for this?

