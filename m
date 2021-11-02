Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79BF6C433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 16:35:09 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web08.313.1635870907235865805
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 09:35:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=ZcHE99Zf;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.176,
 mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f176.google.com with SMTP id p4so1968331qkk.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 09:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+up0Q3EPiLtEeNuLrzi95Tc7r1C6dT4Jg+wpALPUCLk=;
        b=ZcHE99Zfr/qj0ePeqvXdxdRi2mYkZy9fMOexObhXfo2tZn10m4BmWOvTMODWiHAqrs
         b2CfqtmnYcXhMVdMjlM/1r0cYvpRXAGqhEnDPDXtAj4JyWZ6hVD6PTAsDJK+7AxbPRPH
         vPLqR76xPzZJalZvMupdfUAd96Mf3Fs08yGsUgtMQe0n7FT05bQo/3B495NluioPkUKl
         xUQwGhJcw9BXkQWN851sBnOW8HFAMa2VOVZs/vb8vjb0YownynG7stBpeiWZCxFr0IFQ
         lowgUXI5gl/A1aACL/g4zkvNbDzVr/KoOX1q5GV1sMIQSBtMSWKVJGgsIomTlYvmMX8Z
         4wSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+up0Q3EPiLtEeNuLrzi95Tc7r1C6dT4Jg+wpALPUCLk=;
        b=U/JGNrIY6ufKWRulmT4ZI4Ro76a2CtqcmMgzjxv+FxzNiLMyPSxzCKMxt5qVJLM+Db
         ay92wo2LeKhVWF1KKAKfiM9karOUgmGG17QyJBjozYvgN4ljABfdAZrwr1KWxT5hUWbG
         NY/AFrxcblbELv1U1P7bVdglIfeZcasYnUXVTj1qeGWn90DHpDkyCBfdM3zJbthr9rQl
         fMLA2mlQUXm0AUks3Je/bLzHkpypuogs4Lt0TWF+4kts6LnAeVZHz1EX3fk4j9ZUkZn9
         OnOCaN4ptaJU10G2pCa91kzQ+CYETbc+aeuWvh9lUYyJL2cCuxCdjy2zT27LpT+1bp2V
         fspQ==
X-Gm-Message-State: AOAM531qv7Py/XKYEfryqbj1tdAUE1yV52sLl+RUz0SxdsGZeMMX0AHS
	RcxkF99gdFFN3qOrbMCbwxT72pjj+9WzkXTgg2454A==
X-Google-Smtp-Source: 
 ABdhPJyCq43bgraZNw0NXRgHO/eQMH9mx0R42FKQ8e1svQ8/MaSxlRqHiKTqljGUmoeH/7VIonxzQJMsMi+xXI2vYdA=
X-Received: by 2002:a05:620a:45a7:: with SMTP id
 bp39mr10311228qkb.216.1635870906171;
 Tue, 02 Nov 2021 09:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B3C74F343D36F7.18236@lists.yoctoproject.org>
 <CADkTA4MK42-jw8yWWaHM8uDM=ayhJRqcdjEHq6zZDya+JswkQw@mail.gmail.com>
In-Reply-To: 
 <CADkTA4MK42-jw8yWWaHM8uDM=ayhJRqcdjEHq6zZDya+JswkQw@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 2 Nov 2021 17:34:55 +0100
Message-ID: 
 <CAMjhiJiti9KNno2MMmA7H7dyR1xt+_icme=Yg5yZiwfHK+1J6g@mail.gmail.com>
Subject: Re: [yocto] yocto preempt-rt
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: steven.monsees@baesystems.com,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 16:35:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55217

On Tue, Nov 2, 2021 at 5:26 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> Correct.
>
> The rt patches are already integrated on the branches that that recipe will build out of the linux-yocto repository.
>
And adding to that, besides the Yocto maintained kernel,  meta-intel
has it's own kernel GIT repo/branch for the kernel and -rt kernel
maintained by Intel.

(There might be some overlap in the maintainers, I am not aware of the
differences between those.).

I used the latter with success on Intel Atom 3950 for hard real-time purposes.

Regards,

Leon.

