Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D580C54E60
	for <webhook@archiver.kernel.org>; Sat,  9 Mar 2024 19:06:37 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web10.18881.1710011190716424150
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Mar 2024 11:06:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e9TS/dQQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-221b4c751cbso714143fac.1
        for <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 11:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710011190; x=1710615990; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yRUoKOGYzr8ouUP2zRh1y3VxpGusFPCDXDr/RYp4SG8=;
        b=e9TS/dQQ/T8+cEEHTvMx+52JQMh1zTI8xBueLUQ3L0LW62T1jeXzo0sl+vhCnOOIkk
         jzZI79VDH2yMjbcDnK97NE1DsEUYN25SZumDtU+gz4ehTJvo3qew99iuuPKn6MrnJuk1
         5hxqnW7DKK9JeDpr1zb0jCWAPakjRL9bnjYpaKVSz0a0wxivFO/XHI6mZQzf3yhJlp/O
         zdbCrrTNRwS5dQCAcBAZ8N8D5wlswywKU/SwWO5v/OwqCFL5Mo0L7Yl+WSlfbK8Ab+14
         dXfS1OerG1fBRG/mktQgjZPPhNuGVCGD5Zwa/8zQRsSawIjP1Rt9fKu67HcOpQeW6E0s
         Hwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710011190; x=1710615990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yRUoKOGYzr8ouUP2zRh1y3VxpGusFPCDXDr/RYp4SG8=;
        b=hOkNj9MBwNAycO1BrNpyHLF8+aq0oREPQ6cogbXRh9MMl5J/+6Dfy54BPuDApTd/CI
         NYuvFbk8SymXcuy3JPGPz4xQCJiL7DGSauD+qpFCbELYPdYMQygcV1tglPrEbuRWZmxz
         UDetnnlMnJ6IgcbTh95LEdLzv5SZ3WOEQsa8Bu5gzB25hDFgYdVktuDqKm62WkQwMshs
         6t2niH4DlLtDOUgVzGpIK8t2BpWPkFoaxNTy7zkRJO76L9GLzSmDHaQfEGsB3GD90qKD
         g864hkwJYeVuMt/EdWX/TCWIODROIvPYtKPA/Wq9GkaU1QIZkB+moQm4F/DMMDYwsGgW
         n7Aw==
X-Gm-Message-State: AOJu0YwVH7OxBa+p4kDqoOK4QY7knm9K9iYYMAr4n1fr5ceOsuyewx5D
	3AH7+ZSE2NJyVpKXCKe+FZvV473qVKM/yMmQBi6iH1eMoYItDpDSMMp+AtnUzgNPxJRO12v5UQ+
	J/hr6tFDKdG06yaZG9mWxw9q1peAtC28vql8=
X-Google-Smtp-Source: AGHT+IGvTA7XS+AMaU3VP3I5UbVDg05L5woSyirLdM+LTYR4qBCfCrrQJmlgFGYdWv8T4naVHxd/+rQ7fvaxEkabapo=
X-Received: by 2002:a05:6870:d0c8:b0:221:c9ef:3e with SMTP id
 k8-20020a056870d0c800b00221c9ef003emr1301339oaa.13.1710011189796; Sat, 09 Mar
 2024 11:06:29 -0800 (PST)
MIME-Version: 1.0
References: <27822.1709973725254624537@lists.yoctoproject.org> <27822.1710010738640962284@lists.yoctoproject.org>
In-Reply-To: <27822.1710010738640962284@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 9 Mar 2024 11:06:03 -0800
Message-ID: <CAMKF1soM8+6RnUSKZu_Hm-xX6__2VM=iw2j25QkKoG7yhyfiqA@mail.gmail.com>
Subject: Re: [yocto] Cannot ssh into qemu guest
To: yocto@lists.yoctoproject.org, xylopyrographer@gmail.com
Cc: Marco Cavallini <koansoftware@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 19:06:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62716

See if you have debug-tweaks in IMAGE_FEATURES you can easily check it with
bitbake-getvar IMAGE_FEATURES -r core-image-full-cmdline

On Sat, Mar 9, 2024 at 10:59=E2=80=AFAM Xylopyrographer
<xylopyrographer@gmail.com> wrote:
>
> Thanks for the reply.
>
> Still a bit green with all this but from the QEMU VM, sshd is running and=
 port 22 is open.
>
> Checked by running:
> ps aux | grep sshd
> and
> netstat -plant | grep :22
>
> as well, I can telnet in to the VM itself by running (from within the VM)=
:
>
> telnet localhost 22
>
> which returns:
> Connected to localhost
> SSH-2.0-OpenSSH_9.5
>
> So I think all is as it should be on the QEMU side of things?
>
> Just need the magic keystrokes to get in from outside the VM.
>
> Any further hints?
>
> Many thanks.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62714): https://lists.yoctoproject.org/g/yocto/messag=
e/62714
> Mute This Topic: https://lists.yoctoproject.org/mt/104819558/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

