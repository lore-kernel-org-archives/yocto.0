Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD7CC004C0
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 11:38:40 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.118657.1698061118328531861
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 04:38:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OrNCEZEL;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5079c846dcfso4244139e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 04:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698061116; x=1698665916; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1pwyF5nu1FdxFrVasdAtRdenRoUBaA1UMOmPrrWh9JY=;
        b=OrNCEZELtInUIRlEd148dy6CEml4MoIH6lb68aoC2WccXBNkFFcd3jt5lV4eBsxZxk
         I+HXM1p5XBzOBEtxQmHOWXQHppJX0EKwogAjTZjRWWT0cuqhcXl2PnO6W00aO6nae3v5
         5Pytuz8bhk+ost3Dmal2eUGKt69YtPokJeAJeHBUGNfTquRULYcr4njxGRU1zTvWZSKB
         4ovY5m3CtFmAtWL6ESnuF8V4WoljibL4IA4+jqsDZ1tvwZxml0J++oyi3PJoz1OjU8bS
         YDJ0betcpecXaH0tTUSYDPahMPydmkbKGQnuJ71eLHB1ho7KT7Pj1kOqD0VAzItitXrP
         WVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698061116; x=1698665916;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1pwyF5nu1FdxFrVasdAtRdenRoUBaA1UMOmPrrWh9JY=;
        b=fC18lW6OyNx03aHly49HAdqPmMyAlBh3OWgfLiu64BXwrwD1/2zp2M8NAu2NigyxhE
         xHNGWY/KXg8oaqtJ9qlQfbsancy1VbUn2cQicPXNEdQqT1So1kFfHaj0BvK2ZKXstl+m
         mslwDHHoT53JaJrvBIg4sej67SzVoH+A7nQA3GuzjhVc/+Fw7DmfeGx74WEwCgDXRIfa
         qCtgQvLAlekMjpH+KDLI+L0v11KgR7kJcnf1ZGJkUbvByx1BrTp3rO7Jv1nA9CRYxr/q
         EaB4FjUdpihCKzH+m+/bkxcKrKj1HYmBohgwwTvQz2tfeB44FL3xFY5r8Yt2EsQwtlen
         Vx/g==
X-Gm-Message-State: AOJu0Yy5ABB3HmUTaFNYz2dTFX0v9Cp5jMa+ySpwdvS/DVJf+kAqnmM3
	eDEwwjYPuBgvIXjwWjxkJhEl49bMr2jsE+vaUt4=
X-Google-Smtp-Source: AGHT+IGRNfzSdugCmHMwi5SuG9YzzE9CcSh3J9d5Bn2ZDAgVqsoni3CAAwxBuJ2/zhpiw8pVC64C2CsaVGpjEZnPCC8=
X-Received: by 2002:a2e:6a05:0:b0:2b9:ea17:558b with SMTP id
 f5-20020a2e6a05000000b002b9ea17558bmr5710217ljc.16.1698061115950; Mon, 23 Oct
 2023 04:38:35 -0700 (PDT)
MIME-Version: 1.0
References: <gtg1.1698056244656196435.xrq2@lists.yoctoproject.org>
In-Reply-To: <gtg1.1698056244656196435.xrq2@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 23 Oct 2023 13:38:24 +0200
Message-ID: <CANNYZj__qiSb=BKZbW5ZNEXN65tJTG8S7jcEEza7uN6+xAirhQ@mail.gmail.com>
Subject: Re: [yocto] [Poky - Kirstone] About supporting kernel 6.1.
To: Ming Wen <mwen@ambarella.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 11:38:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61448

Note that the SLTS support is not coming from the actual kernel
upstream, but from a separate project called 'Civil Infrastructure
Platform':

https://www.linuxfoundation.org/press/civil-infrastructure-platform-expands-slt-stable-kernel-program

I think the right place for their kernels would be in a
meta-cip-kernel layer or similar, which you are welcome to create and
maintain.

Kirkstone has 5.10 and 5.15, both will continue to receive upstream
support for the duration of kirkstone support window.

Personally I think ultra-long support windows are bad. It's an
indicator of one's inability to do software updates properly, which
usually comes from poor testing and qa practices.

Alex

On Mon, 23 Oct 2023 at 12:17, Ming Wen <mwen@ambarella.com> wrote:
>
> Hi YOCTOers:
>
> As you may know, according to the recent news update from Linux community, Linux Kernel V6.1 will be the SLTS being supported as LTS till 2033.
> I'm wondering what your plan is to support Kernel 6.1 on Poky - Kirstone.
>
> Thanks~~
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61447): https://lists.yoctoproject.org/g/yocto/message/61447
> Mute This Topic: https://lists.yoctoproject.org/mt/102132074/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

