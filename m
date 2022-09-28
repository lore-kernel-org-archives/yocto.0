Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED0B0C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 08:51:47 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.5668.1664355100529509379
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:51:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fABrB9De;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id a10so13649949ljq.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=bROZmXdDDKiczze+ZUkd8HfDP8LPFr2ty+ogAl7C6pQ=;
        b=fABrB9DenOY8t/xZTM+rc+BXEtMNof5P35/Dk8GoL42AXDn0d7h1/G9M7j1WMaoBlu
         wASta4Gva3in3GhDo9qjnxlfAls3wdkHoEZ0O4fCp95uLiW3tHwBnca3oVUSOBBD1nZq
         z1vtoqVj0UkiFazSJy4BsBt6iBIW9Pm/8tr1kDoaQR+lW/htBMk1baZgj67gGaXUuWZ/
         y5dIeTBxHVzb3fWnHC994EspJzLXK0v++mYLgGd3axs7eXLiT387Dz97u4OP+Wl9dqDT
         3kgnWFxEGEzonD4G5Pnqe3dXWDCN4SJbZR6YcP7828o8ePa79RlmVLE3hQrOEl+e2AlF
         VK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=bROZmXdDDKiczze+ZUkd8HfDP8LPFr2ty+ogAl7C6pQ=;
        b=d3wL9Q/dcG3wDpYshOWq3SU6mXFZk+sG98pnlcgq3QNBCMBALMLp0+G/kLPgIPo3Ik
         kyki3w39Ee3SgGZo7MrvNK9KSR+V2QnurMb5bjkjkHFPDHJlFwHBPKS7kznNNH7IVf4B
         p7/6sLx1UT5oFU4m5latFp5ewaJJOnGwG0P4B+G2BNLzxDFHgRA02D7gpK8TlWMC1Ykx
         PBUAWLdPvGszF3BL7qfvM4YS7R/4R3qDzfNhij0a03lFFYiWzrjCInPtrXTgMRxDvh2Y
         +QRwPjcvOsSpvCA5RomPelnZ4763Ti/nsdCPL6m4HEPgH2soktBEjU5sn7zKacis6XPU
         XcGw==
X-Gm-Message-State: ACrzQf34cO94uTjdeojCEhqVEORk8VJPdxn8MS0TjuD5B/DKQTd5CJTs
	LmDz0zba03UaX9plNEQUMntIU/izkLl8ZEG9ZW4=
X-Google-Smtp-Source: 
 AMsMyM7kDQbQ47ZMNc2ruBy7ffTp5KsTPsaAhuTD4HySYI4QqF/6IkEoNi+AKAhJoqLysboImSLIKWiwEDG/9AtbTlI=
X-Received: by 2002:a2e:b611:0:b0:26d:36a:696b with SMTP id
 r17-20020a2eb611000000b0026d036a696bmr7648736ljn.257.1664355098511; Wed, 28
 Sep 2022 01:51:38 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Sep 2022 10:51:26 +0200
Message-ID: 
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 08:51:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58202

I think for software vulkan you need to pass in
-Dvulkan-drivers=3Dswrast when building mesa for the target.

Alex

On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>
> I asked the author so I assume he would have told me. Apparently the virg=
lrenderer branch is obsolete.
>
> Currently my only changes from poky master are adding vulkan opengl x11 t=
o distro features and vulkan-samples vulkan-loader vulkan-tools virglrender=
er to core image extra install in local.conf.
>
> I also added virtio-experimental flag to mesa and virglrenderer meson rec=
ipes.
>
> I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>
> What am I missing for Software Mode?
>
> Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> I would first check whether any of that work in the branch has meanwhile=
 landed upstream. The post is from 2021.
>>
>> Have you tried the software Vulkan in the guest?
>>
>> Alex
>>
>> On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:
>>>
>>> I try to enable vulkan according to this tutorial
>>>
>>> https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-e=
nabling-new-virtual-vulkan-driver/
>>>
>>> According to the author the modified qemu branch is still necessary so =
I want to enable that.
>>>
>>>
>>> Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex.kan=
avin@gmail.com>:
>>>>
>>>> You need to clarify what you want to do exactly. Why can=E2=80=99t you=
 use the existing recipe?
>>>>
>>>> Alex
>>>>
>>>> On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com> wrote=
:
>>>>>
>>>>> Greetings,
>>>>>
>>>>> I want to change the git repo url in order to test the Venus driver. =
Can someone tell me which variable in which recipe I'd have to set?
>>>>>
>>>>> Regards
>>>>> --
>>>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet.
>>>>>
>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>> Links: You receive all messages sent to this group.
>>>>> View/Reply Online (#58196): https://lists.yoctoproject.org/g/yocto/me=
ssage/58196
>>>>> Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686489
>>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>
>>> --
>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

