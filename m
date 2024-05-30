Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 464BAC25B7E
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 09:40:45 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.4372.1717062044588514155
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 02:40:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QdGb16ni;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e719bab882so7207271fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 02:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717062043; x=1717666843; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tg70E1DMLQAJYMbSibCEomGPgBF/Q6k8vXQ9aXsw7qY=;
        b=QdGb16ni9EPtxwdFUvWHNx2u4asg3MrBYHshQVsK3xA3rk6IvcE/EwWlk393DgXeTk
         PqZfZLTrs+e3PPdJt7kTTGAazz7TbxtGz+sMnkrl3j6MzJsxTLFbps4ZKv829ncgKHpP
         gtkSbhmnwLHjAg24oLKxEDNdNmTdhEmonUu5VH/wfA7FsIP7LxLZkWq8HaAdn5UVPqsX
         Zs25H58ujKB08kAVt8srsvagUHUyZaS9gXRe1GGxSYfbfrQX1cD5ayFPNl+cp8QYQVKu
         WKHfuDFPExu/G3k1mHGyxVUcZFLbB1IIlmrQzPIBglQMyBBdSMipRnsBW09HsMbcysyN
         wvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717062043; x=1717666843;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tg70E1DMLQAJYMbSibCEomGPgBF/Q6k8vXQ9aXsw7qY=;
        b=kpe1PAr9CrOmV78hw8XqFGrgrZbMjWv8h0Pyd3CdXhkwQuhLASmdeCzp8RBbhBp/ZN
         0RxVEz3YIAm52cdgSZLVXzOBHn3ihIp9HLCdzEKlqYo601v4VlcW0LlU6Zzsim9lLvQT
         QaLWln337k7a3BE6E8H42Nc/s4rv1sVLO3XynARskBB8EiBfZqaJ0L5ci8eNFhI6gUyY
         QH1l5KDu7Z1DKmR+CwDT/V6hgP8XO8O3N1FC+7Tw/ncAATryB5/whpYBZo9Xyu3/dIU2
         yE202OsfbvU3GfQc8oA0mIWVm8JMGe9V0BDreUxmSAS3cM8MSR1IRD/KFi2+K5sX6CUl
         HiWQ==
X-Gm-Message-State: AOJu0YzBwUHNW7+AJ3uQ3R6yklJMcsueuWxNu8Hby5fypLtn4FdL/LG7
	nChS0qq5YKkBfu8s9UcJy6Wge8Ee5cjPPjq8jDL0Y0cN8tddZSUi/tkSobYvtQ/So+J+05Cb4+v
	+F+5yo9Jtk7DEcRRPGvue2NctTkTMEg==
X-Google-Smtp-Source: AGHT+IHlhwv3KgKFUCJMC4qLn2ecPv73iELoRLAVNddL22Dqs9JY9LLw9l0PsdN+tKwGDfcpm5VPEvGhdS5c7bI9FAw=
X-Received: by 2002:a2e:90d2:0:b0:2de:73b5:427c with SMTP id
 38308e7fff4ca-2ea847c8a0amr9543371fa.9.1717062042495; Thu, 30 May 2024
 02:40:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2w2F_wRffJTmSyV4T8KMoPs790RESbpJLTU2yxhfEZqQ@mail.gmail.com>
In-Reply-To: <CAEFUPH2w2F_wRffJTmSyV4T8KMoPs790RESbpJLTU2yxhfEZqQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 May 2024 11:40:30 +0200
Message-ID: <CANNYZj-sf3j4yJeCvDWSjqBQbA_-iwEQyD4QLF6oin6Y-UMo5w@mail.gmail.com>
Subject: Re: [yocto] query on building rabbitmq-c
To: yocto@lists.yoctoproject.org, simonkbaby@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 09:40:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63240

The recipe puts them in rabbitmq-c-tools package. If you would look in
packages-split/ instead of image/ you would see the same.

Alex

On Thu, 30 May 2024 at 00:23, SIMON BABY via lists.yoctoproject.org
<simonkbaby=gmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I am building the recipe below.
>
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=kirkstone
>
> I am unable to see the binaries on the target. Do I have to enable anything? However my build work directory has the generated binaries.
>
>
> /build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/image/usr/bin$ ls
> amqp-consume  amqp-declare-queue  amqp-delete-queue  amqp-get  amqp-publish
>
>
> Regards
> Simon
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63232): https://lists.yoctoproject.org/g/yocto/message/63232
> Mute This Topic: https://lists.yoctoproject.org/mt/106378618/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

