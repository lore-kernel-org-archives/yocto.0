Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.21.1591384800091923010
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 12:20:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fIONb/04;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id d6so3253680pjs.3
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 12:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pNs22q21aCGC6IQ073MmBj3me+og6OTMWF9YH+g7+oA=;
        b=fIONb/04E2t0KbzMR4gZaT7Bsxr/tbVWvo2magiLDJcanLkBzbMtA9OPHlSTFMBzKM
         pPuw/tFDEXuY/IJXmAW1/mpQepAE2kfQhGH4VErT1Mm/vcEDp7+WsJ3y0gczzBC0JOhd
         mCt7ngybv0n1m+IMjyFuz2lnNoMvxIJ8NyxBXs94zUnlAF457WxJye0/upn8XzjtNSkg
         ltBH9je58PrWkPIGttzvhKidPhWqvAg0C65IFtJzE5lQgdeeERy8m6z4m7TkxIpXHrpk
         VKh+4RJy/NrdRSaS4hbLrti227jhNLMtJFwaEFgDm3n9EKo2PYGguygoyvM0R8KXSirh
         a2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pNs22q21aCGC6IQ073MmBj3me+og6OTMWF9YH+g7+oA=;
        b=M75NZDrqA/HBaepTQXPV9HvA/36V0jXaXVXwl8IhJ5uNwx0Ed63Va6/MKpRp+NSvED
         SzZ2PLcmMQ3X3AfGs54WK/ZxD2goWJzuZYFGYhEXdwJRcQ7vIvpUO9zFqPeo4tbHTnYd
         dnGCdD5sjj/CyL1iy8AbKjoAZ1V7QNGnI0acD/NbTFAc33lRu7DI+MYLY6J6tGyF4gr0
         uWkJO/9WnCtcTNt8AaoR/+tzKew4IFsBxtnMp0mdVlLTIZbD23olihLHxNWXt+SZ1ad7
         4FxOYvRWBUez6ZHFCaZ/7+h457d4TZSo4CFAlVPtgTqqJ69xEBL//IfaLNA/L/FAlsMQ
         nLEQ==
X-Gm-Message-State: AOAM530oiWI/uH/v8lWYAYjzapXvPYPrs0szorms4YtipT3gd6FqxbDH
	3ccJlxaVdot+O6AxPRH/ntMW+E02Ze4=
X-Google-Smtp-Source: ABdhPJyGb/5sDlTHsJ/lMZLxiARGfkwlpfbs2ce7FsIjIcyAeApfx9Af5m04vXjHCcngxD+ANatWjw==
X-Received: by 2002:a17:902:8c84:: with SMTP id t4mr6887717plo.315.1591384799093;
        Fri, 05 Jun 2020 12:19:59 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:392e:a386:560f:8a74? ([2601:646:9200:4e0:392e:a386:560f:8a74])
        by smtp.gmail.com with ESMTPSA id z186sm340386pfb.131.2020.06.05.12.19.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:19:58 -0700 (PDT)
Subject: Re: [yocto] Recipe do_install priority
To: Laurent Gauthier <laurent.gauthier@soccasys.com>,
 Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@lists.yoctoproject.org
References: <294e63c4-293f-9b86-82d5-7c41bead0d2c@faresoftware.it>
 <CAGbd71Qq-5KkVDCjZXrZhducc6NykVb3P54vDapuQEMdtZ7CsQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <b858fa81-8df6-f47d-f2c7-0b4220611514@gmail.com>
Date: Fri, 5 Jun 2020 12:19:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAGbd71Qq-5KkVDCjZXrZhducc6NykVb3P54vDapuQEMdtZ7CsQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/5/20 5:51 AM, Laurent Gauthier wrote:
> Hi Mauro, all,
> 
> During the creation of the rootfs of your image yocto will try to 
> install both packages, and should complain loudly because the same file 
> is provided by two packages.
> 
> There are a few ways you can do this properly:
> 
> a) the straight-forware way is be to create a bbappend for init-ifupdown 
> that updates the contentious file with the content that you need, and 
> NOT provide this file in your library.bb <http://library.bb>
> 

this is best course of action, for maintainance POV as well as 
readability, I know of custom packages that bundled bits and pieces into 
a single package like this and call it some meta package but ideally, 
its better to stay with upstream packaging conventions. Its less work 
eventually to maintain.

> b) you could also createa bbappend for init-ifupdown which remove that 
> file from the installation in a do_install_append, and then you are free 
> to install it in your library.bb <http://library.bb> as it is not longer 
> part of init-ifupdown. This is not too complex.
> 
> c) another option is to try to use alternatives which allows the same 
> file to be delivered by several packages, and which one is used is 
> selected at install and/or runtime by using symbolic links (example: vi 
> vs vim). This requires a bit more research.
> 
> I am afraid that options other than these straight-forward ones will 
> qualify for the title of "horrible hacks"... :-)
> 
> Kind regards, Laurent.
> 
> On Fri, Jun 5, 2020 at 1:31 PM Mauro Ziliani <mauro@faresoftware.it 
> <mailto:mauro@faresoftware.it>> wrote:
> 
>     Hi all.
> 
>     I'm Mauro.
> 
>     I have to resolve this matter.
> 
>     The recipe init-ifupdown.bb <http://init-ifupdown.bb> install file
>     interfaces in /etc/network.
> 
> 
>     I build a library which need to install the same file in the same
>     folder.
> 
>     This library is managed by its own recipe library.bb
>     <http://library.bb> in my meta-mylayer.
> 
> 
>     How can I tell to bitbake to install library after init-ifupdown in
>     final image?
> 
> 
>     The best for me should be drive this behavoir in the recipe-image.bb
>     <http://recipe-image.bb> in
>     this way
> 
> 
>     library:do_install after init-ifupdown:do_install
> 
> 
>     that means  run do_install of library.bb <http://library.bb> afger
>     do_install of
>     init-ifupdown.bb <http://init-ifupdown.bb>
> 
> 
>     Any idea?
> 
> 
>     MZ
> 
> 
> 
> 
> -- 
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> http://soccasys.com
> 
> 
> 
