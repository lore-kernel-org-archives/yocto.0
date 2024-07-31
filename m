Return-Path: <jan.vermaete@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C98C3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 18:50:40 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web10.50624.1722451838047566915
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 11:50:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JgWhypfH;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: jan.vermaete@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5d5bd1b79cfso3581339eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 11:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722451837; x=1723056637; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9dI4qRlGFy8M7zHO0M7rCAC5LKK9OPR0gTvCLhJ13dE=;
        b=JgWhypfHe0GAev8CqpWF4JvkfsApO73qfqnhgAEXcIARlAc9gDDMXwHrCW8uJ6cq8T
         6F/0fIsDlsY6Ex6vp9Upg3jqpHKxbatGTQ8cFXOObx/TVFY6RqvlMugxAl0GvoBrZL+w
         4pEz5E9HapgneQbAjRIs8c3fwCqBZBhgy0diIliLMhnmpSDgsfRftgafDuIOZnUENEMK
         yyIPzOTRCj89sISnkAKKRBcwSHC5jKpAWIMdnhxb1Qmj7Cnj7mat+6drN2gU2p0joYxN
         cGGshM5WJaBnv2E+GPQtCMdTc3dOe0soVFyi2YvpG9cXVXTgQOenAd4VKMK8jSZTWq3r
         /ZcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722451837; x=1723056637;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9dI4qRlGFy8M7zHO0M7rCAC5LKK9OPR0gTvCLhJ13dE=;
        b=uYAUCFdNWmpdhjLW4P8qeIopMho4FKnUQLIs/2B5La+cjylf8bBSlyD0mUhu2gsPCn
         Q2971zL6LQcYVWf8uoLgYBflpImnXsO08pkKW7sHv9JCYFOyfHTef+anmTRnZm0aMORp
         h1Kx/woEnq6e2R3y2+HAMFdEDIKSDrTUA+TkqzE5ntl1Au1lpOGv3WBFWLWDZjFXuRgb
         EeXgGotGyjiz1++DJ01r7pQO2KSE8TExcJeT5r9E87PSFjMju4GsPzkrkVnUfMEQdN42
         nKCNEF/YBFjcpWw80xh8jgFFcQ4wJ74jcATPxSyCQEDUjiDFZYmNIiMM32N1Zu+KclhJ
         NteQ==
X-Gm-Message-State: AOJu0YxxJFrWZtkNDUKUgcprqtUnu8eClp2f8HN5MmfBsbRzIIB9ydoi
	WM8HX27LTi0i5XsteN9ZUH1Ul+8xltFXcmJAWUVOTjhKYTsQ2qpMmD3S3oWy3JBWLYN+Bpq2ETv
	sqr3yENJ6y+V+HOss+eNe/EY7aHEFBA==
X-Google-Smtp-Source: AGHT+IGAcafcC5pBI87QFJ7+ngIdGA8jsSe/CgNudbIhYzNHg0213RfmthjOoEQQunI7+Mp4hqmw912f98IG0Sdohck=
X-Received: by 2002:a05:6870:844d:b0:24f:c31a:5c29 with SMTP id
 586e51a60fabf-2687a760012mr21079fac.43.1722451837000; Wed, 31 Jul 2024
 11:50:37 -0700 (PDT)
MIME-Version: 1.0
From: jan vermaete <jan.vermaete@gmail.com>
Date: Wed, 31 Jul 2024 20:50:26 +0200
Message-ID: <CABF_=yi6Bfegi6D5wEB72dtafxdZByww_pruDRFD-3rUH69ZdQ@mail.gmail.com>
Subject: running ptest without internet?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 18:50:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63636

Hi,

I was wondering if there is a convention or agreement on what to do
with tests under ptests that do need internet but are running without?
An example could be a unittest of a package about networking that does
a ping to an URL.

For now, Yocto assumes there is always a network/internet?
Or we could exclude those tests based on BB_NO_NETWORK?
Something else, or not in years a priority right now?

br

--=20
Jan Vermaete
=E2=80=9CSuccess is a self-correcting phenomenom.=E2=80=9D -- Gary Hamel

