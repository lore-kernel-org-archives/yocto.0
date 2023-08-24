Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84D5C3DA6F
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 06:14:33 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.4976.1692857673288343284
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 23:14:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=AOY8p+6T;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: marek.belisko@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-99bdcade7fbso804689066b.1
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 23:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692857671; x=1693462471;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nzWBHe6FWesFyxMVd6Ib73DmVfYMiqeS24B4k+RS8m8=;
        b=AOY8p+6TDtKFXeCDgArQvmt4miaeEBmkC+lKd+12mY0mGVtyKFWGKXJcjScJIV0/yH
         tyOmy36XAdCyr59B33giJWQDpoVYxfT5RILjnQL/Ea0+2Qa9iLAAQcGAERhp9J86wQBj
         w73VrFK942GmW6y8nNjIPljsbP12BYqM1OH9ZVg1GbsUB4ZyQN+OO/68vwVZHJkHn7xk
         NaGlUXP3XCEkdqUbY5ll50k0pUMnTowR0g2eEhaKeuF1mzLntQ6PnQXdaqcXmq70lRiE
         AWtijV5mYkeqjqYhFKk61I+EBq7Ub/+dQD7E9FDLsz/Bh/rwKXZAaxKjxhQIooT4/8Xw
         tYtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692857671; x=1693462471;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nzWBHe6FWesFyxMVd6Ib73DmVfYMiqeS24B4k+RS8m8=;
        b=K42NBYeh7+CIaCn4wCf0OA+3bZx2YCIWFFkXVMD08Myp9j+bV5Q9M1bK47kpihxjA7
         oQ6J4StZCmNTHeRBEG90tk0tmEV7CGXi2JaN5t5kV7KYp05RV9r3z0OIzS/mtD0Eqemp
         vwtuA+5RBQywBgyKlgtv70c6C6ZJoun7vrOaP/RjusZESFGEIDsP/I+MUNfABL/3GKER
         K8rG4/ATkGSd1G0OY5pDnGFRjH3G3vqWZBP/w83qHM9yPMlnmUTRnUdJVmTPTOyI72oN
         YdCraI3oC98mh03ggjOQVJMuXRzxzVhtMqYpoaRnBsJpuFZ5a0p/buPKk4jQ5z/+svv2
         EZzw==
X-Gm-Message-State: AOJu0YyzFVLf8iyTLx71+Ez2iH6xYu/tilyzGiLcqFde2e1matKoQEdi
	6cfUG+kT2WMGSN/sVcAJcTH4f3rcJA+3Pw==
X-Google-Smtp-Source: AGHT+IH6Vcx2F3gRCle4mouszuIyW7DGrYNLcS6ZROIJ2d7TwhicLNaLcrnOy1GOjv2e+lbEDxJeYA==
X-Received: by 2002:a17:906:cc2:b0:99e:f3b:2f78 with SMTP id l2-20020a1709060cc200b0099e0f3b2f78mr11403367ejh.67.1692857671082;
        Wed, 23 Aug 2023 23:14:31 -0700 (PDT)
Received: from smtpclient.apple (ip-46.34.226.251.o2inet.sk. [46.34.226.251])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090694cb00b009934b1eb577sm10465595ejy.77.2023.08.23.23.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 23:14:30 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Belisko Marek <marek.belisko@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
Date: Thu, 24 Aug 2023 08:14:18 +0200
Message-Id: <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com>
References: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
In-Reply-To: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: iPhone Mail (20G75)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 06:14:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60873



Sent from my iPhone

> On 24 Aug 2023, at 02:23, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> =EF=BB=BFwhich task is failing ?
do_compile=20
>=20
>> On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <marek.belisko@gmai=
l.com> wrote:
>>=20
>> Hi,
>>=20
>> I'm trying to add nerdctl to an image using kirkstone release for meta-vi=
rtualization.
>> I've added bbappend with following fix:
>>=20
>> SRC_URI =3D "git://github.com/containerd/nerdctl.git;name=3Dnerdcli;branc=
h=3Dmain;protocol=3Dhttps"
>>=20
>> (branch name in original recipe is master but main is required)
>>=20
>> but then anyways it fails with:
>>=20
>> rsync: [sender] change_dir "/data/projects/test/build/tmp/work/cortexa53-=
crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.fetch=
/github.com/Masterminds/semver/v3" failed: No such file or directory (2)
>> | rsync error: some files/attrs were not transferred (see previous errors=
) (code 23) at main.c(1327) [sender=3D3.2.5]
>>=20
>> And in ${BP} I cannot see any of those vendor stuff which should be prese=
nt. Is there some fix for that already pending or it's known issue?
>>=20
>> Thanks and BR,
>>=20
>> marek
>>=20
>> --
>> as simple and primitive as possible
>> -------------------------------------------------
>> Marek Belisko - OPEN-NANDRA
>> Freelance Developer
>>=20
>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> Tel: +421 915 052 184
>> skype: marekwhite
>> twitter: #opennandra
>> web: http://open-nandra.com
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#60868): https://lists.yoctoproject.org/g/yocto/messag=
e/60868
>> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>=20

