Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EDF9E7717F
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 11:54:58 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.79829.1734436492594807061
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2024 03:54:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZXc6Gi2A;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434e3953b65so36347225e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 03:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734436491; x=1735041291; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jFn4+26C06d8Q/5JAtluq2NcKikJneGMrAzKCpZJoA0=;
        b=ZXc6Gi2AAyq1eaR/MUmi+IlcXALij4XpbxW37ablfINIEilzGlfUM9lVZdzvrd04lh
         e7n6fpQk9w8pwwMFcj3BlSmF08i5an7kRBAX0mzv7gTz9cfltzePPFPJ45f5VGOO7k9W
         xixfFnovuIMn9Ik5NTebf8Ze7+XhTBt8zxG1aNzhYxB/2YxO0REUCkY2cvobAS56srdG
         zVdaA5qnS7+fh3e4pgJH7B/jwiyECYNwDpmHRJssQJ8bWZTgoUquzDDds/j1j5Q2TVSV
         FYvoZCZ//mLWX1XzKI9He3QEfzjb/988N/ilpwNzqx73sKrZyEd7G7fJBZvlKnII8jx9
         nGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734436491; x=1735041291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jFn4+26C06d8Q/5JAtluq2NcKikJneGMrAzKCpZJoA0=;
        b=UK0I8gs6WGpFdAzeG37K5HXZnNUHjm5ZpDE8p2/cQw5pQZgRpDlIBO59HbZrJyBY74
         fJkkoCjnAGpYj6vvIwrYkLsXlVWzbc/2KZO36Teq1/qio0yUl/eQ/rT4HYbP9wj0WEqC
         nAzBGYwKH9E668XXwxz5CCxCesv2AUnntUPrBdswToqXtdspH+DQQqnOCYJloKz8MADM
         Xyg/DtAfoXDX88/d9qpta0Ck/VJTsdKhW5dveRpDvFLY0yBJCBLbcYXsElW4DtYikF2y
         znFvIW/j64qE+g3IrwqmLgpdBAakwqmUO4LrFdQ1/wx5cYBVaviqEK1YWc0AiSKe2ri+
         om0w==
X-Forwarded-Encrypted: i=1; AJvYcCVzamqFHbUZgKqchd+w0umVArDY7aHRAGxo+OzK5avgwX80TJISA2Tvi77E3koBE4MyI27DDw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwXHAaTAmeksx4+Y3kSx7S94f/dngWwtN9KNLIp5z4u2pZahBoM
	KJnUaIxiEehO175I3z1v3DDq0UA0dMdF4CqtzftWIn2IEw6HxE0O
X-Gm-Gg: ASbGncsyNefiuZE+ymISNwoQuZD9DlUd7D5gVjYkNIgmDi4SmkSDAe7mSg/E+XbUOmM
	ZR5659LeOfIc9t9DWGQCGT7u7IYGTfyS729jkBRE9nXDOWeEuUG54z0U7AOjpmsf8Es09gr7Hw/
	Ahv1hz3fOgKA0Hep/bKDg0tXakT1KXd1ASUMXpcz9GwOXGYvztqo6puy3ZQKwVuAPHPpwiY0q5m
	dGT0MTh3GV2FlBNCZD5vfk9fn3+cqJEisBVTs0Xw2HEutbPOACgc2KjLCwJwLLT
X-Google-Smtp-Source: AGHT+IHAUcsRiM4q925NcmX7QkKgo9/dbjd9ZqLkcAwVep3cPuvwzBIoW+q5JLJAdAUQZCYPLEq/GQ==
X-Received: by 2002:a05:600c:3109:b0:434:f270:a4f0 with SMTP id 5b1f17b1804b1-4362aa94626mr142129795e9.21.1734436490693;
        Tue, 17 Dec 2024 03:54:50 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4364a3766dcsm14816815e9.0.2024.12.17.03.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 03:54:50 -0800 (PST)
Message-ID: <1de6dead-1277-42fe-8898-d4a13c62edd4@gmail.com>
Date: Tue, 17 Dec 2024 12:54:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Incorporating Qt6 in yocto mickledore #mickledore #qt
 #cmake
To: thejas.raj@mindteck.com, yocto@lists.yoctoproject.org
References: <b5d05693-8b82-4930-8ed9-875b49e43b4a@gmail.com>
 <13203.1734435721729533343@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <13203.1734435721729533343@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 11:54:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64456

What's displayed as the PACKAGECONFIG value if you run "bitbake -e 
qtbase | grep ^PACKAGECONFIG" ?



