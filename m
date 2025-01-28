Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77EC3C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 08:23:16 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.13249.1738052591664145032
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 00:23:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GJvnq8Hj;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso37349675e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 00:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738052590; x=1738657390; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vdYuL7oQwIy0xHiugVF8ej4vlrwo8t0AbBsKvGDebe4=;
        b=GJvnq8HjxbD6C7y1TL47ddp3s2vAM8FWGp5Z+PuOtHt5ofINWeOKGUKox6CZxF5Jv1
         0/NtG1No61eSyYMqaFVEqrip2HVNnbC1WWPE7SpTNmszXOZdfZL+nurQJrrpVdIV5qAH
         3NmqBKezh6scHWt168tZFWVfVnMYCyPNwMDzN4vTbNCPYEZP+28yNiuwE57sNbLhZonM
         uAmCBMP6OSjxdadCjFccD9vJsFo4au84OIoTVJgIyakgSFitDZuyiOG4TEiut/s9xrZ+
         VrymMhNO2iZqJOGz5y3Ea6eWRFXqoouHvs4HZmPUdz77h4a6E2JZQPCu/txF6A4xYUV3
         cvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738052590; x=1738657390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vdYuL7oQwIy0xHiugVF8ej4vlrwo8t0AbBsKvGDebe4=;
        b=W1iBluhh5HHcH36pJwIOPBD0LkbI9Y/CEtNjEI4YArTIHKpKHVgAp7CUN24lMqQwk0
         XiQTjU+jICF2ueAYwocerAoIbPBWbGu/73VPQhBY2JI9uHO+dpT28u8bvy/YIQUifiRo
         yjOEBTdNV5FxyIDpWG3HgUKLdqnttIpg/tVURzpSEpUU/GaLtHndwSl3XKIyPA7F3ZzL
         jrv8sAByPQv1KGU+dXBuu6lX0Xh1wJ2fR8vvXCWK0GzoROFCUA5aAxk04fdX3gcGWEf3
         K27QZ8SasTe0Iz11Rib3SoBtLE0usipwUkn+G9DGt2FkfgmMuMnr+eoEsxW0w2ZPcg9z
         zFyA==
X-Gm-Message-State: AOJu0Yw8TFYDE47ML03KmmSqeB5IvdowaqMVTK1Gwx0nnR7SIHXaYAKI
	ZhYGdu2iPGfWdIqHXj5RaqHADL5Wg7L/OdknXsOjKRagCsC/Vn/rOXlpJg==
X-Gm-Gg: ASbGncswyyPi6qDpetPgYChRECHjFceIXJsqzEqQ2vN05J5fgptHyHL010BWXC9a1yj
	hAmOGzUw2mPi6mcfkm9RNi3Ap48hRmZCBqdLEiDpy3i16cmC7Q1FATjkjuisFhEgygTn8DprY6c
	vUc0Z76uDLLVmDOGJbKhM7VIzuanupgoov0G2ikJL3RIdbyRB3XxxtXhX/JnQ6dGIA2hJYqKJkB
	FMVPnySwAj/cRv17DzhHSXc57E0PeUiQtbw6m55Lmb9s5iSUjF9bOhBjG15WvNmqeOfX6zBIj4N
	cQMQ369v/rXArbuG/tIYTBY=
X-Google-Smtp-Source: AGHT+IEhCJ4bD3rcNoERGyJNsFFjXhCVNca5yvnYvDH5iRD/Z4xaWSCyzLyydfzd/XiEW7VXVXyqkw==
X-Received: by 2002:a05:600c:1c93:b0:434:fbda:1f36 with SMTP id 5b1f17b1804b1-438914299bdmr377330595e9.20.1738052589708;
        Tue, 28 Jan 2025 00:23:09 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4900e2sm160574195e9.24.2025.01.28.00.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 00:23:09 -0800 (PST)
Message-ID: <d4da6d8c-5dd9-4cec-aaaa-e7d4bdc49434@gmail.com>
Date: Tue, 28 Jan 2025 09:23:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap] RDEPENDS Syntax #scarthgap #yocto
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
References: <ZyLz.1738036694643254088.yHwJ@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <ZyLz.1738036694643254088.yHwJ@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 08:23:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64659

The documentation is correct.

See also the relevant migration guide about the syntax change: 
https://docs.yoctoproject.org/dev/migration-guides/migration-3.4.html#override-syntax-changes

On 28.01.25 04:58, Ganesh Mahajan via lists.yoctoproject.org wrote:
> What is the correct synatx for RDEPENDS
> RDEPENDS_${PN} = .....
>          OR
> RDEPENDS:${PN} = .....
> Below document has : 
> https://docs.yoctoproject.org/5.0.6/ref-manual/variables.html#term-RDEPENDS 
>
> RDEPENDS:${PN} = "package (operator version)"
>
> Ganesh Mahajan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64650): https://lists.yoctoproject.org/g/yocto/message/64650
> Mute This Topic: https://lists.yoctoproject.org/mt/110853839/6084445
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

