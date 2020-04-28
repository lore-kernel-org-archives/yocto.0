Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.4084.1588066011019378634
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 02:26:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=cpQgLgpV;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 209.85.221.49, mailfrom: andrei@gherzan.ro)
Received: by mail-wr1-f49.google.com with SMTP id f13so23733047wrm.13
        for <yocto@lists.yoctoproject.org>; Tue, 28 Apr 2020 02:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:from:message-id;
        bh=sNaZL83skdn1ALnLfBIGL1hJztfPecxbQlmBO2iBxVE=;
        b=cpQgLgpVEbG38mL94GNU2K+NZFT6M19aVqZv/+wMJ8BQAc/ekYCtzwruQiQ3FSsSqm
         LZouLaHZfuTZZSuRu07jq5zA6D6kBNiG96q+ZxcKywPGKihGXim9v08K3ASTWFfbgRXw
         TGrO7K7mHMQZ1j5jGTlGwKj9fwYkHJSvooFwyvor0oC042RDnO2wjMptSdH+IWAFd7Qu
         F2UmqNskcoEyLl6iS8z9g0q3E0IDVNtbjEUx7sSc5u6Iajrm+YhE+p3pzJHCVfRb2aSp
         PjkDWbFP40URFrrtv4m5JYPlJkc6R+GxOh2+X+Adbxrakj4NZrHRqYBaYqWGUqF0hUEt
         7XxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:from:message-id;
        bh=sNaZL83skdn1ALnLfBIGL1hJztfPecxbQlmBO2iBxVE=;
        b=Kfd7WvGEH+GeTSHqKBjbGz+Un5SJEWMQ2FEiFoatgwN/z85tGxkGHcdW54GLLFffuV
         Ttb/1rDBlbnJnc+M+kWEglbMHTvQ5HN54kbY225Pq2fcyRixpjRYDC4G0Lv/yHhTX978
         rlvLb7WBYKMBlRqiibDBApqJkFbG41TQ2zi+8WDARlCvU6BpZiwYvWCbdlLzD5alqBvy
         05FePGLM1gfnug51+pcKOhhOkTZQLPc6zvYVCUCmjW7hWAnatjdyVnwxmq4OmRqTow+9
         VqTmCfIib/I2JJWyUwtEJq2XCM1hzUbnyVajb8c2r4N2YvhgG0zjfXwFascaN/871A+H
         vREw==
X-Gm-Message-State: AGi0PubyDtoUhAyl655U0EbuKX/3LZYcT/EpR7FHxNwojBSRs1mcmvgU
	ZD54EtQ/LRrv2tip89K9LR4Ps6F5vLE=
X-Google-Smtp-Source: APiQypJIW4ah+Y9kkY/XhRaMIvlSr5xOooaBHu7yMT4bqlEeYqiMHyCkokINtR1oh+Bkd9vwVUH7Og==
X-Received: by 2002:a05:6000:12c7:: with SMTP id l7mr33239428wrx.239.1588066009229;
        Tue, 28 Apr 2020 02:26:49 -0700 (PDT)
Return-Path: <andrei@gherzan.ro>
Received: from localhost (host109-151-79-19.range109-151.btcentralplus.com. [109.151.79.19])
        by smtp.gmail.com with ESMTPSA id q8sm2463202wmg.22.2020.04.28.02.26.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 02:26:48 -0700 (PDT)
Date: Tue, 28 Apr 2020 10:26:43 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <108997f6-1c77-d8d0-eb32-8afc2a519543@denx.de>
References: <108997f6-1c77-d8d0-eb32-8afc2a519543@denx.de>
MIME-Version: 1.0
Subject: Re: [yocto] Certificate expired, https://git.yoctoproject.org/
To: yocto@lists.yoctoproject.org,Stefano Babic <sbabic@denx.de>,yocto@yoctoproject.org
From: "Andrei Gherzan" <andrei@gherzan.ro>
Message-ID: <9C745899-04A4-4E68-8164-7D8A41C26D0F@gherzan.ro>
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=20

On 28 April 2020 09:54:41 BST, Stefano Babic <sbabic@denx=2Ede> wrote:
>Hi,
>
>certificate is expired - someone having the same issue ?

It did expire, indeed=2E=20

git=2Eyoctoproject=2Eorg uses an invalid security certificate=2E The certi=
ficate expired on 28 April 2020, 07:51:54 GMT+1=2E The current time is 28 A=
pril 2020, 10:21=2E Error code: SEC_ERROR_EXPIRED_CERTIFICATE
--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
