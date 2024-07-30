Return-Path: <yocto@ww7.be>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FE1DC3DA70
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 17:59:32 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web10.23867.1722362364040885678
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 10:59:24 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: ww7.be, ip: 209.85.214.169, mailfrom: neofutur@ww7.be)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1fd66cddd07so32455855ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 10:59:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722362363; x=1722967163;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m0fSmAeUk3zpf0eqGUdZ8euIHQmYPWXrAx+uIHxqY0Q=;
        b=TcuNpnN2VkJjEg9XdGL5cnL39Z65NAMiECRWefiDxFsJQSFkBtMs6c4GYNYpURTD1P
         CzhlZJpU5d/BRHNHc7t1vU6cL0r8VySImn5TBQ8Cp8vKNVAsEx9WI8VTfSdrI9Ko+EJu
         P7WDFDYQGFdRz0l5szvc1spfnmgByZaqg0kZI3nqj0t7fG0Rtn00p5SkCNrcGawVDXu5
         MZgt9KA5Kz/hozVJiV7Y4n1PQePhSDYR4NSAz9RDZKy1d8W/yRSLVLail2b7E6HyDLsN
         zqG/Fyk2EHHN9BESNo/66sq4Elo3z9N61zrOw8Xo3/4xwyx28xTfoekMDdDr4JHR4yqj
         4Wkw==
X-Gm-Message-State: AOJu0YwqP0x3iL5wfaCQ4jXX3hXjZYkigdxhuz88OT5NbRImmbC8u2IT
	kc+HftIeNxRdndQy+9hXLp3I04Y/TQo79tSCLzt0kzET8Ws6raiMRd7Czvjshu0rsGuvMkiMThJ
	N7DvbD65skAYKxuGyUfg2UQ2m0tvkeXvvf8KVUR6i1ViPgOXV9QtL1w==
X-Google-Smtp-Source: AGHT+IHBbCv6G8ZV7nJhvI04TqcA0lp9IIsbmLnNNL2GeqBMhVsDNQmwhWuaoooYOpwjL6pD7bjz8oPwSUxFiYZ8Stg=
X-Received: by 2002:a17:903:2304:b0:1fc:6a13:a394 with SMTP id
 d9443c01a7336-1ff0483e1e7mr111800935ad.23.1722362362967; Tue, 30 Jul 2024
 10:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <MN0PR12MB5906A7619F31614B3AC16FBAC0B02@MN0PR12MB5906.namprd12.prod.outlook.com>
In-Reply-To: <MN0PR12MB5906A7619F31614B3AC16FBAC0B02@MN0PR12MB5906.namprd12.prod.outlook.com>
From: William Waisse <yocto@ww7.be>
Date: Tue, 30 Jul 2024 19:59:11 +0200
Message-ID: <CAJyeiY7E5UDCuNq8nV4SnCa1NKoZCy3rujZQE17fajzhrT3efw@mail.gmail.com>
Subject: Re: [yocto] How to enable /var/log/kern
To: yocto@lists.yoctoproject.org, Rahul.Kumar1@amd.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 17:59:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63610

> Hi ,
> How to enable /var/log/kern to see previous kern dmesg.
 you need to configure your logs , depending on which logger system you use.

 here are config examples for syslog and  rsyslog :
https://unix.stackexchange.com/a/506448

>
> Thanks,
> Rahul
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63603): https://lists.yoctoproject.org/g/yocto/message/63603
> Mute This Topic: https://lists.yoctoproject.org/mt/107627614/7464883
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yocto@ww7.be]
> -=-=-=-=-=-=-=-=-=-=-=-
>

