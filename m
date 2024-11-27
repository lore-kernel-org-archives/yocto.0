Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74AA6D609A8
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 07:01:58 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.66453.1732690917886947720
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2024 23:01:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M3Gn/RVC;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa53ebdf3caso582006566b.2
        for <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 23:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732690916; x=1733295716; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9wLXwTIyLesDYYzGpz5BJd0kBNquvcD3KLO8lecSGR8=;
        b=M3Gn/RVCNS2KPN4eD4GctwMAU0Z58lDRtW16woP4ReqorkgyZ2LgvfonWsKUWkmMaK
         JOJIhwBsHulaSZscr/Ou0B63WlBX3jpe9rLeiKHmqqEcmRWRCkJzc3zEfHkIW0EKYA/i
         Ede/qZGvC2L6sxfBttQOmbefqbQJaGReEByR/QJYUxGQHVblfaTiN69YuJA4PDacNjtQ
         1pJr81XEvdtoBjWdAbDnoy01eyqb1WZ2Iy9lzBMon3DF4YmmG6LkP3R77gyqzfkPbYUB
         YoxY92FpnHC0GdhdCdsnidEsyPKgoREXNqlqDrOhz/kaCz4svg0do3Ll4+6J5FKtqzGN
         RIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732690916; x=1733295716;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9wLXwTIyLesDYYzGpz5BJd0kBNquvcD3KLO8lecSGR8=;
        b=Gm/wEoE2UKhzi7wms4V6c7itFdzlBMrC4ktbGtDSR5TwXwI5SG7OUVeBDk21yCB8CG
         RNmq9e5Fik08g3LrfQcngUGgVu7KLK1Mfdf0sQ+XDDYt5/Sif8hRayq6WNWJiTXSPwc8
         /j8iWctOVjRoc7KvIoJLD0fb5qosxxfPI7KeUC2OIhy8R/mPY2hk/iUSTL3f2Tl38yPq
         Jrp567AR6BtIizO5KCj+WaF4w6X6JAB/b+7wONxbPuf8ltkGl6t8M282/eudXKVEqygK
         hP1pE48Uf1adr3VGsJDpXCoYFD/hguQ6Cvdidkf8VemPUffdvFAgl+jio9ARtSsGKOvx
         qJTg==
X-Gm-Message-State: AOJu0YyKyiHHVhz4UCY3Z/fF9dmYS5Z0kT0FWdqUzjhQyrxhsJxtz6L3
	NE1aI241n6nNJOwNXbPNKyEutXn8nBNYjiMqDWuivDtbja+tzNJFIUNfWA==
X-Gm-Gg: ASbGncuhuZLuGlYiEh0E7qfKTUe1XexMQceauNi4vFm829IkLdofQp/hvqwOoJAGhxQ
	I1wYnmBNuVbyGUJtMr5rB+JU/SqA0PwqNhjig3Gcpt+nqpWbJ+vpkno57vkzxsrD59PbojOQ2+n
	TEMQVFkiz5oG+cbV55xxqC4MUZApTDJGzVC252Ub4eeOP6yi1KSST8ZUyMsJXhf8t/ybD/HGUMU
	QgvLRoqAhbFTw+vVqIwjQl/ldCC1VV+8eXKDFt7jHWZKMD8Jl7Grw0=
X-Google-Smtp-Source: AGHT+IGbq0AEZggT01AEBtj8J/tncjOhcbem2QEiKrAzYfJAtX7gMMvcdmbHZQPvTSMzsYF3rdGObA==
X-Received: by 2002:a17:907:77cd:b0:aa4:ce42:fa7f with SMTP id a640c23a62f3a-aa580edfbf1mr160082166b.7.1732690915807;
        Tue, 26 Nov 2024 23:01:55 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa51a8f417dsm628177766b.165.2024.11.26.23.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 23:01:54 -0800 (PST)
Message-ID: <60044d83-4155-45c1-9f6f-fd89bb2522e2@gmail.com>
Date: Wed, 27 Nov 2024 08:01:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone
 version)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 07:01:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64354

When adding this to a global config file (local.conf, etc), make sure to
1. Use the override syntax with ":"
2. Prefix the package name with "pn-"

E.g.

SYSTEMD_AUTO_ENABLE:pn-avahi="disable"

