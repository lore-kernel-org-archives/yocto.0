Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web12.9385.1576761462117147718
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 05:17:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dudmMclJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: marek.belisko@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id t17so4837432eds.6
        for <yocto@lists.yoctoproject.org>; Thu, 19 Dec 2019 05:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cSObWk4dbO8spgH7l0TfpyL/zZu0owTwsK1XS9nMYg8=;
        b=dudmMclJUqPEvQTxsHb//yCpR+hS2Ll1N21OEijNqoPQNlMgtIJI2AZISFwG3jsgkD
         d7zwF+jt8ag9jtLZRD1YtRZe1XZHf7FZFQxD8eZYbhrI4UNdVZ/G5ZTa/M/9Ck/ZxnuH
         Ro0yAN8h7WpW0dq6RAlRwA76JqInCJ4xcsMH4IqYzcXxR+L+QNfRZ9BWjwA0m/VriNE5
         MUchvEw11/B4/Nefqq9dOa7vNg8bpYXVXwuFjTMa5XIz8ZCKMlyqaCbl2ZW7Y4qcVE3W
         mSDOZ+741s4tiaqxuLfO+ef3+z5nAMdgjDBSNjdVQYrnMWcWcxAmloARY0pW8tS05wum
         AePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cSObWk4dbO8spgH7l0TfpyL/zZu0owTwsK1XS9nMYg8=;
        b=oq6cgzxb4ZtAy9brI/Ho+F/q/t3G47BrAOaCFRwTrVCh1jAxEbtRKT9gpdut0Foy/R
         IKknJhhgxb3dEWTO711oV7XoM9H8OOiMLZ1zEhkd7Je1bjJZbsUb6qDMZjSIsLLovrTz
         m1+VkY+5kVeNyIStnAMNbjun/Ff3mX5RYufqcQ+UeiZiehZgIgFskUOGcIP70BxtclNE
         nXCuQgBHt6Llyo7zSGeSX3LVMjIMlA5n6IKDY9978UanwZh+FVPFLQyk757coF8c0g8a
         uKGfKUjoOPSswLr7vhl/ThYomQ1X7k+2zqSkH3jLYG7FmfnkJMjc054rEOnxBkbqHYzz
         Ud8A==
X-Gm-Message-State: APjAAAXoJ3iZYsMvRZvOJmea3vzyKAMYXquQlloKn9UGbyOVYY1mbjLZ
	jRd5YhWqFtxBvOl4ZiuFAC6RK7p73Fhydhncf2o=
X-Google-Smtp-Source: APXvYqzesAp+QXcLr5/6VHiXhLiu3zGQZBNZuoncjCGshXCdUEOAR8ObGdG3YiVpzXC1icP1QgYF3pP4xZe3YdzEBxw=
X-Received: by 2002:a17:906:a3d3:: with SMTP id ca19mr9486140ejb.136.1576761460610;
 Thu, 19 Dec 2019 05:17:40 -0800 (PST)
MIME-Version: 1.0
References: <15E1C77B4FBAA4EC.30484@lists.yoctoproject.org>
In-Reply-To: <15E1C77B4FBAA4EC.30484@lists.yoctoproject.org>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 19 Dec 2019 14:17:29 +0100
Message-ID: <CAAfyv35X+K6ne7DSrYBdV1+mLhnNhjpPytgSHyzPnSfCjCPheg@mail.gmail.com>
Subject: Re: [yocto] mc fails to start with readonly rootfs
To: JA <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 19, 2019 at 2:04 PM Marek Belisko via
Lists.Yoctoproject.Org
<marek.belisko=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> when enable readonly rootfs mc fails to start because cannot write to
> directory: /home/root/.config/mc
>
> I've created volatile-bindd to this directory (to be able to write
> something) and extend mc using below bbappend:
>
> do_install_append () {
>         install -d ${D}/home/root/.config/mc
> }
>
> FILES_${PN} += "/home/root/.config/mc/*"
>
> But now I got QA issue:
>
> ERROR: mc-4.8.22-r0 do_package: QA Issue: mc: Files/directories were
> installed but not shipped in any package:
>   /home
>   /home/root
>   /home/root/.config
>   /home/root/.config/mc
> Please set FILES such that these items are packaged. Alternatively if
> they are unneeded, avoid installing them or delete them within
> do_install.

QA issue is resolved by adding: FILES_${PN} += "/home/root/.config/mc/"
Is this patch welcomed to upstream to overcome same problem?
>
> Checked FILES_mc and path is there. Am I missing anything obvious? Thanks.
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47771): https://lists.yoctoproject.org/g/yocto/message/47771
> Mute This Topic: https://lists.yoctoproject.org/mt/68830517/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [marek.belisko@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-

BR,

marek
