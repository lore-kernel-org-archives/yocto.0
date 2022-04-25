Return-Path: <toyonembedded@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07A82C43217
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:15 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.32803.1650907411022280937
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 10:23:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=n9jbS0el;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: toyonembedded@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id
 m14-20020a17090a34ce00b001d5fe250e23so3243015pjf.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 10:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YnJkxFAJBxJOT0ttO83Bk79d9EiXa3ZW59l+L3BkXh4=;
        b=n9jbS0el15CpEh/a5Rv5GgITjW8zVKZuX6UA+QzUjX0K3VVbkZQnnS68wznaEeQTRG
         XtBy4xfgcBMiRJ0uGzrcg9PEnWCjxmouZsuSWVsIAEoMHoyyVxmFS+uOdbJ2jhwqR9FF
         T2NMtHEX3Cj1TzRSuS4X4rTGdEX1Dbl1HXKGkP6R3IsBYIye1f1hkNnGc9UABzwh1RnE
         8iEzIMVn5A1aSJOIWgVxTx+l0WBguozllV28RGC93bsyBuk2W4OAabzPdWs+SzsiU9r4
         4fi2HOHR+XVYNq2ewNnwDt818/Fl7MFj66nlbVtySDAW30yJ43++6W3mxtARJ2RflPWH
         Itrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YnJkxFAJBxJOT0ttO83Bk79d9EiXa3ZW59l+L3BkXh4=;
        b=MyCcRu5FJcgmqqs50vZiR4Z31aFJzA8wR72IkzqGDa4HseCIwBZWGfl80U1/ouHTQ6
         VmdzaJhMFLRfQgNrj0qWu3XMcfxBSICwqz7Jp6aIxYQOQ/3xdlWSylXyMxs98L6469eq
         K3PtTNwdmTaGT8OTntHfnUQZORbCN8sm0sFeJqU3sQq1x18SjdzsbXkuKM9B2GDNDavZ
         249XkqeH39sn6CnZyQogwOpUAso80RNOaJ4qTxNqSQREg0Ymosj8234ewf03QLvRLi4j
         Vln4XuPxAn0z7BFezcbhGhFtFKUTuBW/dgNo6ZUlQTA46tOVG/qzczLK+RCjpfNSB1Kl
         FjEg==
X-Gm-Message-State: AOAM5321tyQFNLoVcaa05UuOdPoS4DJBHBJ/HPxbk8RoQJtLz3CGL9x3
	z7UNq8349UBp8Z/7fymedc7N5SpY8dLg6In8CTB1BvvA
X-Google-Smtp-Source: 
 ABdhPJw9kpwOm+ryndN2QMq77cBnJKqKW5xL8RS6wINY72owZNxCe749KFkBIwPOF2f3pzJc2LnkqbxSZHjGS+I9jfU=
X-Received: by 2002:a17:902:b789:b0:15b:5d52:7542 with SMTP id
 e9-20020a170902b78900b0015b5d527542mr19023222pls.26.1650907410242; Mon, 25
 Apr 2022 10:23:30 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CA+4rcE4K6aPMpAcgTsAcj7AY1YNF1sw2uUh=j3dToFGWg=f53g@mail.gmail.com>
 <9d78e218-a9a6-f298-3630-3d272aeab5f2@bootlin.com>
In-Reply-To: <9d78e218-a9a6-f298-3630-3d272aeab5f2@bootlin.com>
From: Embedded 1 <toyonembedded@gmail.com>
Date: Mon, 25 Apr 2022 10:23:19 -0700
Message-ID: 
 <CA+4rcE4OX0vjgxhqNh2D2+UswXAJ8XyjjzXbFSxp12t6_hjn0A@mail.gmail.com>
Subject: Re: [yocto] have busybox prompt for password in initramfs boot
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56885

> On 4/23/22 22:56, Embedded 1 wrote:
> > when I boot my initramfs and run init=/bin/sh I'm not prompted for a
> > password. How can I require a password before entering the shell?
>
>
> That's what you get when you use /bin/sh as the init process. Instead,
> you could use the normal init program built in your image (which one it
> is, Systemd or BusyBox init?), and get it to run the getty program
> instead to get a login prompt.
>

oh, I see. thanks!

