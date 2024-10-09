Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C4DCEE35C
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 22:16:54 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web10.30064.1728512200504007189
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 15:16:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NUmFYlKO;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5e7ff0f41caso709117eaf.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 15:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728512199; x=1729116999; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xZNfhQiWLACNy7CW+CTtrlFPpUYgPJV6GUFVaA58pgs=;
        b=NUmFYlKO0a+H8/z353eEz4MLAKwl0/I/bBR/QYBgJBWQnbJ2QzmJDi9yVNK98W3GSj
         qMUP0keoI1rSKTgBxeX8Ci57PSZGCQKofkWp9UPPXobBpdD+j1JnEThq1eubY9GBAyD0
         91/2pB0C1X/2MlsUGpX3Z87n9vYZgic8/4rqyuz55k1gBOBxgfcyvtf+zGnZ0o0+JTkt
         gR+ec2403pSpUHpa0s+VRZ7MgwSqgwdW0+6qkNhjZrgbxBgdmJ5zzk0sd9bkg7/LBvna
         ys4LRbA4YlOtM4ZTmlVPMPh7kv723gcRXH0IMsiHbJrFHXu8r1d5r0nlvGBzkSb3mGP3
         g5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728512199; x=1729116999;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xZNfhQiWLACNy7CW+CTtrlFPpUYgPJV6GUFVaA58pgs=;
        b=WU9AbjDi3P2Q3tZWNUH6hyAM3T430snotj0odQcCN8qmxkU0ZLhu26fk6lLbzRrecT
         7L6JAJozX6e860v32Qk2VaQAj/7q249M0x3N/AxaSDHrP4gKi6oaRTwAbKgTMcojQy0I
         OwyX0fKIx+Xmz6T/CL4oWGjDC9fRzvSCmdgvMsBXNi5rJUb0JgJ9tzr3May6CTZW+8uU
         fxe1zIXERS1KCoujAxPWKd2CAGGv2F/sZf2JIn385tfaAT2w0BnZO4cMVREn7sge6thV
         ZLaaFazw1ZDSDCTp+D4vUnuVE4m2H4Ye8mA5XE7LDgh7L4eQWruuxtMogfwBFLGMn9c1
         kDpg==
X-Gm-Message-State: AOJu0Yw55M+bRDu7gPcmGKljOdu+E3/tXPl9/e1jidDnYt8h6F9Thtsv
	7U1AD8kcjXPzfsywL8sWW3yyQPpl8kJdoENK8UwlkYm6hkkK9ZzaRopw0Vm/++ux98gZdK4NZ1e
	rGBBUX2iGwsD6P74uTMtqOUG8eUr4D45R
X-Google-Smtp-Source: AGHT+IG48YcMBbh8ZOj1B6uF7T/z1hoY1p4WT8tJolqSZIsJMa+9LT+lnCKT/oRZ+dRbUlAxa7GVaxRmnpPkD4UK5+8=
X-Received: by 2002:a05:6871:7516:b0:273:ca8b:2f58 with SMTP id
 586e51a60fabf-2884d2af892mr809031fac.11.1728512199658; Wed, 09 Oct 2024
 15:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <5wgl.1728482531929615477.38hR@lists.yoctoproject.org>
In-Reply-To: <5wgl.1728482531929615477.38hR@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Oct 2024 15:16:14 -0700
Message-ID: <CAMKF1spavCFDeT2vS8dwu7b6eF5rBw05=JcZaigC+hVVyNagmw@mail.gmail.com>
Subject: Re: [yocto] Howto use minidebuginfo
To: yocto@lists.yoctoproject.org, younghan73@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 22:16:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63996

this feature is relatively new, I would suggest to try it with master
first perhaps on qemu or something like that

On Wed, Oct 9, 2024 at 7:02=E2=80=AFAM younghan73 via lists.yoctoproject.or=
g
<younghan73=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi! I'm YoungHan,
> I find out the Yocto support the "Enabling minidebuginfo" from https://do=
cs.yoctoproject.org/dev/dev-manual/debugging.html#enabling-minidebuginfo li=
nk.
> If refer the link, minidebuginfo is usefull feature for early stage of de=
velopment using Yocto.
> I tried to enable minidebuginfo at DISTRO_FEATURES. But can't find out an=
y changes.
> I want to apply whole binary with minidebuginfo instead of stripped binar=
y. If have any detail information, could you share it?
> Thanks in advanced!
> Regards YoungHan~
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63987): https://lists.yoctoproject.org/g/yocto/messag=
e/63987
> Mute This Topic: https://lists.yoctoproject.org/mt/108909381/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

