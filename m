Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A9DED2A544
	for <webhook@archiver.kernel.org>; Wed, 16 Oct 2024 19:34:49 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.31991.1729107280521088323
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Oct 2024 12:34:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UkZXlyVG;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb587d0436so2273351fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 12:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729107279; x=1729712079; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jTLfTSPZJrVi+FGe7QCyMwnRPqHKEAjoYULL293GcwQ=;
        b=UkZXlyVG1Q/L5w27Kff6SaF55cQyIlDAZ7wXy6je58ETfyBQzBboeBpD5zAKeX9tOS
         vuec3xm4ug+f4SYZSyEl3hlXIozCdpOY/cpJSFggitTphy4etpag5PmkonImA/ywREBq
         amU3dnNdR/MvycXcyung0AHr1GJsbOVe/25Es1uBDPuQTaMiNXVFIESg0eB/slu6cvv1
         9fPZM032V2K+zuOx13KzXLSts/NWp+gD2mvxzMkws+TdDsDXFV7or3mMztO8g7ljFwST
         sxR8sGuHChNaHWIzx4QHRUyaN8pFAUVo3s+vO9rv/+N127QafpQUIzSmVmqfk7FcH2Uf
         M50w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729107279; x=1729712079;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jTLfTSPZJrVi+FGe7QCyMwnRPqHKEAjoYULL293GcwQ=;
        b=WIgUeHiwsWqo0ZDHNtylLQVvqj20DRjKYDpP4SvRZv4clf0VkucXEdpaqJWRuxQb4v
         zBbe2spv1zGYVi2SrIhe364rPC4vb2sf4HNRku6DOQ4+EVenSNwLr6kXByo6Wp7QvWiz
         qZJs7VeTmOKeuDYyLeRaG06mgBdzLP2d131Pt3FH86evlvv0uo2ZHFNIa4uRyzLXI3Ke
         Gsqv6Uz55Om47YvqX7oLINWTHhpn5UwMGmfPaiYJVJesLS2g5q05TsKivqGyxszf0ydO
         I47ZjjhFV/YaJZ/PLd8pufSSICam+lIAAK8yhS5AR4vUrjPufk6F7A7vFfCXzBdjt1jX
         +NAg==
X-Gm-Message-State: AOJu0YwzfbLSmD3ol3NkE/6Y2jp/jEjmbGswcxQZ18Y/zuXQtPV3CXE2
	xYZ7d1jiBIs4TYHqKSpCcAkCrTCpPtWY7EJWn/5BtBQ5Pm98NAx0E57M2Xv8oyqc5uaaFV3yGtX
	ufU34JxtopH+PJ5tpKTbjXwde9ofuwg==
X-Google-Smtp-Source: AGHT+IHdsywVS0AVnzXu6pPDBzRJ7aq7ru7AYjEayoMFVoxtVLpTYEUq+4K14Wi8yUjk4WQPI9RXK7DhUihoziFU8Z4=
X-Received: by 2002:a2e:be1d:0:b0:2fb:5da7:47a7 with SMTP id
 38308e7fff4ca-2fb5da747fcmr41867631fa.25.1729107278237; Wed, 16 Oct 2024
 12:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAESSzZxmWtRkK3ZSZYqLeTp0kTESc4NP5Rc3Oi8oEzW2qWtbbQ@mail.gmail.com>
In-Reply-To: <CAESSzZxmWtRkK3ZSZYqLeTp0kTESc4NP5Rc3Oi8oEzW2qWtbbQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Oct 2024 21:34:27 +0200
Message-ID: <CANNYZj_2bZ4ynXFF=X7Y=XYmD1jiY821zToLEaC_zsgYNipcGg@mail.gmail.com>
Subject: Re: [yocto] Fetch recipes PV from a file?
To: yocto@lists.yoctoproject.org, aymericdumaz@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 19:34:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64033

On Wed, 16 Oct 2024 at 21:09, Aymeric Dumaz via lists.yoctoproject.org
<aymericdumaz=gmail.com@lists.yoctoproject.org> wrote:
> What would be the correct way to do that?

You need to run this in three separate steps:
1. Update the recipes metadata (e.g. PV, SRCREV or any other thing
that may change). This can be done with an external script or a
separate recipe.
2. Run a build and tests to know if there are any regressions.
3. If the build was ok then you can auto-commit the changes and push
them to git for others.

Alex

