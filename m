Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12CCCEF148
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 09:43:30 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.5118.1728380600332615301
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 02:43:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IPDyWCIb;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fad6de2590so80123691fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 02:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728380598; x=1728985398; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IVL9ppRWx5dLPE5qGZY0DCVnHCMLa2dZ+/nuhNUu+7k=;
        b=IPDyWCIblEPYYvXlsY2iu7QYjWtFFXeUBUJ1tDFzOjLIX07P9Yg1EaeI0J9HiL9PSm
         5xXdmoXfi9GEKBbhTvxMTy/pmS2lfiTNx19n9gX6cUNnl/lOXZrg4yYqbrrvRUzIxvk6
         i3Ae0/xeC5qNRH5t3CyYT/fduNyQpaLJ0A0EcpvqO9gH+HQ3T2rCCDsE1/heH6TlJsnL
         gNwr3vLX1FF5K/MyWMS+hj3a5UiDokOyWGk9KZ/rOzxcCVdMrouTBBG4HqevZMNixb/1
         J3p/AczW77mOW2hWlnrNgbN3qm5ZzPWNRb0hbqD+Mzn+KEca2ZGxfAwQ9zmyA2oOQNrJ
         E0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728380598; x=1728985398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IVL9ppRWx5dLPE5qGZY0DCVnHCMLa2dZ+/nuhNUu+7k=;
        b=D67sht2aNxDAIDksW+G2/5Cw3J7klYzutAJds2bZjTAuYmvPNxGCFc5ymq2RE9uOqk
         Y2vA0bzXOjczLITCfmuzgmttlh3dZNY45bCY9R7L14WO1x+KiVtrB0Qk0bW88bX9xW4S
         bRqMTnpTR5aEtD7lvdxunsXJ8si/0NmbtAvxXTvkiXwgJ9dPAB5iT5nzH8Z0r/eCvDWy
         KQo3KftKj2U74h7z91ncPMwx4/j+HkmXjqcOhLOPH83FEg0Laf2RBsDJkfS0KNPyiawP
         TTQxvtmAnj2J4R3+Z03v5noWuSCbaxrsobhAAeEbGsJXvIAw+7Viw8ILFBRh8Tw7fegu
         bg2A==
X-Gm-Message-State: AOJu0Yzh/vMi1Xqxph7/yb7DPoo3qms7ohEykYE3DsjB5tT6zBmsRB+J
	lMsKFHvd2DaA6wz1MmrnMDDOqI0wiTJqxjB/w5uI0gmks2O5VYfWQyeHk43CvfEDbjNpG0M/slf
	QF/9IRDqvHpMjNHYro0fknjp/IEBp2g==
X-Google-Smtp-Source: AGHT+IHbRPmwDfP4zjkbypaymxC/iqZq7DS7B4hL4b03qdbh2HIhbrItQ5p5F9RR6MPR+q0jxUuc1Wj3evsnrZeAhjk=
X-Received: by 2002:a05:6512:b07:b0:536:a7a4:c3d4 with SMTP id
 2adb3069b0e04-539ab9cf1a9mr10574785e87.39.1728380598040; Tue, 08 Oct 2024
 02:43:18 -0700 (PDT)
MIME-Version: 1.0
References: <xhAk.1728376109213832144.otFZ@lists.yoctoproject.org> <CAMSfU+5HUJE_5OSNdB3WuOBntX-S=Zb_pxgLBfaeSYtVhW7ePQ@mail.gmail.com>
In-Reply-To: <CAMSfU+5HUJE_5OSNdB3WuOBntX-S=Zb_pxgLBfaeSYtVhW7ePQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Oct 2024 11:43:06 +0200
Message-ID: <CANNYZj-0Dyh12N9-+nYO0V2S_=DBVJt0h-yastxKbF=KGdWtuw@mail.gmail.com>
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Cc: salahaldeen.altous@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 09:43:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63966

I think you should rather teach your customer to use yocto properly,
rather than exchange SDKs and pre-built ipks with them. Write a proper
recipe for the component, and explain to them how to use it.

Alex

On Tue, 8 Oct 2024 at 11:38, Yoann Congal via lists.yoctoproject.org
<yoann.congal=3Dsmile.fr@lists.yoctoproject.org> wrote:
>
>
>
> Le mar. 8 oct. 2024 =C3=A0 11:27, salahaldeen.altous@yahoo.com via lists.=
yoctoproject.org <salahaldeen.altous=3Dyahoo.com@lists.yoctoproject.org> a =
=C3=A9crit :
>>
>> Hi All,
>>
>> I have the need to update the yocto SDK incrementally without the need t=
o rebuild it every time from scratch.
>> I have the package management ipk enabled in my configuration.
>>
>> can I use opkg install after sourcing the SDK script? which requirement =
I need to get it running?
>> updating the rootfs on the target is working fine, but updating the SDK =
is not working
>
>
> That sounds like the eSDK : https://docs.yoctoproject.org/sdk-manual/exte=
nsible.html#applying-updates-to-an-installed-extensible-sdk
> Have you tried it?
>
>
>> Regards,
>> Salahaldeen
>>
>>
>>
>
>
> --
> Yoann Congal
> Smile ECS - Tech expert
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63965): https://lists.yoctoproject.org/g/yocto/messag=
e/63965
> Mute This Topic: https://lists.yoctoproject.org/mt/108885909/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

