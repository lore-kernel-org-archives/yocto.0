Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DFDEE95A8E
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 02:48:36 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web11.52776.1696819706146375751
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Oct 2023 19:48:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z74LjsJM;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1dcbd8a56d6so2828873fac.1
        for <yocto@lists.yoctoproject.org>; Sun, 08 Oct 2023 19:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696819705; x=1697424505; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z7BL16lqDM1GhA2WZyRuLUzZkdwO+7toDzKHljdi2Bo=;
        b=Z74LjsJMSsRgjHOb4DLf+tZp/Q1yCEWRmGzwablIdIfkNIK+SaCeXwaQ8Pep7ypw45
         ZdCunPnBloYLxXGuEypSpSNJCnbWjmyGyXuwjRYpa37++8/n7dfI2YvA1YymchuLFiCN
         6K1NY6yj3wZu66lEFLZ6aQoZI68WptzWHPf127/Y0wwZi+mc1zN8vSdEsVoxHOuDLOqm
         YxANAfapZy8KAO8VpMwjX100mJ49DPNBocEjc3HVRG1I4OmZ7DNMJMN55PwlABgwTrRE
         Z2j79PtDkwN87k4v3ZBEW/kZxgPmEVBT7kg5gKIsvTg623WsUw1/Oq+2JxUYQlEncyGT
         OVTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696819705; x=1697424505;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z7BL16lqDM1GhA2WZyRuLUzZkdwO+7toDzKHljdi2Bo=;
        b=fGRweDASTMGRbTYwkZFOFiRAkQtPxqxfKtRONaSuR5JiVE05g0EmvF3XMKN4WHYZem
         WEkL1AuhuQWVmYdgqmH2+R859ouHxDwzndt+DbaljHGcbyxQ1sVHFlGKpP2zPQnqGKmR
         wA853c3ajAUVySZzYlf/lLcsVGTrSpq4bGUekPOMD3mujfTJlLf5Qw/OPORxyi4e0Gcz
         6wM+lxGsvtR5dTa5xFnxkqVzB27n8EC8ebKD5H+rrqkoG0yy/IgMZBBuRX7mtGTqGbgb
         OupLmlUt7j1oODzl0Zxz1LEXh9Qz1cUJ1SIDE7q8ZvO97LttjiW1HGefNbIL8EsCD74A
         lT6g==
X-Gm-Message-State: AOJu0YwImNv7T41X76nJi75DTw+TWMJkH1cMuhpM8o+zlPehC83ap4zY
	QGYo+CKKM0YGgJw5UiCI3Zulq29dKhOlNJZnU5c=
X-Google-Smtp-Source: AGHT+IGKv9wg76JJlq5KQINWrotu1HbIoQPHvn4OY1utBoFTzSRUGX/fH1eu2MTqsThifNYNQDMxzHND0yvI/8BMLB0=
X-Received: by 2002:a05:6870:a68b:b0:1be:d9cc:d902 with SMTP id
 i11-20020a056870a68b00b001bed9ccd902mr16348672oam.57.1696819705260; Sun, 08
 Oct 2023 19:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWaEETBbUr__2eC3_chYxCQHqbwQujKyJp5KBTZZt_X76zTw@mail.gmail.com>
 <16294.1696801067627543753@lists.yoctoproject.org>
In-Reply-To: <16294.1696801067627543753@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 8 Oct 2023 19:47:59 -0700
Message-ID: <CAMKF1spCnE40ebJmqGZ-Zi4s6=Xff9aquOksv3pZx64m8yxUSA@mail.gmail.com>
Subject: Re: [yocto] Modify target 'march' for RISCV VisionFive 2
To: Electronic Consult <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 02:48:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61280

On Sun, Oct 8, 2023 at 2:37=E2=80=AFPM Electronic Consult
<electronicconsult1@gmail.com> wrote:
>
> I'm using a KAS setup & added the following line:
>
> TUNE_CCARGS =3D "-march=3Drv64imafdc_zicsr_zifencei_zihintpause"

yes this is on right way, you need to create a new tune for this
option and select that as DEFAULTTUNE
see meta/conf/machine/include/riscv/tune-riscv.inc is the right place to ad=
d it.
>
> It seems to have resulted in a successful build of qtbase (following rebu=
ilds of gcc etc)
>
> I imagine there's a more correct way to achieve this however.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61279): https://lists.yoctoproject.org/g/yocto/messag=
e/61279
> Unfollow This Topic: https://lists.yoctoproject.org/unft/101801678/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

