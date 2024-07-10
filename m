Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BE41C3DA41
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 12:46:31 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.13537.1720615588787524738
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 05:46:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bb717A1c;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so77886791fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 05:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720615587; x=1721220387; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CmX2xwDH/QpTb/XPyVcKGzsnf6SPGBowCWl09G2gHcw=;
        b=bb717A1cZKHSAJ1G+sw9YB5kGQKwsJYscJMRuJ1CTtIuYiiABHAsLEu+9TK9mnmXWQ
         96DKox+kQp8JMEyBM9J120tMOueuMEoXyjiuJ7OQHMRkjhCPGjt3e3qPegNhd9Ub0jPt
         Fv5VmH7SX03Bklf0/DPBoMB4o0VnsAGqHlwExONsntH9rpcvbj7jx+c/DkLqcJhf5+F1
         CN/hbiD4z5W6e1j+0Isf0jXkdk0PozcctCzO3kTrIbfutq1k52ncW4qgl5kbMW1V5ONf
         dsd90dyPP1DFRqXBTB1sBnznDMV16Gqw7KrHi5Zoir09cH8rntk2yrBfGEvlH63aKRkd
         FxXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720615587; x=1721220387;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CmX2xwDH/QpTb/XPyVcKGzsnf6SPGBowCWl09G2gHcw=;
        b=WvFezYfjcGOzrk6hTljxmLHZlXu4wF8NqygxJlrAwk8+STp3bY7jjNIBGwN8PH1nkR
         GAIuNvk5H2uZ1mO5GNuYR9Vp6R9+Ojst9Q7bYrWYVWRXK5ZZ8b8CyVpvCgEC8qWcGojE
         1iIzoolEmxOrjNcawMygGImIRZWqy+sKmfGsIZypa7SUBKHuMQq+EBckUeSGeN0wbcDd
         I+/b8AdJ6CwYUkypL2lF+Ewd6DwhYAYyQ+8HWjI0K4GRtk2vvKEkqYy7R/mWjZEm3nE7
         z1fV+qw/AzcMXHvyXU1oO9As1Ivq1eD2hZ0M2ca0VCKJok72PQk9xsG/V00PUhYkROsB
         o7kg==
X-Gm-Message-State: AOJu0YwSqNSM9BLnw3nDdIRCxi/NDRnS1CgFciPDynAB8MMIJYLyuWGO
	uYlQkgWt/hLDPm9s3H26SagYubl1h4lO6mCsfGOmX7cEhfBMk4MoWYa5+7mil7btMv8UxKzOu5o
	ilGqts5NUEhO6DzNOrATOpKtipAM=
X-Google-Smtp-Source: AGHT+IGiml6pshstGeVWFHno17UtL4fVUyl1OgJg3AOCstsO31H+DJ/nTztzlvJQRnAu/vrdDLJ8YUpRRGYfRb0piGo=
X-Received: by 2002:a05:651c:b0d:b0:2ec:1f9f:a876 with SMTP id
 38308e7fff4ca-2eeb30b8466mr46860631fa.6.1720615586557; Wed, 10 Jul 2024
 05:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8xOKK=s+QnDR-XxZsmJrhcHH2JD4x3x4sgSoqG16vvZQ@mail.gmail.com>
 <12578.1720614334413245014@lists.yoctoproject.org>
In-Reply-To: <12578.1720614334413245014@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 10 Jul 2024 14:46:13 +0200
Message-ID: <CANNYZj8V2qASyEcY_59xOcm0UJO1J6Jxvo1J=4Car=OO8ymp1A@mail.gmail.com>
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with
 different device trees
To: philip.dawson@datapath.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 12:46:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63455

If MACHINE is the same, how are the four different device trees
inserted into the builds? Is it some petalinux-specifc mechanism?

Alex

On Wed, 10 Jul 2024 at 14:25, philip.dawson via Lists.Yoctoproject.Org
<philip.dawson=datapath.co.uk@lists.yoctoproject.org> wrote:
>
> Hi Alex,
>
> The four boards are all using the same MACHINE which is the petalinux default for our devices (zynqmp_generic)
>
> Our software depends on headers from our custom kernel modules/drivers (e.g. for ioctls). If there's a better way of doing this please let me know.
>
> Thanks,
> Phil

