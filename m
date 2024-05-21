Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C5C25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 09:57:33 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.15961.1716285446981036649
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 02:57:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S1uWZJW6;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-523b017a5c6so7763939e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 02:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716285445; x=1716890245; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=itaxriyVusq5Bn8vPzqLmJk9Ku+xJBlo7mVWFBHlpZI=;
        b=S1uWZJW6BjUqbuArcODFlFk0k/6SOeVOHxtckCIZkd86BGMVCIlYnjioWv0jYKjg6k
         u85mXyS3D2NNyNxltTeHzUSVJmiKNcde5+7HdLG9qRWMKXw0wRazBfbS7ih60gcRTFbI
         6N2dvDRsH3s2NadCypedjMPM16GBKM1CqC/FFWo3RrMdhCd/LY9KmCww/20oPyePxpZ1
         hGUiCJ8ZQoZtm3OtHd8Pz5+mWK+78EykGZILt8zEtcrr+lk+/zPdRVVErBynn+Dr1jWx
         8cJl4ZkMODLEy/yeNXOsz0knq2e1qRYsK6M1bHvdL81YV4YkxzmTzqg5AbzLFOkI6t5O
         jZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716285445; x=1716890245;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=itaxriyVusq5Bn8vPzqLmJk9Ku+xJBlo7mVWFBHlpZI=;
        b=OS3N9vqLFnOyp34sJsuqUkwQWgfP7Lr/xLzkikzGlnjB0WalZdSpWR1GhVxu5x8BTc
         kFYITBX1gcniKAstYxLZgxd4qP7tUbvIMD/vJ7qex8p/Qn/wXTjpgM40SjiINKVH4gCJ
         p4pwlu/nRspzMDcMzIRhxbUFkXu8iupSCcqyGSjmNBe+4MlFjFhD5J9cm8wVH5lZ70m8
         HUEYxWJAlQ6UMsdE1wq6OOeMRdOO4T8LkcV9nKYAa+OHJ7hXSB7z5LCRNztKOK4fJKiQ
         VQwRv4vtoqV5EeMHFCHX4XdFiJa8du4mwoYgvytDZ7MWCUgSf4Tq2tYaD6PMpe4n46Sb
         VNmw==
X-Gm-Message-State: AOJu0YzpaW5Ih6FyLuGYFMDPrDoV9+CXhu8CpkOz/0DVBbCSo++foW2U
	Dews2CN/8Cp7zxVcjGXIKS8Bw7vPpgJKFGihDIVooIQqLXAyNhNMaj9LVFUeWEw+fuHKvGNzjCC
	urpCb45FT/nM/DH855HN2NFVlccp+Tg==
X-Google-Smtp-Source: AGHT+IFBGROxCSXTjGytHDJb/3NV2k8ENJ4xIjrlIbU2uC7PI22wUcbbm/CAzBkSX9131OycN/CkfjAhLp4ICUfIgbs=
X-Received: by 2002:a05:6512:3c9a:b0:521:7846:69d3 with SMTP id
 2adb3069b0e04-5221027858amr31724106e87.55.1716285444935; Tue, 21 May 2024
 02:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <vSKx.1716181159836412366.VStY@lists.yoctoproject.org>
In-Reply-To: <vSKx.1716181159836412366.VStY@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2024 11:57:13 +0200
Message-ID: <CANNYZj8Vm-PZ+3ARi12HjqGZ0UnvMWqNYPsNRjg0zveTc0T9CA@mail.gmail.com>
Subject: Re: [yocto] runqemu qemux86-64
To: yocto@lists.yoctoproject.org, sasikumar.e@fdss.co.in
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 09:57:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63148

Please:
a) introduce yourself;
b) formulate a question.

Alex

On Mon, 20 May 2024 at 09:47, SasiKumar E via lists.yoctoproject.org
<sasikumar.e=fdss.co.in@lists.yoctoproject.org> wrote:
>
> I followed all the instructions as per the quick build, initially qemu had run for the second time it is not working and resulting to this error
>
>
> runqemu - INFO - Running MACHINE=qemux86-64 bitbake -e  ...
> runqemu - ERROR - /home/perdaa/poky/build/tmp/deploy/images/qemux86-64 not a directory valid DEPLOY_DIR_IMAGE
> ls: cannot access '/home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf': No such file or directory
> runqemu - ERROR - Command 'ls -t /home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf' returned non-zero exit status 2.
> runqemu - INFO - Cleaning up
> runqemu - INFO - Host uptime: 278.63
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63139): https://lists.yoctoproject.org/g/yocto/message/63139
> Mute This Topic: https://lists.yoctoproject.org/mt/106199430/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

