Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.11981.1597141787281101420
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Aug 2020 03:29:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=TRTSyM8V;
 spf=pass (domain: burtonini.com, ip: 209.85.167.46, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f46.google.com with SMTP id k13so6388321lfo.0
        for <yocto@lists.yoctoproject.org>; Tue, 11 Aug 2020 03:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3XelcybHDWHw5Qy7REDbJYBoI5j/Sf1oB5AAPO9pMkE=;
        b=TRTSyM8Vkx7nj9j/1KK39b5fG4/lsahhEePzlSCerV+kp4VPTKV+J80smkKUrRPQjV
         pVqgZqWNthAfYKrkLIII4yP4MfrS5HYqI43FPpmJKhUDEmKW74yTI0CATjIQLQtCiu0C
         QVyJzYnlUhrgY/9P/Ak/0v8JvUdTBC/JrwKTGSwEVnO1Uwzn57oam4V8rO0H6lBwbO4W
         IGwS/5cHf1AYfKBgiDyl+Dyq3mABW5BiafIbTcSr0/+zWgZQ+hiD4m6pn5yiXqhqv2rx
         uFw5M0SCv5Y0NIMyXQ5BatFg+IhnvnxpT7UcfpLxhOpSfZrXHQ2Ef+cXW7iU9YvzeWPm
         mdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3XelcybHDWHw5Qy7REDbJYBoI5j/Sf1oB5AAPO9pMkE=;
        b=pBGamwi5vwomPUQtXbatPTp/FOJxOg28noMdsAuQ/1JyIVnMfiUPXnzwZeONCkQTmN
         aFKvRejsxiImri8bbFQJHTJ3X/0XwUhYo1R2OJ26CNpis1fAhz/Eaff1oRb8BIHUCYnn
         W86M1JGb3O4LDCT+6075GoY5ekc9ZZJkLi4G13/7F0suON275AK+wkitHHQPSzR1VclA
         eKraveWyFbrYuHYwkFSKHgzWyxBhakdtQ5ZVPm1CK4IGl1JNJm2IIaHGq/j0NSNb6Xqw
         o1WvcTSdgDCVZzX7l7N7sncbOsFS710N+s+zqJUWrKIcURtuaeWUAMNVxxO1ZppovBmW
         pADA==
X-Gm-Message-State: AOAM533Nn1RRbQPiXADj3DpruIeACjAdm0OCmZY48ZhAZZhLmeUaUP/l
	QSJc7IC28hEqIYUVnLFnljIfS2gx6HD/4lF6aG2H8w==
X-Google-Smtp-Source: ABdhPJym6SPK1QLjIGyqE2fp+QNFNP80Q8Kg9P4L1KKcQg20nQ6D0s76jw0m1UErh8RfTubOoEFco1JyXUKe2wiHKMA=
X-Received: by 2002:a19:431c:: with SMTP id q28mr2922329lfa.211.1597141785145;
 Tue, 11 Aug 2020 03:29:45 -0700 (PDT)
MIME-Version: 1.0
References: <2e47fc5f-dbee-1f6a-f029-23b74e62b186@whitetree.xyz> <26418.1597140446495208943@lists.yoctoproject.org>
In-Reply-To: <26418.1597140446495208943@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 11 Aug 2020 11:29:34 +0100
Message-ID: <CAAnfSTtCe30_j4yem_vGHHXAhXEvm3=8Bev2R3_O9jQ+p9j_pw@mail.gmail.com>
Subject: Re: [yocto] libtool: library search path "/usr/lib" is unsafe for cross-compilation
To: Charlie Davies <charles.davies@whitetree.xyz>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

It's probably because the configure.ac or similar hard-codes a search
in /usr for some libraries and find them there.  This is *entirely* a
bug in the clamav configure.ac and you'll have to inspect it to
determine what library it is looking for, whether it can be turned
off, or whether it should be added as a build dependency in the
recipe.

Ross

On Tue, 11 Aug 2020 at 11:07, Charlie Davies
<charles.davies@whitetree.xyz> wrote:
>
> Hi,
>
> Are there any ideas as to why the issue above is happening?
>
> Thanks,
>
> Charlie 
