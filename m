Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B37C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 09:20:26 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.13774.1738056020909103967
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 01:20:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HUA97YPI;
 spf=pass (domain: gmail.com, ip: 209.85.221.45, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385eed29d17so2781723f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 01:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738056019; x=1738660819; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aPYfPFhqaasRxXVz+amp8bGDJz0gMdZ3juFxmzFAFo8=;
        b=HUA97YPIbTXmDWXVFZOFhYo3EP5cz7F3YdWypNi2COxQsmWaJhthlqDBOyVRfAF4Lz
         09MA7CsulXIq6aBtZ13rjb6y0rzFts6t7Q3sv2mfwyxYWaCDgLAe8mxTTYWjD5kFOT22
         p2k3BlINK2fmVzsjsRyqJDm95UzyUBn+SqU52lFrTMg862M+RDh/qID5WGVW2QlCqR0/
         SJBLlRClASBW69C88FQvfQd7lYvwP6BYkNBOMQbmykSLNp1bqIxodHze4+mBrzTI29jB
         kFUXg3grwzNvX+e04nPNOHUVECtbkQX4xkpM9gwgyUsQUXbBE8poFcY3GcjWkPbT4crb
         /KBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738056019; x=1738660819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aPYfPFhqaasRxXVz+amp8bGDJz0gMdZ3juFxmzFAFo8=;
        b=KQjBYZuuny4DyiH+tkPhuNmk8XW73I0SZcJRPtj1phQ7GE8k9Vmrwq+r+kXQu5+Met
         ScGz7q487aIuApLBoVBZeKBF112d0R4Vv02xGKrLb0CMkzYU/frG6JWSyHlAWEIvrVy2
         kotK6mAJOgZ6sH9saNxBAo4D6JENCdAP5U/tTDqf79z93474/kAXVsSNSNKY0MEYxtMa
         zfUt6b/+3+0U3oMSF712jtNv1uBmsL/8z15iYu6U5qynu9fSxXlnaO5Ss6ggxeoS8xKs
         VUu6Hmxn73ZMjWNoUw+/tfaxdGJ2Bz+ij4PBk3udaU+Ot7Sj00Wn9m0H1C9Drev0BZeG
         nkQg==
X-Forwarded-Encrypted: i=1; AJvYcCVZmStCs+6Cb2UauF96pPlCw0vbLYZF+/guQBTKO/agIgduxLODrlJte6P9OcZ5vCm80uI16w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yxo23mirndSFaK7169U14ES1TZCw4T2N7UArlPld9k3ChEHKDTj
	uOZ4JsYVtS4MG+/49Cz+JCXQESW0z7q/np0nShC1kNCZhOq6JCdn
X-Gm-Gg: ASbGnctjYuliue+8lr7ICllgpR5CdOGdie1H+hJr7hC/MXhfifTy+ZbIxCuOMFpH1aX
	pk09BEZ+Y/GGbazz/tlu20eQmzG5DRrNORljQSBP2aYznuSFeBclT7uC1opxy9Xrb9zC33S/BHe
	tgOtTc0n+GhSK3NdJ2ZzPsjEkDJg59sjNj4BZ7TdyIvUES0NDDlA1Gd6L2iYjE7v2MRzAPezX2l
	OLKu4d4PUwrNb876wSDxtNRYnyur9A5sD3Tr20d1azLyFkL1jQrDBkIhnRrQ9vLUIKiAl2kVWLf
	XIW+WyrlFrMPd/2h7zK4Ueg=
X-Google-Smtp-Source: AGHT+IGWtm6g5frEIllhWfLWHTlN1tn55b2afhE1Lll9TP68+jElIEnRYWBRJM20bnMLp/6IObrYjg==
X-Received: by 2002:a05:6000:1ac7:b0:388:e2a6:ba81 with SMTP id ffacd0b85a97d-38bf57b99e3mr33280673f8f.47.1738056019102;
        Tue, 28 Jan 2025 01:20:19 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1764c8sm13340173f8f.3.2025.01.28.01.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 01:20:18 -0800 (PST)
Message-ID: <3328b8ee-04c7-4c0d-90a7-8f23e4f72cf4@gmail.com>
Date: Tue, 28 Jan 2025 10:20:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap]- unable to build image due to Nothing
 Provides error
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <aba92c6d-924a-4747-bb66-c8338b334b97@gmail.com>
 <29362.1738035941944973180@lists.yoctoproject.org>
 <7f42b6dd-7524-491a-a664-f7fa816cc370@gmail.com>
 <CANNYZj-NpT=PWnFrx9o2yH0yi-Su8YLYUGEVmcxjHcq5jXsu2w@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANNYZj-NpT=PWnFrx9o2yH0yi-Su8YLYUGEVmcxjHcq5jXsu2w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 09:20:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64663

"The best way to get the right answer on the Internet is not to ask a 
question, it's to post the wrong answer." :)
Thanks for the correction.

