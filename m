Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55016C46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 15:30:01 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.19329.1704814192657684544
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 07:29:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WKa1Ilr0;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-204235d0913so2096292fac.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 07:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704814192; x=1705418992; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVLqZcIJhKCsiTB3XLvXPU4EBTfUnvX3RGLACqfljl8=;
        b=WKa1Ilr0fxfjIYy4rtBw4D/If6JJ23DGZor7CkftaR3DAoFSEZRuTSSj9unlRbsB5e
         d4kaXJfBhWhI5D1iDSXwCLXrAFBgK1Hi63JAL7VRtbn6YfLJtkHo8MMLWKibKD4x+AS4
         jRbaQQdEDBbdzWmeUecO3TxZ2QqO9klwdrKioSo5omvQJKlM1o/93AotL1XG2qVOQXJb
         0EZkOQhKfRcS6MQw8A/d5W+VUWkAklNkll5GMvmB8mHS+olrr8PDxUJoCw9T9C4ImUVn
         shNSmWzhkIRKQfckkOrtim9vk2RfEDF0EUMXBoRaVxDhLKq5KM59YInVNVMWpkwf0k0f
         UzYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704814192; x=1705418992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVLqZcIJhKCsiTB3XLvXPU4EBTfUnvX3RGLACqfljl8=;
        b=r+UgGzbE60M1fVIED9sfHG1CyCNPWa1nUZ15PRxx4vFvD6pUPiZ79fR1kYdU5HQVqs
         HbxQPNnftuq1959Z7OVupvGyJmzOT0XLCjbwrgZvbPDOHR7x+DGYjrGLpZKJCbW7TqNK
         q+EZbjzTY0zI9qGXKA7ZR37sCJxHh2OIPUJXZR94lvNczHxSertM9FyNap3p4XVA8dNt
         +HSirw080FzhaUi2H05cjo84QZob0LoM3J5OkNCfVLRZnvIUgW1b+kaSjUhVaCPdoOUP
         JpP/HJhVTXcxnm+nV4cK1Ehpy2Hi2szh0PueF9imzXNQeifE47xWZjh0k8cIxzatK+PC
         vEig==
X-Gm-Message-State: AOJu0YyFVSyBrO0qaTy/TdTYvHwGh+yGBkb0CaBAC3hzrQhxb5GmKxFm
	do/A9OxbvIAq6m6QAMVXgThWVBNkmsWmgSdwDWlK6LrNfFiG3w==
X-Google-Smtp-Source: AGHT+IEL5B0npcSUnMnHvZ4oaeWzFXPclSjmOStdxkJrpvIuQwWY7zRgjKXLs/8um5h4hbBg+RHPxPsOLdreZ17J8q0=
X-Received: by 2002:a05:6870:1f13:b0:205:e3bf:3f81 with SMTP id
 pd19-20020a0568701f1300b00205e3bf3f81mr7064352oab.46.1704814191725; Tue, 09
 Jan 2024 07:29:51 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9HfjU25_p9C7HwabP9YaHjMcbL0YTMwLfhLVHEE0Qa4g@mail.gmail.com>
 <28934.1704813724465689746@lists.yoctoproject.org>
In-Reply-To: <28934.1704813724465689746@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 9 Jan 2024 07:29:25 -0800
Message-ID: <CAMKF1spDcQJ6OBwqudAPiseOu3PXHrfwkCQ0c60DCbaw8mXuEg@mail.gmail.com>
Subject: Re: [yocto] Problem with overlayed recipes
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 15:30:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62122

On Tue, Jan 9, 2024 at 7:22=E2=80=AFAM Daniele Lugli <daniele.lugli@gmail.c=
om> wrote:
>
> Thank you for your reply.
>
> I replaced the content of mytest-image.bb with that of meta-intel/recipes=
-rt/images/core-image-rt-sdk.bb and added
>
> IMAGE_INSTALL +=3D "simple-local"
>
> at the end. This way I get a bootable wic, but find / -name simple-local =
finds nothing.

It could be that above IMAGE_INSTALL did not get effective. Check

bitbake-getvar -r mytest-image  IMAGE_INSTALL

>
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62120): https://lists.yoctoproject.org/g/yocto/messag=
e/62120
> Mute This Topic: https://lists.yoctoproject.org/mt/103602112/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

