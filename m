Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22CC5C49ED8
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:43 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web12.9383.1649761659610501753
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 04:07:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PqqYqGZ9;
 spf=pass (domain: gmail.com, ip: 209.85.208.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id q14so23553852ljc.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 04:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xWzfb07ufFOHin7To2hU1/ouD02VVYz2VgiRqlcjdEg=;
        b=PqqYqGZ9dDmj8zcpRjXLO1t9GfZuuwN6wd+wLzjoDl/1/ltZ/H67QCimamXxfeoFIH
         NWHj9eGAkMwrQykL/cJTBBQ1WJ0WhWoQeLtYY1g+vO8+sBGZ36s4jztkGP46IGv3LKV+
         R/BaWlMhss1KeJNxzAGxFseeQjWyx/bq1yudxNRkEGDurwrSwZuo9E7EmRFBsbyGt9P+
         g80d0QUkmvrwH99qGi6zoFH5uxygn49w7wCI0GzWZyCnsvboHOB1wSWkecIdLBDCoZGg
         DF9M+9ea60Z5M4Nm9DUvSq2Kvig3cFb/R/p7rjj6o+yksRM3WtJ3qYqllGeWLVL0+smF
         807Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xWzfb07ufFOHin7To2hU1/ouD02VVYz2VgiRqlcjdEg=;
        b=z4FEYsZ0QHg47Z2llaOJ2E8YkdZRRKUTzkf3XQHOo5J4n8U9TRs1GFRB25LXaweOSB
         gIfZ8dmSjfSU0N4gTzo1JwJAC7TQswLRz2q9O4KDdBVuzro0j+2n1Ebz0w+JylPFACYy
         /GarEuxOw7oxG5BIJ1Mc75NOtpk78/yqTQ4w48gdpmEGuDvgXagLZ/fDbwFraJCK2iOL
         2PcOYv5KKvCyhEIeig5cW3JWypUMpW5d5ZFNAP+YZhiioSneKT1EkYIMivjNDv1e+nML
         ndeGX5AlMLsTfAtotPjvMZiqenqCQIqE+lUAsOEmcPVINwE4UPSdKP57OGFW1iMZECLG
         kxCw==
X-Gm-Message-State: AOAM530zBc1/a/LEg3E3JfS98vEEt49jhzhbIENUy5NCc3rgDRv9vdwC
	VvTcjz0bhVtQ2fOfBUNqJT1lUxKFEurRUpX+U6M=
X-Google-Smtp-Source: 
 ABdhPJzYQlFVB0huHO6oOaybgcIlkSr+ia9K8VR5goSaRNl4SODLmVF8Fvzol+A8y4GYDDBVqeBtrmLAjkmNtWU5TMM=
X-Received: by 2002:a2e:a80d:0:b0:24b:51b6:676b with SMTP id
 l13-20020a2ea80d000000b0024b51b6676bmr12476437ljq.41.1649761658004; Tue, 12
 Apr 2022 04:07:38 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PA4PR01MB772649BB4BB5A4B9BFE91CD1E9ED9@PA4PR01MB7726.eurprd01.prod.exchangelabs.com>
In-Reply-To: 
 <PA4PR01MB772649BB4BB5A4B9BFE91CD1E9ED9@PA4PR01MB7726.eurprd01.prod.exchangelabs.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Apr 2022 13:07:26 +0200
Message-ID: 
 <CANNYZj8VJCdZK2dj6q_1fMDP9k_urFCOV_6pafENJoMbesfKew@mail.gmail.com>
Subject: Re: [yocto] Devtool
To: =?UTF-8?B?VmFuamEgxb1lcmnEhw==?= <vanja.zeric@ttcontrol.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56747

It's hard to say anything without seeing the recipe and the patches.
Can you publish them somewhere?

Alex

On Tue, 12 Apr 2022 at 12:57, Vanja =C5=BDeri=C4=87 <vanja.zeric@ttcontrol.=
com> wrote:
>
> Greetings,
>
> I am using devtool and I noticed something that smells like bug, maybe I =
am wrong. I am trying to modify some recipe and there are already 8 patches=
. When I do =E2=80=9Cdevtool finish <recipe> <location>=E2=80=9D it will de=
lete old patches and add only my patch. It is same if I use =E2=80=9Cdevtoo=
l update-recipe <recipe>=E2=80=9D. Has anyone ever had similar problem?
>
> Best regards,
> Vanja
>
>
>
> CONFIDENTIALITY: The contents of this e-mail are confidential and intende=
d only for the above addressee(s). If you are not the intended recipient, o=
r the person responsible for delivering it to the intended recipient, copyi=
ng or delivering it to anyone else or using it in any unauthorized manner i=
s prohibited and may be unlawful. If you receive this e-mail by mistake, pl=
ease notify the sender and the systems administrator at straymail@tttech.co=
m immediately.
>
> "TTTech - Internal"
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56742): https://lists.yoctoproject.org/g/yocto/messag=
e/56742
> Mute This Topic: https://lists.yoctoproject.org/mt/90415530/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

