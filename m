Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.15277.1592941955025768026
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 12:52:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPSo6LkH;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC595E01D74; Tue, 23 Jun 2020 12:52:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAEFFE01D30
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 12:52:32 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id g17so378670plq.12
        for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 12:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=SxP4cVc/PH+NMwZ0H0NE71oEP5DHqwGGgF4RQRvfGBI=;
        b=HPSo6LkHRnr5giHhCRrYDZd6ZUru7q+45khorUnyuQVvCT1tCOdblgntRUy8Tu4Y4p
         7WP43bAOyr0pkFWKRs4oXYxZ+RO0M9nuMwXL+4ikEQ1ea0rrxvSDHLOwYUYujoBBrz1d
         6l+FPFCMHoNSGOv9QCaB9pVC/9Jyr/LRmP1BuqOZocLTH6hetftBZjpZgh0B0mVpF60G
         LKveDEWNnf126MAFWPd6YtcfUZGn3psHjq0PVSGxoSM/pk+g6CxoWaMey5RNcYfuD9Uo
         6d83UTy5BhAz7W0Rjz34A7HY72Dj92pzUngNvxORjxvcT7z+QowxuShDizLhZLNbB0E4
         C0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SxP4cVc/PH+NMwZ0H0NE71oEP5DHqwGGgF4RQRvfGBI=;
        b=j/H6hmX6Ju3QJRR+HahiQSpXILOe1T8sz08E/jLzRkoxJzXDDXB+s9fxd653W5/7xa
         GTVI6LjQpcEdrzNjusXAgTJBIM6YCGWVdfxHv0z6okTfgmIsOf676WFT7/8WjBr/8yBM
         bColuWpikS71tiMujYltNQIq/4hKWj+CfgrtKO2DtZWs8QbiEyMyRCd8n3zFX3ybhUhZ
         6OqMYfGUeyc6JIUJOLTSzKdY0rkIxz9ef2uz+AlNX7T2e6PJRj7dT1QLW1FMMHWheJg1
         RbtCUsHQNReSfihnFJc5khQ+LP4fprAMRnyD4eDR+lo3Xulr4dR7kWoF9iUGVBfSHX6q
         u5CQ==
X-Gm-Message-State: AOAM532IqzIsr3wkB+LRSUY2zmF5IXTiZtBzdt3YnpYj8AXXX53nLqFF
	cfONOnUFlwZY9WFS2xk0WNM=
X-Google-Smtp-Source: ABdhPJwjnoxrL+cFu4bgBnWdMF5dBiPs+Rvq06/uWkg1Snrn0uSfyA/7R/7IT0vD8V2/EYweYi35FQ==
X-Received: by 2002:a17:90b:1081:: with SMTP id gj1mr25738013pjb.77.1592941951724;
        Tue, 23 Jun 2020 12:52:31 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0:3ce8:8e51:3e8d:ab7a? ([2601:646:9200:4e0:3ce8:8e51:3e8d:ab7a])
        by smtp.gmail.com with ESMTPSA id t22sm3030594pjy.32.2020.06.23.12.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 12:52:31 -0700 (PDT)
Subject: Re: [OE-core] Yocto Project Status WW25'20
To: chris.laplante@agilent.com,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 "openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>
References: <067a01d6496d$5f46d9b0$1dd48d10$@gmail.com>
 <MW2PR12MB247418580E300A77C479C1698B940@MW2PR12MB2474.namprd12.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <5267904d-6871-40aa-af46-6cc7f5249d09@gmail.com>
Date: Tue, 23 Jun 2020 12:52:30 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <MW2PR12MB247418580E300A77C479C1698B940@MW2PR12MB2474.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 6/23/20 8:58 AM, Chris Laplante via lists.openembedded.org wrote:
>> * Next week is ELC which is taking place virtually this year and Yocto Project
>> has a presence there. There is also a virtual Yocto Project Developer Day:
>> https://events.linuxfoundation.org/yocto-dev-day-north-america/
> 
> Does anyone know what the intended audience is for the Developer Day presentations? E.g. would someone who uses bitbake day-to-day but perhaps doesn't edit recipes benefit?
>   

I would say look at the schedule and see if there are talks of interest 
to you.

> Thanks,
> Chris
> 
> 
> 
> 
