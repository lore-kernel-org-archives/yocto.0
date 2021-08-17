Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web08.41162.1629216064812366597
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 09:01:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EEwgRh9A;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id bf25so23791478oib.10
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 09:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=IQttiKsGXp5PtQWRLyu8Yqu0EqSyHLnHomi3kWz1K1w=;
        b=EEwgRh9A2nzKDaBy8yAvjNiARj0es2rDg0XYVCjYM6ErdV33SGQPYQVrKlrakpHFCg
         Z0UvL3cfbm1rrxVA9WbfJHS/XugLLS+CA8B3MHs2YalolPsG6vC4FOY11pB5ofvaqU3m
         dTEkKqTmNrr3LtfrLiu1H/toQ6GjvYr+k65aqNDA58x9lY9Rf1ovSRlBHjsKJIfoedj7
         4LRs5DuAgIyT1iNg4bMUktKDtkmhBu8474g5gzbigWBivI4ceD2yXo9Fxz2KOjJHb6It
         O3sRp7TZI4KWZujV97P+owQ9JrdJ15nssyixoc/ze0+lstkBXrdvvv/i644pqaJPJziL
         BUgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=IQttiKsGXp5PtQWRLyu8Yqu0EqSyHLnHomi3kWz1K1w=;
        b=rSbaUW9f1pjG2ZENs+YtI8KPsH1/3uqNxIVANH2qy2KHo+YpyJh3dVIrKcmJJORSet
         De6PpCwXa/BoE+01xbnYlFow2cJ1JHDaEb4GhB/GxEdl3+iZDyH4vE/KQfPc5F2KPP8z
         4iA39IhVXdtTH0AbAazcjSjhyCiDaKDXjR4uvvKWLkscHE08Vmq9SZuoP4m8d01gb0rt
         IsxUo1hV9DGBlpWTYKvWaQLe9zLSMNxP01k92YBJoruoAlq5pEAurmGy+kNdDrAAba+6
         6KHFOUsDVgvAp7hdTlfsKrVoOJYf1vtcgdLckKsLUzHc07ByItO3Dw8yJAYsYuHOLcDq
         1vFQ==
X-Gm-Message-State: AOAM53304ZEqo6GeC+kQ4SoUsHIwaZEzkQkUruHbyNG5rzeKzzvzBLLw
	Vw8YYaQVLDdcnKQ9tV8679t7NO8BPt4Zpw==
X-Google-Smtp-Source: ABdhPJyjTKUqc4XTSzt7ffu2IO/Q9mfZlSX/1+CuadnFlbQOFWm5bGuP9EHwMNUXE4JfvD6kPkdSEA==
X-Received: by 2002:a54:4714:: with SMTP id k20mr2957516oik.103.1629216063837;
        Tue, 17 Aug 2021 09:01:03 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id r25sm554171oic.13.2021.08.17.09.01.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 09:01:03 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
References: <20210817150957.18246-1-okaya@kernel.org>
Message-ID: <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
Date: Tue, 17 Aug 2021 11:01:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210817150957.18246-1-okaya@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I had to clean these up a little bit and pushed them to master-next. 
Please verify that they still work for you and if not used them as a 
starting point and send a V4 patchset.

On 8/17/21 10:09 AM, Sinan Kaya wrote:
> Dynamically linked protoc.exe is failing as follows:
>
> [libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
> File already exists in database: google/protobuf/descriptor.proto
> [libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
> GeneratedDatabase()->Add(encoded_file_descriptor, size):
>
> Switch to static linkage per upstream recommendation.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>   recipes-devtools/protobuf/protobuf_%.bbappend | 1 +
>   1 file changed, 1 insertion(+)
>   create mode 100644 recipes-devtools/protobuf/protobuf_%.bbappend
>
> diff --git a/recipes-devtools/protobuf/protobuf_%.bbappend b/recipes-devtools/protobuf/protobuf_%.bbappend
> new file mode 100644
> index 0000000..b53b22d
> --- /dev/null
> +++ b/recipes-devtools/protobuf/protobuf_%.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"
