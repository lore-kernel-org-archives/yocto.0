Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.496.1596778124733250912
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 22:28:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pKtp3mBG;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id x6so242421qvr.8
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 22:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nS1JZJ8zUy9bbHwR4DTkYYw0er60mR0jIyIE/J6TDMU=;
        b=pKtp3mBG+nMi8IbTcRuuB/g9xZW71Ujr1FqumeBJ2gTv+5rVeC/JPHyji6icxjKSRm
         Ko3SuQ8b9yGfrXFVt0e8EiIYAiLwjeKGpyyPNtMV+UhNW77SUep4wlrVbcDcDpVKrbg+
         uIYIRPiEZ/6VQWs9dhDGcKrfPLw/2YaAr+8ENE1VjpkXqYIwdlSgZtEPtqj8PW4k7hZN
         n/5VNLSFapu20M6zXn+M0Rw12hnTuhMYl+k2xGtDFS+kIJ9IwozEicZwtb9YW0FzdnVQ
         yL/geWxJ3hMro66qoksQJFQmNahYGDY5jo3Hinz03R0xcmUaS6eXUYwSSZFuMoTyDsx7
         qtVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nS1JZJ8zUy9bbHwR4DTkYYw0er60mR0jIyIE/J6TDMU=;
        b=kjB7aE/1aTeEQhbcs60rxcXLyzGQ820nGrCN6D4e76S7ME24Xg9uH0O3dr6Dy63451
         bnaycTT1+MinIrgGHh++lnNKms3qhqzydkUmM7MccOrn+yO14uEn3aqZtV1eUJIaaoVU
         O+jLGSZGL+T6rw0QPa/6MXZtIwnsXrNXWBBYq3YiXndfJBOr11qxma9b8W4MFqMeo1aD
         soKxwvyJ9DsM7ADmm95u9m1qELxsxQ699U2oHY6L1P3ryeULJ+WafWDyeOy3qOF8ei/w
         lOrROVDPB1dSoXJo/8Fkk2ON4P3aZ1Vx0R677LvzjpDhTwgWvjJX1/3UOj7cSA22ZIVE
         N6CA==
X-Gm-Message-State: AOAM532/uLjx3J2OeXj6BE+P3+IREcvGrKD1xYR87+mnaM8Q+cUUAQT7
	sm4fyC0ofihqZPzQhSKN9aS3I5jHSMWXbz9xJ4OqeD+H
X-Google-Smtp-Source: ABdhPJx3gwKnTdtNkumSf0W+RG0ahGIMwXA/LCgtG1wiprBO3Uxrb7iCzoCpjS3NztguruJ0UTTEm2bc6n/Js/w8ymo=
X-Received: by 2002:ad4:5812:: with SMTP id dd18mr13253137qvb.23.1596778123599;
 Thu, 06 Aug 2020 22:28:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200805071423.Horde.gFLTeIPgkH6Zz45SlgRXx8H@crashcourse.ca>
In-Reply-To: <20200805071423.Horde.gFLTeIPgkH6Zz45SlgRXx8H@crashcourse.ca>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 6 Aug 2020 22:28:17 -0700
Message-ID: <CAMKF1so+mUm0fuweicp0VJ=_vPfTMJceoY-1F_OPdzoi1qDACQ@mail.gmail.com>
Subject: Re: [yocto] when is it appropriate to push recipe enhancements (eg., class-nativesdk) upstream?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 5, 2020 at 4:14 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> based on recipe from an existing (zeus-based) project, colleague asks
> about a bbappend file, and whether it's appropriate that it be submitted
> upstream as a patch -- this example involves "pciutils" recipe from
> oe-core, but the question more generally covers any number of recipes.
>
> this particular code base has the following pciutils_%.bbappend file:
>
> === start ===
> PACKAGECONFIG_class-nativesdk = ""
>
> DISABLE_STATIC_pn-nativesdk-pciutils = ""
>
> # Need nativesdk-specific do_install due to ${sbindir} being set to usr/bin
> do_install_class-nativesdk () {
>          oe_runmake DESTDIR=${D} install install-lib
>
>          oe_multilib_header pci/config.h
> }
>
> BBCLASSEXTEND += "nativesdk"
> === end ===
>
> i'm looking at this for the first time and, sure, it appears to
> extend the pciutils recipe for nativesdk. but if that's true, then
> would it not make sense to submit that as a patch?
>
> the current zeus "pciutils_3.6.2.bb" recipe doesn't extend the
> recipe for nativesdk, so if this bbappend file actually correctly
> does that, would it not make sense to contribute that enhancement
> back?
>

yes, it would be good to send a patch to extend the recipe to upstream oe-core
I also see the bbappend is using a greedy wildcard, sometimes they can
be error prone when upgrading
to newer versions of oe-core, so usually I like to recommend that
create version specific bbappends so
it reminds you of this quirk when recipe is upgraded underneath.

> in general, there appear to be numerous recipes in this code base
> that do little more than extend the recipe for native and nativesdk
> because the oe-core (or meta-oe) recipes don't do that.
>
> am i thinking about this correctly? it seems that, if local bbappend
> content fixes or enhances a recipe, it would make sense to push that
> fix so as to not have to carry around the bbappend files.
>
> thoughts? i'm not passing any judgment on the correctness of this
> particular bbappend file, i'm more interested in the general
> philosophy of pushing improvements to not have to keep carrying
> them around in the local code base.
>
> rday
>
>
> 
