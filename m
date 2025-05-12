Return-Path: <philip@balister.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCCBC3ABCB
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 14:24:05 +0000 (UTC)
Received: from smtp1.emailarray.com (smtp1.emailarray.com [65.39.216.14])
 by mx.groups.io with SMTP id smtpd.web10.51538.1747059844866321701
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 07:24:05 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: balister.org, ip: 65.39.216.14, mailfrom: philip@balister.org)
Received: (qmail 9184 invoked by uid 89); 12 May 2025 14:24:03 -0000
X-Orig-Sender: philip@balister.org
Received: from unknown (HELO ?192.168.11.130?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3My4xNTIuMTM0LjE1Mg==) (POLARISLOCAL)  
  by smtp1.emailarray.com with SMTP; 12 May 2025 14:24:03 -0000
Message-ID: <d898a418-fd0f-46f5-a854-0e6985f09c76@balister.org>
Date: Mon, 12 May 2025 10:24:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Size of production os image
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
Content-Language: en-US
From: Philip Balister <philip@balister.org>
In-Reply-To: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 14:24:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65315

On 5/12/25 2:05 AM, MOHAMMED HASSAN via lists.yoctoproject.org wrote:
> Hi guys,
> My os image size is generally around 1 gb. I am working on  IOT gateway 
> product. The funny thing is my actual bodies application is around 100MB 
> including node modules. I know that yocto is mostly used for smaller 
> footprint images but seems like I am doing something wrong. I have tried 
> removing other irrelevant packages related to hdmi, audio, video and so on.
> Can you guys attest to this?
> 
> On a side note can you guys let me know the os image size for your devices.
> 
> I use yocto dunfell and kirkstone.

Also look at using the 
https://docs.yoctoproject.org/ref-manual/classes.html#ref-classes-buildhistory 
class to see what is installed in the image.

Philip

> 
> Thanks,
> Hassan
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65306): https://lists.yoctoproject.org/g/yocto/message/65306
> Mute This Topic: https://lists.yoctoproject.org/mt/113066816/384425
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [philip@balister.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


