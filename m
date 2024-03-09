Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBDAEC54791
	for <webhook@archiver.kernel.org>; Sat,  9 Mar 2024 19:05:37 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.18857.1710011132192265240
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Mar 2024 11:05:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IUVwjJZr;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d27fef509eso48515181fa.3
        for <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 11:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710011130; x=1710615930; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6OE/bGuHhMJP1phfv89wvfuqR3ttArJ7TSvSQsxXMe8=;
        b=IUVwjJZr3q6SqNw6l5t5RmvouFumxl+TiXt6NkDnkNnLA7U8hUk1kEzAyEeYeOezEu
         x15iWAuEJ38YsMNDqUdN1cQ0hRu9KlrgtXKcIypJ3yj9ofXuf2GbpOJSES/LCe17V2Vf
         GCsxfhLiDtz1iQoPMD5JsCO+UggLdG37pQCtDy1P1kcw8hw0mxODqXRRevFPasM/kStP
         sJLI+z72Fal5qjuAya1ca9Be27T+0/F/DDdG2kubMo4ReYxEfZaxWo5F+XB0GpkPCXV8
         flbg65iQz/2/BKiCQ6okowaapK5nAQPZMOehDOmN9JTFr3dxJ4AYFsMXCOCYkKuZpdZV
         2pcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710011130; x=1710615930;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6OE/bGuHhMJP1phfv89wvfuqR3ttArJ7TSvSQsxXMe8=;
        b=ZODNwtLFY+P/4P/d28wHkHMVpr0VH+b0c0J4pY3Xce9kKLhUZTBTlwg1Ls5ec3/fJp
         rDrOs+6SMfWEpsWA2uMbklh/u2VwjmT9dFgRoKDWsc/w9W5Fpq0ZqrdKecFftF20f3YH
         3MD07lEjB4zMkR970aOzRgT4X21Gg4O8OZZs2+vfocHm3f4raIo03P0bKjNxYEy/qfLA
         zZXJhdqB0hewzl9rP69nYelvLhe0kxwn8hgOlRkuvXu46mot74BWVZPcQ4+tQUa5fiZG
         k/zOcMkJmtrdyonq24In1LVK+JBhP7GlEM5/8Fb2BWI5wlsNNV0CkOXLmFpHZnGOSRp0
         511A==
X-Gm-Message-State: AOJu0YycMloSoRLwomO1A9XmNKOw8VKQvSHxAFXYPqownY7rB+r0W4W3
	BCwHafGMwCva4aSet0vsaZnpo1iQXtGTH7ZzyorLNHyLBF/Xn4A38ngpAJvV2gtaWVoejjt8iQd
	X5YpbnRu7r+9Az16rRLcZUfHsXay0vtjj
X-Google-Smtp-Source: AGHT+IFd2ki7o/ghIkfGM4zJ2a5U/MlaGEJFPuMhm8dgcoWrGoESjgIzJtYoViM3Wb6mCC2bemcxnY/HshqVb6Sez7E=
X-Received: by 2002:a05:651c:1078:b0:2d4:3222:69e1 with SMTP id
 y24-20020a05651c107800b002d4322269e1mr251638ljm.6.1710011130062; Sat, 09 Mar
 2024 11:05:30 -0800 (PST)
MIME-Version: 1.0
References: <27822.1709973725254624537@lists.yoctoproject.org> <27822.1710010738640962284@lists.yoctoproject.org>
In-Reply-To: <27822.1710010738640962284@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 9 Mar 2024 20:05:18 +0100
Message-ID: <CANNYZj-tzRHUTY8yWe3Lqt5mHapHiCGBPgtrDr9-=7z_nFYCPw@mail.gmail.com>
Subject: Re: [yocto] Cannot ssh into qemu guest
To: yocto@lists.yoctoproject.org, xylopyrographer@gmail.com
Cc: Marco Cavallini <koansoftware@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 19:05:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62715

Can you start runqemu without the nographic option, and copy-paste
what it prints? There are clues as to how it sets up networking in
there.

Alex

On Sat, 9 Mar 2024 at 19:59, Xylopyrographer <xylopyrographer@gmail.com> wrote:
>
> Thanks for the reply.
>
> Still a bit green with all this but from the QEMU VM, sshd is running and port 22 is open.
>
> Checked by running:
> ps aux | grep sshd
> and
> netstat -plant | grep :22
>
> as well, I can telnet in to the VM itself by running (from within the VM):
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
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62714): https://lists.yoctoproject.org/g/yocto/message/62714
> Mute This Topic: https://lists.yoctoproject.org/mt/104819558/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

