Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F267CD8CB3
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 19:08:53 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web11.2845.1696964927735394034
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 12:08:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LBeLDW0D;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6c7b3adbeb6so4418650a34.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 12:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696964927; x=1697569727; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AX4uIP/LtoY5m7xnMwRp00JNoQIHlMJnyY3OZhSPmxM=;
        b=LBeLDW0DlieviuXH/HTXm+CSXoMMLHDHqiyuRTRWJG9ezZ6JCc7PQybdDI7xQftdIc
         j8RWhBJjjIOcFn2YwOBStiJfeubf6htnyVBNSf5UZepVPJmTJm1IW9up1VkNIF/2TeWs
         drAbs6dtfLI7at1Pv+6XKkVybQmyA5/OmTyoGldBM/rdrXsPQpXg+O1NOBbPxgl61UvK
         zi0ZXbi4x8ozwnFvnqNX0DlAvxdof6W4lWr2iwgsm491eSx8N1iLK22j9DNd3uE2Stge
         KImy4n9Z7B7CXtKU/+7FWcm2vD2z/TbRUNCrdO1EcGSQjjV0h75a111nkZ812DZGvyib
         gZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696964927; x=1697569727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AX4uIP/LtoY5m7xnMwRp00JNoQIHlMJnyY3OZhSPmxM=;
        b=OWY/3PqSDXo55LHoCM/7eJPsKN8lAuhjCIkbMk72gspfE+adtsNsX0a65MQW/1baee
         KmIum6ZLumalc3VS3PlzFsLWlzmS4i4ULLZtm+EyNFs7c5drGmUTucxizzaarIoD4s1v
         WOqWYtDn86upgoI2MtC8W5uJV/yEFUx5WRJupDLye9hH20XK2dpW5hCts+cTnjAdbd5o
         9VBR8Tb1F5o3xeE2Kg7Bq1ZfkoJkxrfPc1sq8+kObXVW8F31hl+wjcOZMkbIm4zx76YU
         r3kK7gRFiNE++uiIcBvm31lPynBZY6fNP6aaGtWGRQtt0AScCwIeMRjQBtho6Fe1uiCW
         ee0Q==
X-Gm-Message-State: AOJu0Yz1bLkaX0BxkPCGa61ykyKSu9QBxMbl+2f6bz6sT0d29dGsNgLz
	nE/4Far5zZYpOd6wss2LDXlp1PN6luOgspAbozw=
X-Google-Smtp-Source: AGHT+IGRg+w7QeiX4WvoODmrEBXtE2wedSDnyvq8SQp4YeEZkXtJHPMR/zhs6kTZS7URd6Fny+eAmCxnOBEpr4gOB5w=
X-Received: by 2002:a05:6870:96a2:b0:1d6:d8d3:f6dc with SMTP id
 o34-20020a05687096a200b001d6d8d3f6dcmr24569181oaq.36.1696964925541; Tue, 10
 Oct 2023 12:08:45 -0700 (PDT)
MIME-Version: 1.0
References: <lfKb.1696959113393378486.xJHM@lists.yoctoproject.org>
In-Reply-To: <lfKb.1696959113393378486.xJHM@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Oct 2023 12:08:19 -0700
Message-ID: <CAMKF1somjatyfkkAUs2A2dBmxyN+=31grQ+ni6fLLa7uP00hTg@mail.gmail.com>
Subject: Re: [yocto] adjtimex #kirkstone
To: gary@missionsecure.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 19:08:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61310

On Tue, Oct 10, 2023 at 10:31=E2=80=AFAM Gary Huband via
lists.yoctoproject.org <gary=3Dmissionsecure.com@lists.yoctoproject.org>
wrote:
>
> I'm on Kirkstone using core-image-full-cmdline image.  Is there a way to =
add adjtimex besides busybox?  I did not see an adjtimex recipe in kirkston=
e.

there is not one. Perhaps straightforward to create from
https://www.ibiblio.org/pub/Linux/system/admin/time/adjtimex-1.28.tar.gz

>
> Thanks
>
> Gary
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61309): https://lists.yoctoproject.org/g/yocto/messag=
e/61309
> Mute This Topic: https://lists.yoctoproject.org/mt/101880152/1997914
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

