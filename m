Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1506.1603055596943389576
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 14:13:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q4OFQZsC;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8C31538C11C6
	for <yocto@yoctoproject.org>; Sun, 18 Oct 2020 14:13:15 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id q63so6398255qkf.3
        for <yocto@yoctoproject.org>; Sun, 18 Oct 2020 14:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ANkPRpoFNORpVmoBeLm/5IDMo+HA5M8OYfQpOnEbtk4=;
        b=q4OFQZsCk98AknYRENk89p+kqGC21NtRh+Ug+4lAiQMebt6p6mYnDyrPpyj+j52o16
         lHza6XbnKGWjv5/DlYDNHkeVVYzBk5lsW0d54j9uNscOoG2DJ/1YG9BMwYvpUV8YJeN6
         OCFW3kj0+pULIyibY2HJqiblmvToK7Iv0cDWSODyik9r7kOViozs3LVxgCulqV9+wQ4P
         mnz8FfBCbNxTepm4eFfn39iCC0/cpXnV8bAGcWMbYWnAYsFG11za4QE+8wL8ohMMbH2j
         etxtn7M8AtV34ubWwni4Busvn4K97BdbbIJncZR3x9CvxRH8/XHKxwOx+wSouWKzLZql
         mV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ANkPRpoFNORpVmoBeLm/5IDMo+HA5M8OYfQpOnEbtk4=;
        b=O5U1e7zUPCypVFIQ0uptWfJt3ztHMxAi2j9gOcVYuERa+uLMjDbDkU68XEd/odn8Eg
         dxHu+DWEnHrtjVQEb51QEgruchiJTB5RI01I59DIlgDOrqx3lqLdgvrTqcWeB04eQnom
         ol5BroJDwP2+SjZYs0Gpw05++uUVBHzfUX2VQFrHmRTxg/FeJlCodmlDt9zAa1IsqFv2
         kXPp9YZqnW10Dk4ThIyQuJtLBR7XxzmeXd78FAjOdHgs6wulGQfJyyGz3qp9lFP/tvrZ
         HSthGqFrj5CmUWLLOJ9kxEpbq+baueuvKnQzQWbPUsF39vU1T4eq1I1BU74aEQtB8ckC
         HZuA==
X-Gm-Message-State: AOAM531zAl86ey8UWol+dIn2uajc6IQVJTKu9hcF7ENE32cQceKRRKfc
	5GotQCMkkyV/aY5GXMw6NwBdRbgggFuPAQPBexnMFKIbygg=
X-Google-Smtp-Source: ABdhPJxXGc1/X+T/wlIWL50jipfzo32JTo6Od+p8p2XJ5M/hX8CFkJg37NtkE+SXLviwKaIK1k1eLDPWtMUUoGqI1oQ=
X-Received: by 2002:a05:620a:c07:: with SMTP id l7mr14277080qki.9.1603055594500;
 Sun, 18 Oct 2020 14:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.23.451.2010181418430.14910@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.23.451.2010181418430.14910@localhost.localdomain>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 18 Oct 2020 14:12:48 -0700
Message-ID: <CAMKF1so3dNvg3UvBXnaeBBAZEsfSRU-APg7oq+fnOFOYSO=gdA@mail.gmail.com>
Subject: Re: [yocto] slightly weird use of PACKAGECONFIG in bbappend file?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 18, 2020 at 11:32 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>
>   currently updating lots of YP class notes, and writing a short
> section on "coding style", and ran across the following oddity(?)
> related to PACKAGECONFIG (all on master branches).
>
>   i noticed in oe-core, qemu.inc:
>
>   PACKAGECONFIG[spice] = "--enable-spice,--disable-spice,spice"
>
> fair enough, that defines a setting for "spice" related to qemu.
> however, for reasons that would make no sense to anyone but me, i
> ended up at meta-cloud-services/meta-openstack/qemu_5.%.bbappend,
> which conditionally requires qemu-openstack.inc, which contains:
>
> /// start
>
> PACKAGECONFIG[spice] = "--enable-spice,--disable-spice,spice,"
> PACKAGECONFIG[libseccomp] = "--enable-seccomp,--disable-seccomp,libseccomp,libseccomp"
>
> PACKAGECONFIG ?= "fdt virtfs libcap-ng"
> PACKAGECONFIG_x86 ?= "fdt spice virtfs libcap-ng"
> PACKAGECONFIG_x86-64 ?= "fdt spice virtfs libcap-ng"
>
> PACKAGECONFIG_class-native = "fdt"
> PACKAGECONFIG_class-nativesdk = "fdt"
>
> /// end
>
>   i have no problem with a recipe bbappend file selecting or
> deselecting PACKAGECONFIG settings, but it looks just weird for a
> bbappend file to define *new* PACKAGECONFIG settings -- that would
> seem to be a property restricted to the base .bb recipe file for any
> recipe.
>
>   so in the above meta-openstack file, the line related to "spice" is
> clearly redundant, but the line related to "libseccomp" just looks
> weird as that should be defined in the qemu base recipe, no?
>
>   or am i misunderstanding something again?


there is no such hard and fast rule. Should all packageconfig knobs be in
main recipe, perhaps a good practice but not necessary,
>
> rday
>
> 
>
