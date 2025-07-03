Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AD76C83030
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 09:25:25 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.18410.1751534717587164481
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jul 2025 02:25:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b8tv80Yx;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ae0de1c378fso765141166b.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 02:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751534716; x=1752139516; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qrt4xqVqiSFlJrK7pTxosN/KaAUavnvllLTg1CddcmY=;
        b=b8tv80YxbnPCrekv0jaylGmVLOWJC75gDAmDLB1XyxQGX/+yycM0Mr0dvEdNQDlGrs
         XaFcrGnJ3a2cdEN/Tw3wN7KfoJrU83S6czL2lJD1L0T+VmgRzh6YkJMmLpbc55AR4jm/
         CuBDofNwGp6uTDtJvDH1v2saoJo8aExze9YEyjtefUAiBwUG5T9fTVu0SSrnbrGiOdcv
         A8PeGDWNQB1GC4+uvMX89yPfFyAh6uDjQKb9e5Skdv9KSw//lI8lTGBAx4/5K1buxWVW
         Is3M8GW0br7gOrmG4HRiLKOk3SZSybkgCHOwk6+1tyvlqUT4AkTB4Qpw1tpVvTt94uN0
         KEcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751534716; x=1752139516;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qrt4xqVqiSFlJrK7pTxosN/KaAUavnvllLTg1CddcmY=;
        b=RY8lqqk2ofo3FqkuwuUw7manBWz3IU8v6RIYJIn0Qz18aM4mCiMxgg8pzKjCyuuhqR
         QhymWF9MrFZyDOYohIhiTLUjLdxf66yjTTEREURRKdl0FylM33X2h7D7PkjPLP4GTQG3
         euhgM0jfhf8eJoRObHwKOy4FaDB6cucHd71Fat0NrJYqdfTgcvY9jKm3P2rzMeJ46181
         /vHo4N+ozcV/0jTA1Ne7doFq2hRam8n+ZKPFWmvPGwPn+X1P6gtiYxv8cxHNKCX34Ivv
         cnN08nkloRUUyuzt70dOWor/ZtKun6KJfur0N2r0DB2+RFtxrKBgoR/23rzUVXy84hEk
         F3Iw==
X-Gm-Message-State: AOJu0Yx0SFm02/WJGCKoMSv0qe5LQ7araHkwvpxgFVqGEkLjc9bELjrj
	877uMIb5CLXNt+QR7bFGwZx2KQ+zdGK3O6oOMe2VFgKwdSuNGshG1xtfKN8aCvOZ
X-Gm-Gg: ASbGncuOZWrkJO1YaKVYITmtlHADGjcLNa/wh4yixHLLivaG5pLh+Ar+0Io08BSovyY
	+1rWvhsGv0PbhOYA+S5+R1HgbCsqR42+0PaQ2wNY3X6PY4Crs85ENsgBa8xdMaQCyoF7LYYXccA
	zGusctpGs43Q3GWiG/C7+rjcGIbXw4n+0NmYDrhqcGmnCjKviADP2moJx3vS/Iz8LSjp9t4S/zB
	E5aLzukEylXkPzfeWmMFQWyrVAQleLl7z/bf8OWQH1yJlq1QqThq/TeQq+Qw5jL9QjOzQc5nP2L
	V/MkHq1eHDxUgdGE6xs8nq+DJdJfw5Me/D54gCDMnidQAPulqPftUTelE5xyZFXqrb4BbEZyPJA
	War/D
X-Google-Smtp-Source: AGHT+IEq7WiMpicYb1IFmSrC6k4B/xiouekwcpZGvAYJ+9gl6u6t/4sfyhcLJkPCZQ5InfMLou84aA==
X-Received: by 2002:a17:907:6c14:b0:ae3:de00:3a31 with SMTP id a640c23a62f3a-ae3de0090cdmr212156866b.30.1751534715681;
        Thu, 03 Jul 2025 02:25:15 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3c7606786sm251154266b.60.2025.07.03.02.25.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 02:25:15 -0700 (PDT)
Message-ID: <cd17f441-495b-4298-9289-6d133af8d928@gmail.com>
Date: Thu, 3 Jul 2025 11:25:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] gtk4-native compilation fails for Walnascar
To: yocto@lists.yoctoproject.org, ashish.shrikhande@gmail.com
References: <Rd8G.1751515553422357316.iMT1@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Rd8G.1751515553422357316.iMT1@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 09:25:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65600

On 7/3/25 06:05, ashish shrikhande6 via lists.yoctoproject.org wrote:
> I am trying to build gtk4-native and during do_configure stage, the
> error I get is libtiff-4 not found. My platform is RaspberryPi5 and I
> am trying to build yocto for this.  I am new to yocto.
> I ensured libtiff-4 is installed but still somehow cmake does not find
> it. I have attached the compilation log and error is highlighted below:
>  
These logs unfortunately don't tell a lot... could you pls post the
content of
/home/ashish/raspberrypi5_latest/poky/build/tmp/work/x86_64-linux/gtk4-native/4.18.1/gtk4-4.18.1/meson-logs/meson-log.txt
? Hopefully it offers some clues.

