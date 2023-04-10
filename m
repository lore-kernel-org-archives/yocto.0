Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90291C77B61
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 11:17:29 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.42354.1681125440517910050
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 04:17:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=mtZaeFDg;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-54c0c86a436so213000357b3.6
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 04:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681125439; x=1683717439;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c2i1caGvH9w3HdaQIN1exFAUwJhtIYyQNteFt6K4xrw=;
        b=mtZaeFDgUAUn9bhLhSWvPXEO2gkwYF7Cl5WKjQAW6AbVn48Gj+EFdxc84CffU/wVyY
         AhJqwqUsCEBOZjSGfBY7cNamVZQmVqFrZNOdr25ylj2buOwdY5523S42rwJtd2oYYG7i
         xvQ0+RWxHZ0E+bNP31URHbi/qZT1MriCEPSWRG+oqSlhr7rB6hS/ns8SnaGrTUOyen3o
         hYbXRAUHGodwdyz5VvBjmpKYmj5lSf4YbRnNH5vFmzNjxlF35UIKrsiTeo7cbmcoRlAp
         yWiwx4tC3X820eH0o9evg8iCrpRlqOQuqa1qbQLMGWHWZSX7B65v10ztCqKhQe4FYxzU
         7slw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681125439; x=1683717439;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c2i1caGvH9w3HdaQIN1exFAUwJhtIYyQNteFt6K4xrw=;
        b=ddcEJxJgTg2yHVCbK0xh5zNZqYu7rwVm/JlW9E5VEtLYp+QxOYsBb2PJ9d6JjaPqBG
         s71zD08LWpwAScY06W8fLrOkW9JxnOq1/KFdFr1rQ2PfP2Tx7vanKjloaBFrNmuPOyaF
         aePLlGdNKum/yoKhqlu2YENKWrbj35PKEfk7sqtbCWBMJf0Sn/dzKhlbFjdmpvglQMGE
         zbCBaly74jhNlitGoZ/gRnInkjupFeGwgv7c3fsxyVd7lrCAHM8Gd1X4NxMT0yd5zp9V
         dpz6di1GQLWOfH5Oh2KTf6LN7oMfxMTWKdmNBUSkAV0h4bYBcrjvGkD9BddMI5UuYE2o
         1rLg==
X-Gm-Message-State: AAQBX9d7gjo4wTfh0IHjmuFs0YliXd2eWOCTGdC64ib35ypL6sy4JdHb
	0+95dsH/bDb3QclvRCvcVls=
X-Google-Smtp-Source: AKy350bfyhHJmjA6DJQijpZHaxOu7CjfNXQOX/1GhyPhXrXThtqSVLZN89rQ/owOwaUDAPx9dwxdiQ==
X-Received: by 2002:a0d:e687:0:b0:54e:ed5f:312 with SMTP id p129-20020a0de687000000b0054eed5f0312mr4258668ywe.11.1681125439539;
        Mon, 10 Apr 2023 04:17:19 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:b8b3:641a:992e:2178? ([2600:1700:9190:ba10:b8b3:641a:992e:2178])
        by smtp.gmail.com with ESMTPSA id d136-20020a811d8e000000b0054c19f4d6d2sm2584523ywd.29.2023.04.10.04.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 04:17:19 -0700 (PDT)
Message-ID: <5e3ecec5-14f4-564a-39b4-ebe934be8951@gmail.com>
Date: Mon, 10 Apr 2023 07:17:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-security][PATCH v3] parsec-service: update from
 1.1.0 to 1.2.0-rc1
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <23455dab-7b92-09d5-da3f-9293ae4fa584@gmail.com>
 <14191.1680784910081228994@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <14191.1680784910081228994@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 11:17:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59654



On 4/6/23 8:41 AM, Anton Antonov wrote:
> On Thu, Apr 6, 2023 at 05:38 AM, Armin Kuster wrote:
>
>     1.2.0 released yesterday. Is someone planning on sending  a new
>     series. If not, I can give it a shot.
>
> Yes, we're testing the new recipes atm. We will send them asap.
>

Something in latest master may have introduced another issue, this time 
the runtime testing.  I am see this new error:


  self.check_packageconfig("TS")
   File 
"/home/akuster/oss/maint/meta-security/meta-parsec/lib/oeqa/runtime/cases/parsec.py", 
line 64, in check_packageconfig
     if prov not in self.tc.td['PACKAGECONFIG:pn-parsec-service']:
KeyError: 'PACKAGECONFIG:pn-parsec-service'


Any ideas on how to fix or what might be causing this? I thought I had a 
fix but the test hangs.

-armin

> Cheers,
>
> Anton
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59629): https://lists.yoctoproject.org/g/yocto/message/59629
> Mute This Topic: https://lists.yoctoproject.org/mt/97876594/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


