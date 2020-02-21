Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
 by mx.groups.io with SMTP id smtpd.web11.349.1582315050047648223
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 11:57:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWpra9Eb;
 spf=pass (domain: gmail.com, ip: 209.85.160.193, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f193.google.com with SMTP id d9so2140930qte.12
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 11:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9STNJdPHSLZGVCdl5r/tM4TpnZRbd/OW6p1h2ACX/Cs=;
        b=lWpra9Eby6JQdMLCZFWDUzoHY/mGju0e17Kj92GXSHwOnjdpMvqN/NV4kY7odMu0aT
         Yi6iEQFZO47YuElHfFyPzZyGeiBYtvKv6HvyQXgbc25GG1puZnl/Ffky9FuzkE744r9n
         NWxmGtQiiQPYD37/l7zijvaxasIJTg3S4qSrCYYWChVM/+SriFVzu/Y0lwYBh0dyeQyu
         VSxfVZrntSfGRZgvjs9LZ9U/8kaE81NoE2nelXYEAM2i86YxEhbYzkhFpa6geVmIjAN4
         +6XrynKxj09Qz8dhA7c/Fgq6KYnd7UZ5VKOyDFqRQiNiBPC2MMyUfSOGrg3vniYgleBY
         Q2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9STNJdPHSLZGVCdl5r/tM4TpnZRbd/OW6p1h2ACX/Cs=;
        b=GNsnF5MsMk8jevCRO2tDduR8RdwZ6aZ1CiXxggMqKvXdYZMx5H1XKHDxrppsQuUfkd
         D4NeQG0RcruQb9FW4XnBT57jHfmRWbyyBOkq1+ChPAMqgnxQwuV/mWjLmhMs2HMMIJU1
         0LdHSYjAyhQ9g83sQsbAfOTUcG6C/CPjXUCKCuaUBchhcTQQL5asQ8NKJUb+K6WMDE1E
         vsTKUWok7xPCbtnXjcGCNsQZ4dhcDF2V46wJkWrgwh0W3oHQo9+yfqfdI4XiL3wXeEgc
         s17ishTFboR9Np3fT8c4G902FmxByCRgqjzBXLSh7K55Qs5wAMIrb7BVCms13w9VrlAG
         NYDA==
X-Gm-Message-State: APjAAAUAYcAh3Iw39K/FahkAwQZ7M1Obkbg1yRQJ9EZPXEs3oNdLSqhQ
	+z4vY3szUXbaydqT45vMH+Plk2cpst1bNgSCh1c=
X-Google-Smtp-Source: APXvYqyXBt5Mxeo4rZ5vJVijjURzM8HmSK7ScHf7vsKyaX5wkeGffAtDtij7IXf2N8gOQd5ZCWM2bUvEhlaeFViBM84=
X-Received: by 2002:ac8:36dd:: with SMTP id b29mr33193024qtc.285.1582315049006;
 Fri, 21 Feb 2020 11:57:29 -0800 (PST)
MIME-Version: 1.0
References: <NKHr.1582292647502040528.ikPU@lists.yoctoproject.org>
In-Reply-To: <NKHr.1582292647502040528.ikPU@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 21 Feb 2020 11:56:59 -0800
Message-ID: <CAMKF1sqgsxZBOP15Ft-b0W=4KQc=dQJvJ12H+riCaordNF4S8w@mail.gmail.com>
Subject: Re: [yocto] nativesdk recipe fails to find cmake config file from another recipe/dependency #sdk
To: Armando Hernandez <j.armandohernandez.j@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 21, 2020 at 5:44 AM Armando Hernandez
<j.armandohernandez.j@gmail.com> wrote:
>
> Hello,
>
> I have two recipes (let's call them "recipe-A" and "recipe-B").
> Both recipes extend the nativesdk class.
> recipe-B depends on recipe-A
> When building both recipes for target, everything goes well without any issues.
> When building the nativesdk corresponding recipes, recipe-B fails during the task do_configure due to the fact that cmake cannot find the package configuration that corresponds to recipe-A.
>
> On recipe-A.bbappend I have the following lines (recipe-A cmake config file "CommonAPIConfig.cmake" is located under /usr/lib/cmake/CommonAPI):
> FILES_${PN}-dev_append_class-nativesdk = " ${includedir_native} ${libdir_native}"
> BBCLASSEXTEND = "nativesdk"
>
> Since suche cmake config files was not found, I created a recipe-B.bbappend file with the following content:
> EXTRA_OECMAKE_append_class-nativesdk += "-DCMAKE_PREFIX_PATH:PATH=${libdir_native}/cmake/CommonAPI"
>
>
> But I keep getting the same error.
>
> Any hints?

check DEPENDS how are they specified in recipes, it might get
overwritten in some cases for extended
recipes if overrides are in use on depends. Secondly, check the build
tree for failing recipe and see if
it has staged the content from other recipe which it depends on.

>
> Thank you in advance!
>
> Armando Hernandez.
> 
