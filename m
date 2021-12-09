Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A6B1C433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 17:19:06 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web10.14587.1639070345645704471
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 09:19:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O0eGX9kU;
 spf=pass (domain: gmail.com, ip: 209.85.160.176,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id o17so5982680qtk.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 09:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EfvytgAZd+K4oJfUzVExmjOa1G7GEfNjmA7appAvxLQ=;
        b=O0eGX9kUoWX3tCMJg7RswT055O7aKWCjExgncu79g2A1d/e1bSBp1xcyrvL3Zk/MMx
         LTHxRBR8Vtu8EODUDFsimN8jQcGujIsO6OrH3ILssU3tm5gqd1TMbGhjYs8Uho+7zchz
         ijry9FtobrTykauI0heXTcAR1AvczLKEHgoCQc65HmD/HqSMZRL6evXL3p8n6skY9WX1
         LLEIGeN0deRkGpza4NoYLhqXEWwWCmXswsxo+W6uvlN/X08XkGIVlXHPWL1gO+6OQQed
         JddQhjU3qCii2HFWlUgFeWwsPY9CK7xjgcYv3J10096qXwUJE0ea9FYq9tL5SO3GXLUH
         R2OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EfvytgAZd+K4oJfUzVExmjOa1G7GEfNjmA7appAvxLQ=;
        b=4BWsWSV6uoK4Fg5XIztUBtJuVRmYGzEi7Zhqe8daUT/+RrSuMB9jwQNREgj8DQWyyW
         JLeSEmrRv1dre0h3zwY0pM9iGQ2njjrusL7s6ceLJTz1+n9u8Fzci5hczNZDEafmrhRg
         OfvovhHom+98q87Uu3oehvBhpq8cfwT7YttRTNuu4woIjgqBjdqIVnQDjonOB6/jbXox
         gQPlnuYgLf3oWc7OW5XkJ1yK3BhTzytEgq1SvjdLwlV7914saqrpps8hMUhp+k2VWpOM
         g8a2Fq2n07K7QTxAzv7JI7bIs6ARnj7FKq/2ADc8J7ExpYdB8pshlMJisz+Sf/W+Toop
         nNmQ==
X-Gm-Message-State: AOAM532oKReOtlF8fZh331wtvXoILNnsFuVoJGs7CQUPcsIH7s4uClgK
	xshtlM4loDT8yz2F3pNHu+wvT11GXLnaLzXH3bc=
X-Google-Smtp-Source: 
 ABdhPJzGqastBwRox0LOYYY873FqMCRpJZBVC1H8USRf2CutaXE5KTHmNkFPQQlVo8mMxXXZk1Wo9gauDmlo6LLfvaE=
X-Received: by 2002:aed:30a3:: with SMTP id 32mr19085237qtf.660.1639070343441;
 Thu, 09 Dec 2021 09:19:03 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAJekvNQ7Fq8hp2CAfBaAyGnuOSVuaUU6mv3N4AoeY=Rut_5tBw@mail.gmail.com>
In-Reply-To: 
 <CAJekvNQ7Fq8hp2CAfBaAyGnuOSVuaUU6mv3N4AoeY=Rut_5tBw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 9 Dec 2021 09:18:37 -0800
Message-ID: 
 <CAMKF1sp+A77MZ80cevsacdpTV+KMqCOp92Pwnv1Y=mshkSedWw@mail.gmail.com>
Subject: Re: [yocto] honister - errors while patching net-snmp 5.9
To: Ori Pessach <mail@oripessach.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 17:19:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55538

On Thu, Dec 9, 2021 at 7:59 AM Ori Pessach <mail@oripessach.com> wrote:
>
> With the latest honister code I'm getting this error:
>
> ERROR: net-snmp-5.9.1-r0 do_patch: Applying patch '0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch' on target directory '/media/ori/Linux-Backup/poky-intel/build/tmp/work/corei7-64-poky-linux/net-snmp/5.9.1-r0/net-snmp-5.9.1'
> Command Error: 'quilt --quiltrc /media/ori/Linux-Backup/poky-intel/build/tmp/work/corei7-64-poky-linux/net-snmp/5.9.1-r0/recipe-sysroot-native/etc/quiltrc push' exited with 0  Output:
> stdout: Applying patch 0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch
> patching file snmplib/keytools.c
> Hunk #1 FAILED at 186.
> 1 out of 1 hunk FAILED -- rejects in file snmplib/keytools.c
> Patch 0001-snmplib-keytools.c-Don-t-check-for-return-from-EVP_M.patch does not apply (enforce with -f)
>
> Removing that patch from the recipe lets the build continue.

The changes are the same as master and it applies fine on master
without any patch fuzz either, can you check if there are some other
patches are applied to this recipe from other layers.
I wonder if someone else can reproduce it on honister ?

>
> Ori Pessach
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55535): https://lists.yoctoproject.org/g/yocto/message/55535
> Mute This Topic: https://lists.yoctoproject.org/mt/87614514/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

