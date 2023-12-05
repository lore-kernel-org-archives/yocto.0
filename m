Return-Path: <antonio@amsobr.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D5AEC4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 18:26:51 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.1288.1701800809335835998
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 10:26:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amsobr.com header.s=google header.b=S4veNH/u;
 spf=pass (domain: amsobr.com, ip: 209.85.216.41, mailfrom: antonio@amsobr.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2866fe08b32so1999840a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 10:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amsobr.com; s=google; t=1701800809; x=1702405609; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pWm8t2SOUpo42g0OSKZDFjTdGTUQC7/FQR1A9eyX4zE=;
        b=S4veNH/uxn9vnlEK6zGTMLXjgRvz+ahBWoBa8a4zWp1bdaczmoEOEej6lNRjuicK8Q
         nhnbrF72UD2WmF5yenJ+j46fbdUGzjEZKVtHJPJ1fBEnwQ9NodCDDY7+3g3DkNq6KYFq
         Pl4rRY38iWeJTJOk4mzqU9VpNFbyYILiCrT4CYvCroYwDnPvEB3LfKtuXgp1GhN00UaD
         c+REpZOKN/m2t/nBNAuuVyVGuLZAjIcBufQAKL79RNDVhigg33eoUZ9BRddu3pSASnat
         TWWZBMj7mUPtDCJJmpYCHOBHTX8egNxhxEohy1F9qLxkypKdO1Yk+EOK346qWEdNKJrd
         E3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701800809; x=1702405609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pWm8t2SOUpo42g0OSKZDFjTdGTUQC7/FQR1A9eyX4zE=;
        b=JrJ0tQZzkwx1yWT97EclQ4LOfBtvCxzpfOlLicRxL5uSVGugRfAcnb5Zh7nVXOuc1T
         AckeYTx6yhAVh9GuUB7TF8+perzqTIHButc3LE5NvoZ40E9UqKjlbcDHeimahTmpUP9e
         LvISKPdMItoPf9PLptmOX/ISNV4e+ZbKJOSpRuzXq8+qYTb2ODA+bPFFUVfTbbxE5Rf2
         vKYuoe5p/692jOVZM4EaS/iubtn3pVgPwNUdXcAxVt6MTLZUKDSCxbKN4jAwwxFEfSyA
         YvCMxKkSYJ9MQ2of733hW+XuWMKutRamDvFo4DsDvybjnOYa86iQtXmftsj9+fNeH1cm
         aTMQ==
X-Gm-Message-State: AOJu0Yz9Yn+jZm/E1n1YVN90ESEFALk6hc+KqOASOo1SKleY1YtTOdSL
	YdppeEjtO9+CkcoZyvxbeaQF72FC5t348b+UQtCzT9i0N+tRnBHv
X-Google-Smtp-Source: AGHT+IHYC2CumHwOFd1YghDYapcf7PiHJF3CQZh9e0gPklL7CYLRZe92Iq+Y6YFuBZ1GSfidz17/l7gvTOhDJIhw5vM=
X-Received: by 2002:a17:90b:4c0f:b0:286:b6b6:2a54 with SMTP id
 na15-20020a17090b4c0f00b00286b6b62a54mr1379518pjb.23.1701800808830; Tue, 05
 Dec 2023 10:26:48 -0800 (PST)
MIME-Version: 1.0
References: <20231204183055.29931-1-antonio@amsobr.com> <CANPvuR=iEOwO_Jt4M-GOPWxCPf00CfNe=A_sziLhbpFjkn4s=g@mail.gmail.com>
In-Reply-To: <CANPvuR=iEOwO_Jt4M-GOPWxCPf00CfNe=A_sziLhbpFjkn4s=g@mail.gmail.com>
From: =?UTF-8?Q?Ant=C3=B3nio_Oliveira?= <antonio@amsobr.com>
Date: Tue, 5 Dec 2023 18:26:38 +0000
Message-ID: <CAGfGMDERE=08mjBuugHFB=Xui20ZYmfK59_6vhGEgfsPg3kWuQ@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH 0/1] lts mixin: kirkstone/nodejs proposal
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 18:26:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61806

On Tue, Dec 5, 2023 at 10:44=E2=80=AFAM Jose Quaresma <quaresma.jose@gmail.=
com> wrote:
>
>
>
> Ant=C3=B3nio Oliveira <antonio@amsobr.com> escreveu no dia segunda, 4/12/=
2023 =C3=A0(s) 18:31:
>>
>> Hi all,
>>
>> This patch contains my proposal for an mixin layer that adds nodejs v18
>> and v20 to kirkstone.
>>
>> Kirkstone ships with nodejs-16, whose maintenance window ended in
>> October 2023 (a).
>>
>> Kirkstone will be supported until April 2026 and it would be nice to hav=
e
>> some level of support for a maintained version of nodejs during that tim=
e
>> window.
>>
>> This proposal seeks to address that by adding nodejs-18 and nodejs-20,
>> which will be maintained until April 2025 and 2026, respectively.
>>
>> The recipes for nodejs-18 are taken from Mickledore and the recipes for
>> nodejs-20 from master.
>>
>> The variable NODE_VERSION can be ser in local.conf to choose either v18
>> or v20 (the default).
>>
>> This is my first attempt at sending a patch upstream with git send-email
>> so any comments or suggestions for improvement are welcome. That's also
>> the reason why I marked this as an RFC.
>
>
> Hi Antonio,
>
> If the patchset was made with more and smaller commits it would make the =
review easier
> but it is perfect in my opinion with the context well explained.
> The git send-mail is much simpler than it seems.
> Thanks for your contributions.

I thought of that but couldn't really settle for something.

I guess I can break it down into smaller pieces, like:
* layer config, license, readme...
* nodejs-18
* nodejs-20
* setting the choice of node version in layer.conf.

Would that work?

I can break
>
> Jose
>
>>
>>
>> Cheers,
>> Ant=C3=B3nio
>>
>> Ant=C3=B3nio Oliveira (1):
>>   initial commit
>>
>> --
>> 2.34.1
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#61791): https://lists.yoctoproject.org/g/yocto/messa=
ge/61791
>> Mute This Topic: https://lists.yoctoproject.org/mt/102976461/5052612
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quaresma.jose=
@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma

