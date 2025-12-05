Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610C0D339A0
	for <webhook@archiver.kernel.org>; Fri,  5 Dec 2025 17:24:18 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.310.1764955456575729221
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Dec 2025 09:24:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ROVXgiaq;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8843ebf2facso32992166d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 09:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764955455; x=1765560255; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wR7eXqxKpHbNkhGlb119DlZdROYglScMbXfM8wPxCuM=;
        b=ROVXgiaq1XTKS+lCjDtswJDNR9aDaHBfBmJ1yI7iRc61HIMzrPjcZVqekRio19f+V3
         2HBYbe7CFqjdW48hCMGe70Fzz3TcCRJfNHKGo74swWK08J1l2L/OfWIsLyl82c2FfnJI
         5pIcG5e1kXj2uF0Fpqk8iP5yBTPP0p4Q+rThuEavwKp4CDKtfykRc6tqEnk73H5DXoVu
         W9bGCFHz1Uc4Zuj2F4tp8pQL4vdaSsUd6epnYwtfJeI3lg3kPLGL47xOfLtC+R12FnRV
         kZt5nB2q5REVKn0yWHBh7hahXwYP5YfFW08VIKmt22MTybhuhLEesw+9EE7rkp/MBGj8
         nolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764955455; x=1765560255;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wR7eXqxKpHbNkhGlb119DlZdROYglScMbXfM8wPxCuM=;
        b=AJQtRpLwQxTrIGkSo/W6g1STsAMZjziajLJYvaoN8cFCId8LnuV4os9o1c2A/86uw9
         k0imygbJzJHAF5ICs3O1C0OmXocjmkTSm1nUljqvzOjZKyhfzUPY0onO5MfNHmHC/Zca
         TfLO+3XQgA+NS+S0V3Rx4uephhOluvEZmj0F91eObhAUXIdRmu+VHUyW17ppdFxCqE3A
         Uf4ybx3Z90zb9LZC5fIoZOSIeVSfosQEAY+gdFLDWyzs0JLm/s/jp0H3RjyxWT2F6Qus
         ZRo2VzTnDlfRoEcjeLCqbWV51uLfoOjMKNZfcAHTJfsOYqCNU/rp0CuHrd/x0EdRxoM/
         4yAg==
X-Gm-Message-State: AOJu0YwuZbVAciHceukLYUhGLWpMgysDkXvE5n7gmQWwAGB3Wi4fjEiV
	mqHG0sxNsxMK7eucLrPgMVhhUHvRsQ6wSaAPAASAgwNBXcWywNSe/7KFD+nTXeBX4JTe+38S1Bk
	vlvCV6HF69c9iGgaZYbWfEOkYTQDN/9iX2w==
X-Gm-Gg: ASbGncuVJDtNzg0Vcfk4putQ3LqS/ujFEbKnsfwTl/rYacL9wLlmJfOPfbnhmV22mn3
	/wbts/qCGmZryvof9tLB84CcyJMd+dRKeKJe67F0QjM4cwJsm3Byx5/1ak3T1DQ2cThnnUr/hEp
	O8Yne5k+L0F9Lcw/hREMXZvP/e3vgAXWuAxnlI2iLqGW4KCHvfGw4Pph+zDHaTR00frRQRJmw+Z
	0UVY1DLLSHUBcvhi0p9nmZplf8SJfn+F5NW/DFVKiOBYILTsx0x9JUIwMnIUgzd7JAP+4azIsxb
	KFrmuH7VJhxHS5g8aUb95tIkMl/znQ==
X-Google-Smtp-Source: AGHT+IF0FsftwKiUFBj/UF0uW+yfaJmCbWDTM9XwKhT8glCYcL1XzLixidwkoXOj1+d9hnICZQC0xP/lGoiu4FTe8kY=
X-Received: by 2002:a05:6214:29e3:b0:882:4e18:a7bd with SMTP id
 6a1803df08f44-888195ad24fmr184922636d6.62.1764955455484; Fri, 05 Dec 2025
 09:24:15 -0800 (PST)
MIME-Version: 1.0
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
 <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com> <96936.1764884505239996619@lists.yoctoproject.org>
 <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
In-Reply-To: <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 5 Dec 2025 18:24:04 +0100
X-Gm-Features: AQt7F2pjMD-TBNTaPaoNZasYnSBm_55n_iAGDdthP5niXfeulJaTpWq91n56Yyg
Message-ID: <CANNYZj8A46=oc3sD=F2H=A33rjmue=tVhTtVBJTabfO3EJLuDQ@mail.gmail.com>
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: christian.leeb@hitachienergy.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 17:24:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66094

On Fri, 5 Dec 2025 at 16:46, Gyorgy Sarvari via lists.yoctoproject.org
<skandigraun=gmail.com@lists.yoctoproject.org> wrote:
> I have been thinking about this, and also tried to reproduce it,
> unsuccessfully...
>
> If fetch is deemed successful, it is stored in the shared state cache,
> and then it is not repeated until the relevant signature changes - I
> think this is the metadata reference you found.
> However as long as the download folder's content is only modified by one
> project only, it supposed keep track of it fine.
>
> One question about the DL_DIR: is it possible that it is shared between
> multiple projects, while keeping separate shared state cache? Or that
> the DL_DIR's content modified manually?
> The shared state cache supposed to keep track of what is downloaded by
> bitbake and what is not, but if the DL_DIR's content is changed without
> bitbake (or by a separate bitbake), that can break the shared state, and
> cause such issues.

This is not correct. Shared state does not track what is downloaded.
It is also fine to share DL_DIR between multiple builds and projects.

Alex

