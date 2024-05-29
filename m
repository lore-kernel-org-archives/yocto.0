Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA85EC25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 22:23:35 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web11.2352.1717021414687727564
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 15:23:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dIAQdG12;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2bfdae7997aso176434a91.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 15:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717021414; x=1717626214; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5WsELCJywuXk3yNgThz8a9iVz0maYUHZLgmhTJI4I0s=;
        b=dIAQdG128uh8eUOwHDjWvoQHWHnQDY8y/duPe0gFHBqDorOeo2iK/j68hITOZm6VF2
         6QzA64i5CXytfpRSA8S0ydN9jjLbFvBI+s6FrudUnwk2P4iaArA1aWsMkjUBn/A0lcbl
         ++WXJlZwM4MU2mTDL5IOww9jxY9lB9c3aR49a/89p2kJlIRPKv6XZKwVuIVmRj1pii+O
         DTzriWn7VZ7nhBnzWDIu8V/OARR0LFMcZKWh/OfbQxOfh2wPc+mNb3cWDVKg18WfT0Ev
         hikhxMehrOZeE+zJ4WHTM/6nNZXBtiJ53496/LO95C+2sNIm97IApHz73KJGBUkjuMOn
         JdFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717021414; x=1717626214;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5WsELCJywuXk3yNgThz8a9iVz0maYUHZLgmhTJI4I0s=;
        b=FYBKut4q2ri23gKam3Lor19TxSaqqatLNaGpmIb2qo6vnWPmUZZzEdnDwZS33KRzOz
         VLVfepWnfkQ5j3Q5kHeEu8lCHigPrSvwg34q5xNt93sjNabF+jp440rB0/0GG8DzVvyW
         Wkgvkjgx65g8In08sqELnebveVRoASnLvS4Zm633rXuFkfvQ8Z+/kaxUzdwhoPDY1R49
         hKHn0kpYSldNyuDTuEvPJy+a2Djq+vXiOi5qGIW7b3AoSTZzmvZB/ZKt1ZziPNyCdeCT
         vI0nZ0KxsYVV2lazTdGo7fdjwfiZ8EJQNlmrCqoX10RHKTciFKy9TIcejVuVoARZez//
         CSjw==
X-Gm-Message-State: AOJu0YyXyWchJL6u94mcPUYmK3fAPAkNRAl1rlnX90YWfyXT/HsmvbAy
	u6xKRFOqXO6QaVRzk4S+4QNQuV3Ad1tWs6voJs5fAVIPwC1A+8Pr/yvE6Y5GsN+OWnfDMPELISk
	As/bkhWZgxYI3JMobzbTRTKhF2FggfG5N
X-Google-Smtp-Source: AGHT+IGdH5AeZ1kQBqKfhhJuvid4oGItA2EDCFs0EgFn6GxF6lSR7E6z6B8r2psP0qVdoFyGvN84vbL+6re5vqJ1SmE=
X-Received: by 2002:a17:90b:2707:b0:2c0:336f:4bfd with SMTP id
 98e67ed59e1d1-2c1abc4b01cmr391098a91.44.1717021413638; Wed, 29 May 2024
 15:23:33 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Wed, 29 May 2024 15:23:22 -0700
Message-ID: <CAEFUPH2w2F_wRffJTmSyV4T8KMoPs790RESbpJLTU2yxhfEZqQ@mail.gmail.com>
Subject: query on building rabbitmq-c
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006e87fc06199f3353"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 22:23:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63232

--0000000000006e87fc06199f3353
Content-Type: text/plain; charset="UTF-8"

Hello,

I am building the recipe below.

https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=kirkstone

I am unable to see the binaries on the target. Do I have to enable
anything? However my build work directory has the generated binaries.


/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/image/usr/bin$
ls
amqp-consume  amqp-declare-queue  amqp-delete-queue  amqp-get  amqp-publish


Regards
Simon

--0000000000006e87fc06199f3353
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am building the recipe below.<=
/div><div><br></div><div><a href=3D"https://git.openembedded.org/meta-opene=
mbedded/tree/meta-oe/recipes-connectivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=
=3Dkirkstone">https://git.openembedded.org/meta-openembedded/tree/meta-oe/r=
ecipes-connectivity/rabbitmq-c/rabbitmq-c_0.11.0.bb?h=3Dkirkstone</a><br></=
div><div><br></div><div>I am unable to see the binaries on the target. Do I=
 have to enable anything? However my build work directory=C2=A0has the gene=
rated=C2=A0binaries.=C2=A0</div><div><br></div><div><br></div><div>/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/rabbitmq-c/0.11.0-r0/ima=
ge/usr/bin$ ls<br>amqp-consume =C2=A0amqp-declare-queue =C2=A0amqp-delete-q=
ueue =C2=A0amqp-get =C2=A0amqp-publish<br></div><div><br></div><div><br></d=
iv><div>Regards</div><div>Simon</div><div><br></div><div><br></div><div><br=
></div><div><br></div></div>

--0000000000006e87fc06199f3353--

