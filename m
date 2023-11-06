Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B793C4167D
	for <webhook@archiver.kernel.org>; Mon,  6 Nov 2023 11:48:50 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.51839.1699271320382523880
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 03:48:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EFA0QX53;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-507f1c29f25so5635493e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Nov 2023 03:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699271318; x=1699876118; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a2NIPtqj8GV+fVybbcGyLpSs16MtxfjjRASY5gQoKW4=;
        b=EFA0QX53+LJWuboxZB3S/L8wtMU0sh6eBR2o/rv6AMoj4RjLWHJzQV+R3iwiGrZ64M
         2zbOvpIL+h9zAUUiAErOE8iSG4LTq8yL8dcucEMdmWCNFlPdtPK7bdqVwxi8Y0VdZXU6
         GTzaCYO873TNMhKM6LPe3g7W7MIcXSV6Pabhr24tLv5c+DGaIicWpGRNEKrvclMMox/Y
         b5bxLo43EmIc89FJcwTE5Wxc9X5y0DE0/J2/2w99kwAIeQVCIzWugTM1qgsnVCBwPyfY
         /yTC9Y5QvDKquVY9fPxDnzhaf/qkM1grb7U4tSaefyn+vIwuKZ+6VGp1v3+kVsmzIqxJ
         nxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699271318; x=1699876118;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2NIPtqj8GV+fVybbcGyLpSs16MtxfjjRASY5gQoKW4=;
        b=O+3dGeU/pL7Ppx1BaKFBk1BvsZzBlUgm4f4R5y1M1enT8pvKm387F/NNF6mgiARL9z
         A3KDNBg946FwBIf3xLhnfbzoB0sBCYBA2AmUKjJMhk1ZiIYUUY3E33735sShFHnv/cBO
         vXOCwBqDqd0JeO3bBN3vkYeOKfeF5kPRGGKbWvD/ylMZWW8ygrQw1jOJNeyjzambKAOX
         qbCmiRTj/P+m9sOU3kRD9eSDTWqNJTuTnNnKdNT/QSNwt1dAjHYb+Qu1sv/EhEHqdnvU
         Uv4pUrRh6iBjLyKrgCW4FTrAA++WUf4g7qZ4m7cDt7VUWPQVivK4xfgvMYZMKfE+j12d
         nS4w==
X-Gm-Message-State: AOJu0YwmdGZtjK5ISbpe0qMRnlrsHQFUolMZHpkKHXoMo51xPRXdbGNh
	s+Zy0sHf7S3vkU3w786qejsW/Rr1cgBVm6gIb0w=
X-Google-Smtp-Source: AGHT+IF0zLnaJo6oIcJMMeKHotuwUG6FF+TCHQbCdPFTrO4iKXLRXf5S1U+yoe40raoxbF30IDBhD7s8BZJbCCmjm7Q=
X-Received: by 2002:a19:434d:0:b0:503:655:12e7 with SMTP id
 m13-20020a19434d000000b00503065512e7mr19649366lfj.62.1699271318316; Mon, 06
 Nov 2023 03:48:38 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
 <649b2f000761831cabd1f5737fb5b30a2ffc3654.camel@gmail.com>
 <CANNYZj_Cq+cncw5SCGii=Mhj0KGgo=qr=hCuo+wpdvtR9C=Qyg@mail.gmail.com>
 <58e2c7a830bceac9b3a8c6cee63f03ae4a118da0.camel@gmail.com>
 <0b1cfe6b26e5c61b1e700e3801900038e2d48f25.camel@linuxfoundation.org> <dd3d342e400b900c7f7ddbbe93c725472f6d6f1f.camel@gmail.com>
In-Reply-To: <dd3d342e400b900c7f7ddbbe93c725472f6d6f1f.camel@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 6 Nov 2023 12:48:25 +0100
Message-ID: <CANNYZj_TUyUkc_Mrmh6WUwXOXkctONshWFWZ3bd-FKm-Fdki+Q@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: adrian.freihofer@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Nov 2023 11:48:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61622

On Sun, 5 Nov 2023 at 20:43, <adrian.freihofer@gmail.com> wrote:
> Another topic where additional meta data about the sstate-cache seams
> to be beneficial is sstate-mirror retention. Knowing which artifact was
> compiled for which tag or commit of the bitbake layer could help to
> wipe out some artifacts which are not needed anymore.

There should be progress on this particular point soon when I get
oe-replicate-build prototype to function. It also records the list of
needed sstate objects into the replica bundle (in the form of
locked-sigs.inc, which is in itself not included into the build conf),
and if you place that bundle next to sstate, and make a superset of
all the objects in all bundles registered that way, you have a list of
things that can be pruned from the cache without loss of build times.
There could also be more interesting use cases, like querying the
sstate server for available builds with guaranteed sstate coverage
etc.

Alex

