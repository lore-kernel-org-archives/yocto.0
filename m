Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web09.13442.1605809830065184895
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:17:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=W/9VrIMU;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 18:00:00 +0000
X-Sender: yocto@lists.yoctoproject.org
X-Receiver: sateesh0457@gmail.com
X-Receiver: yocto@lists.yoctoproject.org
x-endofinjectedxheaders: 5246
X-Sender: bounce+53643+51422+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 5812
X-Received: by 127.0.0.2 with SMTP id hT3bYY3619394xw8DItZW6MO; Wed, 18 Nov 2020 09:01:38 -0800
X-Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web12.26969.1605717295659874188
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 08:34:55 -0800
X-Received: by mail-pl1-f180.google.com with SMTP id v21so6748plo.12
        for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2020 08:34:55 -0800 (PST)
X-Gm-Message-State: t3UFqytB4WA0sHAeB7dutjI0x3618059AA=
X-Google-Smtp-Source: ABdhPJz3DwbwJQp6cl0CIBj/tOdW69IQlDbV3rm9+AXYf1IRAtf7y2XMQmRbuk7yCD8FfnmxazsHrg==
X-Received: by 2002:a17:90a:f492:: with SMTP id bx18mr653725pjb.123.1605717294715;
        Wed, 18 Nov 2020 08:34:54 -0800 (PST)
X-Received: from ?IPv6:2601:646:9200:4e0::4611? ([2601:646:9200:4e0::4611])
        by smtp.gmail.com with ESMTPSA id gx24sm2983900pjb.38.2020.11.18.08.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 08:34:54 -0800 (PST)
Subject: Re: [yocto] qtwayland compile issue 5.15 #dunfell
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <aWty.1605668341566593814.GDqu@lists.yoctoproject.org>
 <MADEUP.16488B9785EAF15B.27344@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
X-OldMsgId: <e5a216d9-454e-4eb0-f42a-dd6f041e431f@gmail.com>
Date: Wed, 18 Nov 2020 08:34:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.16488B9785EAF15B.27344@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605718898;
 bh=eK0IqX9c8CwT7Ib1GWoV8FOlP/r50Bm3kffE5nZlpnA=;
 h=Cc:Content-Type:Date:From:Subject:To;
 b=W/9VrIMUHQnhkqMhBrJsMEPtcBYR9lYcSsjhsb/e69t0HxVO/jK4kYED0spUrj41Duz
 yo1NLRQEuMo+YhqGRU7PxzeTFtM8HA5mAqbKAfPdtmC12oo3Tx/znB+kEGjwgiBoNDqFc
 3WDIDT7PqZODb5PeYhQx5tGewFlG+s/M6uA=
Return-Path: bounce+53643+51422+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
X-OldMsgId: <89763160a0224e58b9f7d2b8f2449b4b@Exchange.sewerin.de>
Message-ID: <c1426593a1954ccaa446ee65ffd8750c@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="UeRwUtLvtQvWmEKIFQSk"

--UeRwUtLvtQvWmEKIFQSk
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/17/20 9:40 PM, Khem Raj via lists.yoctoproject.org wrote:
> Find  QSizeF
> 
> newSize(qMax(width, 1.0), qMax(height, 1.0));
> 
> in src/compositor/extensions/qwaylandxdgshellv5.cpp
> 
> and change it to
> newSize(qMax((double)width, 1.0), qMax((double)height, 1.0));
> 
> and see if it helps.
> 

btw. qtwaywand worked fine with gcc and clang on latest master for rv64
so please describe any local changes you are carrying

> On Tue, Nov 17, 2020 at 6:59 PM sateesh m <sateesh0457@gmail.com> wrote:
>>
>> Hi Guys,
>>
>>                I am getting qtwayland building issue using dunfell version. can  anybody help me to solve this issue.
>>
>>
>>
>> Regards,
>> Sateesh
>>
>>
> 
> 
> 
> 
> 
> 
> 




--UeRwUtLvtQvWmEKIFQSk--
