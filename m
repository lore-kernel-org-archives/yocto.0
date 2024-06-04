Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57EDC25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 11:37:50 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.19046.1717501065492163529
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 04:37:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WeiNYqUv;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-df771b45e13so956857276.2
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 04:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717501064; x=1718105864; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/lEUqZNaEKRIrY8T6h/pNGfy1lC0mpbSnjaz9iEgUPU=;
        b=WeiNYqUv31qVpHo2kTv6c7XFNk+VO8q4vOuF0nf1j7XgCuGo2BRJbKi3GSaVDd0x4l
         wmOKScs2Uq+SwtljhOir28edihveHnoDxORyVS283IOegpFsL0W5WI8DpyEds2aLpQxR
         gvgWyAMaN+MRPI4HgQMDqpBmR0DDrRrkrSWu5avRy+2TpVSGpXRAhRGvkYyrjmkmgEu4
         2ubolONtMuAE6STFUGPOLlFG6XYni7WL0ACxh5KfPMtQr23YsvJSID3cldzCVAE3B/Fw
         0uBMH5XdmCtbH33BqV8drLlcYlxJYhWf/kYO1i/0YlV+M8lg1zK2HdWwemD75OGxj3me
         Bw/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717501064; x=1718105864;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/lEUqZNaEKRIrY8T6h/pNGfy1lC0mpbSnjaz9iEgUPU=;
        b=AIv5FL2a1f691hrYrPrMKI8fziOws34khQJCrjcim28E+9oMFj3KmsVjj15v50RDvG
         ffBCo6J+OqBS0A6Ejqgw3pW44yO57QBz5KO1frwcUQK0WIv2H0x6hltK82WASN7984w9
         kRfH2XrXPNjePnGT0iIHc2wC/MBK6V2FdJlgq3DEZYTctJ0Quvd+2q6dsnEzvnA/kUay
         cN9MdyUtRmAcu153KOnz8u+9R/2PFk4DhuWLq5yGlzta4/KHX0s8I+FybJGemdrMTrUP
         uubJDAAytiynpkhmTSiY2jLjFc1l6g6tv3Y5G3VHUOJLY4j+m/wHCvb4Ft9wXYO+IlOS
         lkpg==
X-Gm-Message-State: AOJu0YwJL+lDwZIxR2qQPKKZ0B3y/WRAn5TLueyrAIpaaQRhGJoqZ9JI
	cXfqyZDpSLRY3AfPfqiuOZ1JnS+VOzyuagPbH3FO8fI+9PyhnOpjXi0SEMLoWLZXBpI5fI4Jw5E
	9ef7Pb0xf3/xKEy6iahifYjsjv7BXlvdy
X-Google-Smtp-Source: AGHT+IFIQ4Me0EBpVFpS3M5RiU4pbtcbN6JrKTnei+gyl7h/bYWS3gx7g1laPqmGmjZghz88GA2wAZ3X7dP8EeggWNk=
X-Received: by 2002:a25:6854:0:b0:dcc:9aed:6282 with SMTP id
 3f1490d57ef6-dfa73de7889mr10528807276.65.1717501064359; Tue, 04 Jun 2024
 04:37:44 -0700 (PDT)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Tue, 4 Jun 2024 07:37:33 -0400
Message-ID: <CADjezmaA3nXpPS56GugP2fEVaZBQEvWTc4PjFnv4qh8cVDdNhw@mail.gmail.com>
Subject: multiconfig trigger rebuild of mc:initramfs image from mc:main recipe
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d7ba38061a0ee0db"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 11:37:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63272

--000000000000d7ba38061a0ee0db
Content-Type: text/plain; charset="UTF-8"

Hi all,

In a multiconfig environment is it possible to trigger a rebuild of a
recipe in a different multiconfig?

For example, I have a recipe in my main image mulitconfig that is updated
using PREFERRED_VERSION.  I want to update a configuration file with
version info that resides in the initramfs multiconfig rootfs.

I don't see a way to do this with ROOTFS_POSTPROCESS as it would be
relative to the calling multiconfig (i.e bitbake mc:main:recipe), correct?

Thanks, Matt

--000000000000d7ba38061a0ee0db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>In a multiconfig env=
ironment is it possible to trigger a rebuild of a recipe in a different mul=
ticonfig?</div><div><br></div><div>For example, I have a recipe in my main =
image mulitconfig that is updated using PREFERRED_VERSION.=C2=A0 I want to =
update a configuration file with version info that resides in the initramfs=
 multiconfig rootfs.</div><div><br></div><div>I don&#39;t see a way to do t=
his with ROOTFS_POSTPROCESS as it would be relative to the calling multicon=
fig (i.e bitbake mc:main:recipe), correct?</div><div><br></div><div>Thanks,=
 Matt<br></div></div>

--000000000000d7ba38061a0ee0db--

