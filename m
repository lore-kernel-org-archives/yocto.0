Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BB0BCD4F46
	for <webhook@archiver.kernel.org>; Sat, 16 May 2026 14:10:09 +0000 (UTC)
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6321.1778940608357669976
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2026 07:10:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20251104.gappssmtp.com header.s=20251104 header.b=HXJaFNky;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.171, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2ee990e8597so2468680eec.1
        for <yocto@lists.yoctoproject.org>; Sat, 16 May 2026 07:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778940607; cv=none;
        d=google.com; s=arc-20240605;
        b=UAnWS5f3JW/nzDE4dfuVQQq3Q6R6S/crx2IFWX0VrcbQfESQFwURw3yavH9snva/V2
         heuEtAr1lesCtRbKA0hayS6Iinp5d5yJh5uNXEuR54E1mAuBPXbLyKrxMWlnlYYiVqlu
         7JCvMiYhgL3e37NP15Y9psLXMa8t4bS4/ht388PXfWUnex1LH49+BcwQjQVqWuzKtfyL
         2GY/6ddRwYqPV7DtNKRJ+9FPwc06OUU6JdjtAJ3DMbYUYqP6I2yw0CagshpehYmGtfHA
         0nDZwU8zI73y4GrkYoA/eOgL4BVhPgAG18EVYYNl+YiRgm78mYz1CD+a01GXiLlMLusH
         y2bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=5+s8oihaKCLTDTIvXkzPyJagDHzLkRvXz07iqTAk68M=;
        fh=YclZIL7ogG4ByIOfkbzzAT1i64KLTnqQrxpcHIurxlA=;
        b=DgxfR+aOvEkGvypJ8w9U3EZ/Uimbvor7l4NyvHTGI7Pq/qdVZW8qIxxLNUlKbVbIRX
         dy18sEhdfOppkpd0zacFxARcEKeJS5Dz41s7aQutFnZhMx2E4udmCYlxBJqKnXuhc4pM
         iUtaGOLttSiTLLkqe0VdPdEz3lbJ+QvjiqcnhRdvaqSdr6uz5wDFzI90JmwtCx9pnmS7
         PcqSc1XdgXhypQfTuZE1UtNN1/sy+xZEo/mNXBx/qN9R4iXN5yAue98YmFk8hBAu44fF
         9t1ruQEhTttnmEoXlqXaDDtmF3mAHVltOOXIPW4NS+nJRkUoGnU7lRnvx6as1i0RRBuV
         XdAQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20251104.gappssmtp.com; s=20251104; t=1778940607; x=1779545407; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5+s8oihaKCLTDTIvXkzPyJagDHzLkRvXz07iqTAk68M=;
        b=HXJaFNkyFKs5BuXIlWvIoMNcS+sLJo5/olTb/jNjFy0RRpzkQAtC/aLZX4J9f+VnwI
         44o5V0fNm/HbTRcDf6QihRAhI+jMxO35D100zIiQAhjsmHcaOsf96tTX6omo+tpVqjo9
         VxvuQKUAGweMFVo+3HdP4OEWRtlBNGIB3lM00g17eb3Hy9zrZESYPBxZICbL6dLWLIoM
         rQg/AtZ6rEcSI+6bXOpj8ug/SVUi86OTk+f29ys/mkkTFYfW/cz62h6ESMXM3LeTiFRM
         De/B4DpnriUoy0TL4cI/9sEvCQVRiEYuvy7aGHLViacCVc/IyPsRiL1afdpSCiVd+y7/
         4F2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778940607; x=1779545407;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5+s8oihaKCLTDTIvXkzPyJagDHzLkRvXz07iqTAk68M=;
        b=oSa+z7cowqWivurpD7OLcwNr07bKNiXH93gPOwqhJdfeJJliYlSTVsp13Rof6hcS2s
         CKNBnVZAN2x6vve029LrovKamEQLbCN2W3iaFSQQf7CFnGgUV1Cr0h7fKlG6JCcQrKNQ
         HsFNkHUq+651K2YSbVQYmsGSZtB0p1rhd0mMAagGkgN5ah0ZlAlb75aZGgQ3aN5KQ7I9
         LOgI9jEzTFNHUfiLXjOCODh3d5pm/ejoOuWk6UnEj5Le2rDZZocntW0FgBYIRdHw3S8l
         zr+1iTCNrD3zHQU7rjUi5YoLHviWV0xH9kgEp9z0pBPZcuFwZ91W2TpMRoeF6s8+hjug
         sVgQ==
X-Forwarded-Encrypted: i=1; AFNElJ8CWGkP93qQJHoY8TJHJV8pG5RcZGRwdsD/3YHqalzcpthbiFgjy4einxwLPmrG175jXc6ezQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxvfQPRIyInc0x75/R6yDqJLjqoBix1vDsRw8QpVUylqubU8BIz
	iydH0vjFZljfkj4Fn3K0/5PfUwJGpMWC0vIf1lzVTDJ/a57H9u11qrmuE/Bcgrq5PMZ6Q+KvTwm
	eIbYUoH0oFmwO6ov0YphqBqACRB23lg0fXSEbpom9H4PUIiYPiSYViQQ8hw==
X-Gm-Gg: Acq92OHACUYbWDCeEaRa4tDfuHb+ztumcCXMCvMYfw2Yy5FbKZK0pnoKxon5OFwO49T
	PRad4cve3DBLEcNe5LBJZ3jE2w/Bf4HcjKaOf31S6w5a7V++TUR2rNSfOxfGUYkH/61n5Cx9NA9
	2062IvXGvY2MKqxtJ4OdBGOQ9mqnzgEqRe6Z0hKOpTKFz3afzMLxfQfECXjZyBEha5EAt0MCVwj
	Y6mo/Guu1VkXQ32IacBn9FCR/pwt1guYmvNq/0KkI1/vOTwFaW6TD1ISXv2B5Cah80lJbIY4RRg
	LelzluZ7MHB9gUsbXFMbhXwqgqdvtwsvMYYqfiYG/g==
X-Received: by 2002:a05:7300:a504:b0:2e5:8ec2:82c9 with SMTP id
 5a478bee46e88-303986a15f3mr4079539eec.26.1778940607396; Sat, 16 May 2026
 07:10:07 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Sat, 16 May 2026 16:09:40 +0200
X-Gm-Features: AVHnY4JOpMmOgJsnu88i-cow1E7fbcDMqOl05RBy-BoPq3EmO47iETOEwk9UNTc
Message-ID: <CAEt6NwroHb9KvVr3kO9VCL+bsSQsu16DE14JOS2vQwZsdZ4Zfg@mail.gmail.com>
Subject: OSS/ELC-NA meetup
To: openembedded-members@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, openembedded-devel@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 May 2026 14:10:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66568

Yo ho!

We know that planning ahead is important! So if you plan to be at
OSS/ELC NA next week, how about also planning to meet your fellow
OpenEmbeddeders?

Coordination is starting at
https://discussion.openembedded.org/t/developer-meet-up-2026-elc-na/116,
thanks Colin Pinnell McAllister

Greetz,
Josef

