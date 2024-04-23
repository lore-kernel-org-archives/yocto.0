Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507CEC04FFE
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 12:02:52 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.16684.1713873766363068800
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Apr 2024 05:02:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=T7h+jBMZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51ac9c6599bso5133933e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 05:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713873764; x=1714478564; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/qnP7Mpt2x08H3zZfvM18Vn73FJ+xLpkshSgcnbStSc=;
        b=T7h+jBMZI2CFM2VCiYX7SM79j7C4JnbCaClaIyfYpKElnPMwA60rmBTO4pgsT+V9mi
         N89xlXUogt9kmtoMi1Zn997twuXQxuMCKLKZ0zy9IaDCMTk8Hol27c83nLKV4DXDzZ1s
         ELIeCdXICz4yH4OaS4vEdwIRnv784YTYfODXPVeOn5X5xIWztm8M+aXApG06oIXntayI
         E8uJYx5Ej8pOXkBe3uFfySGwCQahbzS3iNglnGKRM9Reawk9QwmWnU8bZW4+t97ThwEy
         2RJJatWicFa1SFNMxH16esZd5wfMQCg09AZADZNAQ/CnNTe1gGdexnk3b/Kalnv30Zzl
         E2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713873764; x=1714478564;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/qnP7Mpt2x08H3zZfvM18Vn73FJ+xLpkshSgcnbStSc=;
        b=jBzQGC6yWC8ClmCNoXBZTtn4LlTtoAzdGvztXaEPs4x3u8ryGJ/qa8s0WEbc6IQx5C
         juW/IsFsYhH17dJvDbaxTlXXLzHqtRPUiS4UGaunzyY0sU3wQOcqDNpTDjmXbS+6AbM9
         KWE4Sa4uzx6wPrzu4Zm09QdIlZdLUPVVqxLOD7hLozehHEYbx+MChDFJ+5r5dLmHHRas
         y98YFziH2mE9fVLXDuTn2qUEA68ERWVGwwdMEKSY4Uh0eTUCjLvzMF69xmAM+XQCz0D5
         hM964CfVe6LGSQvN6QXBvgRCq4a5sG5B4vRpUZ6nTuOsl57Dh9/LfTc9emig2vFhGy/3
         Ejiw==
X-Gm-Message-State: AOJu0YwB2l2K+6pRwaPlht0h7HXWQkwb+qTRW5djJVSFq2tWYwDbXae4
	AzjNTNj4zM5DcQFn/dUHKsyIfMvc7S+QL9kqNkIITTDprICKDNlP7xggHCN3ikUwpO+xC527+O1
	iMv+8MPbt5KRS5wqnfHUUzXlB/3IQYg==
X-Google-Smtp-Source: AGHT+IFBJNDtS+Wti+mjgyv20D43hW5AReZOO/eTWlz2l9TDrKv1oejd6ObbsGU2cPsTap0IadUXOdkEOe4I4ZowE2A=
X-Received: by 2002:a05:6512:401:b0:519:6e94:9b4d with SMTP id
 u1-20020a056512040100b005196e949b4dmr9142304lfk.48.1713873763804; Tue, 23 Apr
 2024 05:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <COpS.1713873449234365047.hDTV@lists.yoctoproject.org>
In-Reply-To: <COpS.1713873449234365047.hDTV@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 Apr 2024 14:02:32 +0200
Message-ID: <CANNYZj8KMPiz3kKT-XNwc1pEDDFp85aem6fMbQ_b9S=ZASfwvA@mail.gmail.com>
Subject: Re: [yocto] Yocto common place holder for includes which used
 multiple recipe
To: yocto@lists.yoctoproject.org, Salahaldeen.Altous@leica-camera.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 12:02:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62986

I think you can simply make it a class and put under
classes/some.bbclass? Plenty of recipes in oe-core do this, see e.g.
gnomebase.bbclass.

Alex

On Tue, 23 Apr 2024 at 13:57, Altous, Salahaldeen via
lists.yoctoproject.org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> I need a common place holder to share one include files which can be used by multiple recipe (this include files includes some variables like SRC_URL, tag, gitbranch, ..., etc).
>
> I can copy it to each recipe but I am looking for the best practice to share a common inc file for all recipes in meta-xxx which can be found by default and this need to be under meta-xxx folder.
>
> thanks in advance.
>
>
>
> Regards,
>
> Salahaldeen Altous
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62985): https://lists.yoctoproject.org/g/yocto/message/62985
> Mute This Topic: https://lists.yoctoproject.org/mt/105687839/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

