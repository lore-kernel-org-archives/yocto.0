Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web12.6648.1610442495816474491
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 01:08:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYhvxO3V;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id w79so1264612qkb.5
        for <yocto@lists.yoctoproject.org>; Tue, 12 Jan 2021 01:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+r3mMz5zxLZ3eU8wY9y4o/nyVYzrMyp1vywzcdZFptw=;
        b=vYhvxO3V/m0tEa/0hULBdEWkpRFyVrpXh21KfvFCIc4qgtEAc78FlPvH/7H2atyItD
         eIXBh9Uc/Fkw7nWWiI8CBSYwFNie/By4SIJ904EjUKH0piToHW8q/lsAyAYb/uqEQiqE
         D3ydWKW92nN9lmVqz4xTaSSHgmlSQxFd5nvgNoER/JAtYEcemmqrCpIqoRAdY3xGn7Vd
         pbW8yTeOwjATa1geksSQ3yrJ78BQkQ73j/ki92jatI6rQtQDgh/IbIJYUFg0zFXIEOPj
         BDBPp9xpW4POxGN4frhOSKvJX5biC+nlfkzOLfrrejHyMQghdgORy5ldM6FlagYY51E0
         zf4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+r3mMz5zxLZ3eU8wY9y4o/nyVYzrMyp1vywzcdZFptw=;
        b=mcKioPriBiEA/B5i21tKmXURFBqgIVRehST1of7ainy77RshEb+aLZcW4Df8rArdvK
         7sQ71IzwB4dGKJGfnOoPTFPK3hQFwHqea0JORQBafoDV2IyUo4tijuaEaPwhAuTpIP3U
         rOH/+J6yAW17lnHAgd23dYkOd6x5us8Ume6ftNt8CnZWWYqwpoMAM9jlSjrb1FnGqU+s
         PqFpJs1dSR5R6BjQsSVtvBFMjRB70EwnHOcMut8q+vWHzzQDuDU7iJvgeCsTqCnruGun
         gXeMB3De8p6NcPvda+Xfo7Jco6jwvL1urnQAO8W4xUzP6I2fbrAqHCICslwqWpul29wZ
         r19w==
X-Gm-Message-State: AOAM532chZ6QPmLGf+vvCL0M8PCaSa/OIUvO+X0cukWIVAjWbFUCarZh
	WThdl05+IxRCugXOW7U+7PIS0l1CPXC86ofZu7E=
X-Google-Smtp-Source: ABdhPJw6LhTQOlOmQURxyPPigtSwqjMr6n0VEgio144a5HHFKqhpA4oRv4itE+NP4CZZ0L3rBGrmObqVTaWm2Bwb86s=
X-Received: by 2002:a37:744:: with SMTP id 65mr3306672qkh.71.1610442494863;
 Tue, 12 Jan 2021 01:08:14 -0800 (PST)
MIME-Version: 1.0
References: <H9Ol.1610437607545381604.zv9V@lists.yoctoproject.org>
In-Reply-To: <H9Ol.1610437607545381604.zv9V@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 12 Jan 2021 01:07:48 -0800
Message-ID: <CAMKF1srUErgMnrjKfAPJr8--8jPde-W=EH23JpKsZQJuvPcdAA@mail.gmail.com>
Subject: Re: [yocto] Unable to add pre compiled library #yocto
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 11, 2021 at 11:46 PM Vijay Rakesh Munganda
<vijayrakeshmunganda@gmail.com> wrote:
>
> Hi,
>
> I'm trying to install a pre-compiled library, but I got an error as follows. I had tried to add libcxx from meta-clang, but it doesn't compatible with Yocto dunfell version. Is there another way to avoid error?
>

it seems to need llvm C++ runtime and using meta-clang/libcxx is the
right way to go about it. What errors do you run into ?

> ERROR: tokbox-2.18.1-r0 do_package_qa: QA Issue: /usr/lib/libopentok.so contained in package tokbox requires libc++.so.1()(64bit), but no providers found in RDEPENDS_tokbox? [file-rdeps]
> ERROR: tokbox-2.18.1-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.
>
> Thanks,
> VR.
> 
>
