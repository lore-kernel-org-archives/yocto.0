Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B3BAC02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 13:26:09 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.10465.1737120368660424387
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 05:26:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gE//7UIg;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7b6eb531e13so108836685a.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 05:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737120368; x=1737725168; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fh+7kII3vh22QZ/oSyE2xkYYzHWkpJKDli2zCiMcobc=;
        b=gE//7UIgSScYp7UeRuHWM7ZVzUK1PVBgWpAgdA36j3t6HAOSTwag7LypXr0YJrZpIu
         cT4P4kB0JqhZ6Jkw8WND74/eMToYK4j9FFya3aw40JpRfHauRV84s/TyxR92RvvPGada
         1obkY8AuNB0w6ndyDUmSx962wRKQFcc5rtkxxmLaHJ7tUamqZUz0HJJUMfmsqB2qW596
         Mi66eOr89EJJ9vFwxbs/59MK9G8/wk4C5hIDM1FzqW9HuDmNTTICsPfAhbhKCBj713oX
         JqmcftS2w9WVREtXlCoQQk72TP2ANGrQ2tEoLo5G9NSCZ0LnI0QD3ORhkCRhoy3u6mxE
         driQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737120368; x=1737725168;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fh+7kII3vh22QZ/oSyE2xkYYzHWkpJKDli2zCiMcobc=;
        b=Go50L9SewHkrAAmTTZCByrmGaJyQuizOeQ5froIWcimYp0LBhDrJZVCQ8bIUYLhllg
         oIevfOwh9LfjVOyT4WFZe+V3ZwSG1chhP5dBNriVkdPHP8A3yDpD8P65cTvjgPiQeMub
         se+hx1EBAind8JQJZPHU/Y8Q/fSHI+i3uN78+iBAz/5z622yDZK4XOZowSUEBsh9/0pE
         hJiD2zs8RzH0iiETH5nzp3IHHh2KXF8Mr6akkyb/6XuBzNqB0/2rjEbnCM5Gy4vTXblc
         GgypzxQwPxBsp/lBFxRQpINV2OtaCeMU81GGXLC5788ks4mPUcpC3TG8VKvQinfSLIc+
         4QJg==
X-Gm-Message-State: AOJu0YyOtSXxhmvjRIY/oKeA5gbOplr0APn4WblfB7RywaNmdfPYmm7Y
	Rd3FNKYXcl+VXaEZOq3FD+H29OQAVH1fSc8aUr7Tjum+HGDkGpJKmsG7RU0IEvCyn/AkrNu4o80
	adbdR5yrSyk+vruiSq84BclTZd8m+2Q==
X-Gm-Gg: ASbGncs+IJ4xfSOxKbGurFqSnHefO6mI5aYJvfB/0tNWJMqOzv+EgJhSP2JtpVcWtfD
	BtbgJP/CROqrP3hEkXd6sE0p1auJ94ogxQTbQ5mOUGTldQEVarTLuhfLv9JG9uv4ZiIQ026mv
X-Google-Smtp-Source: AGHT+IECe9/r0pSOudnxIWsrj4q/UETrFipe5OL56+QqlLwFrYqKpO2bwEnvWPThpo6TPr/iJHK29+kfwBsWQ5ra6qc=
X-Received: by 2002:a05:6214:268d:b0:6d8:96a6:ec27 with SMTP id
 6a1803df08f44-6e1b21c4a85mr45429266d6.35.1737120367754; Fri, 17 Jan 2025
 05:26:07 -0800 (PST)
MIME-Version: 1.0
References: <Lxlg.1737119114497277084.OacT@lists.yoctoproject.org>
In-Reply-To: <Lxlg.1737119114497277084.OacT@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 17 Jan 2025 14:25:56 +0100
X-Gm-Features: AbW1kvbX67I54C4UrLkP679ibdQ0kAFcsmCMYvnSNuoBTG0woLnWV8wBaTdc9xU
Message-ID: <CANNYZj9+w=Hx3Mk9SSadNXEov5W2Q-Ph-o0wHNmJtrPDA5_+GQ@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] Gplv2 layer incompatibility
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 13:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64576

You need to remove the layer from bblayers.conf, and then fix any
resulting issues. There's no way to bring it back. If you show the
issues, we can try to help.

Alex

On Fri, 17 Jan 2025 at 14:05, Ganesh Mahajan via
lists.yoctoproject.org
<ganesh.manoj.mahajan=signify.com@lists.yoctoproject.org> wrote:
>
> As we have phased out meta-gplv2 for Scarthgap, but my system needs gplv2 and also i need to upgrade to scarthgap. Is there a way to have both accomplished.
> I am getting below error. When i run bitbake.
>
> build@ubuntu-bionic:~/project/build$ bitbake
> ERROR: Layer gplv2 is not compatible with the core layer which only supports these series: scarthgap (layer is compatible with dunfell)
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64575): https://lists.yoctoproject.org/g/yocto/message/64575
> Mute This Topic: https://lists.yoctoproject.org/mt/110665136/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

