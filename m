Return-Path: <philip@balister.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41AE0C3DA41
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 17:22:39 +0000 (UTC)
Received: from smtp3.emailarray.com (smtp3.emailarray.com [65.39.216.17])
 by mx.groups.io with SMTP id smtpd.web10.651.1720632154064530999
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 10:22:34 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: balister.org, ip: 65.39.216.17, mailfrom: philip@balister.org)
Received: (qmail 56971 invoked by uid 89); 10 Jul 2024 17:22:32 -0000
X-Orig-Sender: philip@balister.org
Received: from unknown (HELO ?172.24.0.68?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3Ny4yMy4yNDcuMjE0) (POLARISLOCAL)  
  by smtp3.emailarray.com with SMTP; 10 Jul 2024 17:22:32 -0000
Message-ID: <6c49ddf4-f5ff-455d-b50f-bdd3e7035cd5@balister.org>
Date: Wed, 10 Jul 2024 19:22:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with
 different device trees
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
References: <CANNYZj_pGxrBGoVPnBpS-0ZG6Fa=JboV6QVph3DMAgsfqykR5w@mail.gmail.com>
 <12578.1720618108139349239@lists.yoctoproject.org>
 <CANNYZj9epBMR2JDQgP0HyhAi8pNPHHE7sXe1r=zHazzKiqzTgA@mail.gmail.com>
Content-Language: en-US
From: Philip Balister <philip@balister.org>
In-Reply-To: <CANNYZj9epBMR2JDQgP0HyhAi8pNPHHE7sXe1r=zHazzKiqzTgA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 17:22:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63464

Also look at the meta-xilinx@lists.yoctoproject.org, they should be able 
to answer petalinux questions and how to migrate off petalinux.

Philip

On 7/10/24 17:18, Alexander Kanavin wrote:
> I suspect with plain Yocto, you're simply going to have one build for
> everything and an image that boots everywhere, with MACHINE set to
> zynqmp_generic. You need to try and see.
> 
> Alex
> 
> On Wed, 10 Jul 2024 at 15:28, philip.dawson via Lists.Yoctoproject.Org
> <philip.dawson=datapath.co.uk@lists.yoctoproject.org> wrote:
>>
>> OK, thank you for your help. I'll ask on the Xilinx forums.
>>
>> Out of interest if I was to work to extract ourselves from Petalinux, do you have any brief idea how you might go about supporting 4 device trees -> 1 kernel if this was a pure Yocto build? Or if that's not sensible how to break the kernel driver header -> user-space dependency that's causing us to have to recompile our software?
>>
>> Best Regards,
>> Phil
>>
>> On Wed, Jul 10, 2024 at 02:19 PM, Alexander Kanavin wrote:
>>
>> If you're using petalinux, then you should ask for support from the
>> petalinux provider.
>>
>> On the other hand it's probably possible to transition to a direct
>> yocto build using only standard yocto upstream mechanisms, without all
>> the extra custom BSP generation, and then you'd be better able to
>> control how the build gets constructed, and to get help with that in
>> this forum.
>>
>> Alex
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#63461): https://lists.yoctoproject.org/g/yocto/message/63461
>> Mute This Topic: https://lists.yoctoproject.org/mt/107140139/384425
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [philip@balister.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

