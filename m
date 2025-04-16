Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C3F7C369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 07:57:42 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.13734.1744790260916897874
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 00:57:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SIQ0fYkD;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac3b12e8518so1070116466b.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 00:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744790259; x=1745395059; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GRrynRUu3Ycb3CfqfGxWwBv7QAthrf9zxOu5mrg9aVg=;
        b=SIQ0fYkD0Eijr2SNmQ3+cm9jgyVlKeJy7n4FErcp44hN4pcHautdl3PBtDoz9uwgGR
         Ny5fgExiqHIUOmbS1VOPX9jK+65rCcr0vn8D/A5aQEzVYKOAKJZL5IA/UQrfvH2ox7fT
         P0uhKzrh2r2FzufcpHQIi6R+6c+SLLYTjvI8ZVgNVBeRs09ptLTxE+gvwPbaKGtLwP77
         /dX0DSJrDMwDG0O7twM2MOrJcHhT/Y8ryD+mwOFsfCHhs4I+lcwFhKILy9CAITFEvAH3
         UlpPOCDPnSNHGZSt1PG+R0UXvhSqOmyzZGS6F+s5jS4inIdUDOd49MccwGiut8oHxBkD
         tNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744790259; x=1745395059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GRrynRUu3Ycb3CfqfGxWwBv7QAthrf9zxOu5mrg9aVg=;
        b=BMLRWngNbeZ2QDx1MbV4SnUvcroeDGdfffSDqeRU6bCRdgbpWZcd5mMGBqsgevxOBT
         +S3E1vfHAsEbTaq8an0C+2u86naIvQOapNMe9yTGnX6/f/Jl59sqTHVJH/4uPh7HRUQi
         bnAHfRtGgmQ90SqHjaZKaWHBa6ZoO+z41D8XHvACfy82kIP/jMnVEs8xIZcmVtjjBZHj
         wvpb4m6JjZadY9O2h6swTd+rWi2T87dEhlghnyKHo3CPkeI7OFq5JoULqtDtjRfVRC82
         q+4u/OQ5vITbJ64h2/scT/j3ibLqYkCj+W4OTJmastHczRdmOCuC8/qdMouhZYTOvmA6
         eBLw==
X-Gm-Message-State: AOJu0YwREMtjPx3tBerYaCbF6l/gLhqPG4UYv8Scd5LTnO0uCetjYeLv
	ASivv3fX0y7fkeocLhzi+Y/NnfFC0cQybWJ/eRPQtzY1xCp+BpFzm3zh9g==
X-Gm-Gg: ASbGnctl7Kzi49EoWX+4qjKoxmmeq5UzgvyROJ0S/iUuQr73dWf9jnk7ni5UaugO6ZI
	1QbxxGZqCUjoe7drOSEl0gvC0/IjuQ0opvZH+2IN1D+i0ZrQlVOuDHNY383gq6HMMWcvk8f5nIT
	A6jKyQDZ/z7CFQnnv05iPaM5Kk0OMoWy6ZnrgfL9Y+fR9xGlbaZ9RCWcC593Ctiwf3/KwHOA6XT
	Q+imfcRY+9I3ZscWLH7s0DI0lIEPuOXD0s5fp6dt9SDi00jHPNeqXzBGTbrw8jeES9xCalqNbnq
	hlMqr8QOQ0dUmtgbot89XI6U4RRa5Wfmg6LnjcaVLq+bKlx5t8myYBAcpi8=
X-Google-Smtp-Source: AGHT+IHmwZB/u7Q22Q9UYwrxn0BCHum6sVmuwAtw8x8bm6/95gfoggmCeTfQ6mYhLQkZWdyAXPf6Dg==
X-Received: by 2002:a17:906:ee8e:b0:ac3:5c8e:d3f5 with SMTP id a640c23a62f3a-acb42a4af82mr74141166b.27.1744790258727;
        Wed, 16 Apr 2025 00:57:38 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cdd5abcsm77397666b.43.2025.04.16.00.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 00:57:38 -0700 (PDT)
Message-ID: <e9092a5c-db23-4447-850c-8d7906189acc@gmail.com>
Date: Wed, 16 Apr 2025 09:57:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [QUESTION] Submitting patches that affect multiple
 components
To: yocto@lists.yoctoproject.org, denisova.olga.k@yandex.ru
References: <156731744736728@mail.yandex.ru>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <156731744736728@mail.yandex.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 07:57:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65183

On 4/15/25 19:06, Ольга Денисова via lists.yoctoproject.org wrote:
> Dear Yocto Project team,
>
> Good day!
>
> My team and I have been working on a series of patches for the Yocto
> Project. We are submitting them according to the guidelines provided
> in the documentation:
> https://docs.yoctoproject.org/next/contributor-guide/submit-changes.html#sending-the-patches-via-email
> <https://vk.com/away.php?to=https%3A%2F%2Fdocs.yoctoproject.org%2Fnext%2Fcontributor-guide%2Fsubmit-changes.html%23sending-the-patches-via-email&utf=1>
>
> However, we have encountered a question. Some of our patches affect
> multiple components of the Yocto Project simultaneously — for example,
> a single patch may modify both the bitbake and meta directories.
>
> Could you please advise us on how such patches should be submitted? Is
> it acceptable to send them as a single patch series, or should they be
> split and sent to different mailing lists?
>

Do a scream test? Send it the way it makes more sense to you considering
the guidelines and also the nature of the change, and if anyone screams,
you can still change curse. If you send it in one series though, I guess
you might want to give some explanation in the cover letter about the
why and how.


> Thank you in advance for your help.
>
> Best regards,
> Olga Denisova
> Saint Petersburg Electrotechnical University "LETI"
>

