Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.4961.1596626364417642073
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 04:19:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=He8gr79b;
 spf=pass (domain: burtonini.com, ip: 209.85.208.171, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f171.google.com with SMTP id s16so31985230ljc.8
        for <yocto@lists.yoctoproject.org>; Wed, 05 Aug 2020 04:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8/BFvotyV16rGRGzCcfyG6KHbmyA4piW84HapIyHPvE=;
        b=He8gr79bULxByTDIdUaond8sHZVejfF72xrYsM6odabmvHHz8U6x5qOSLq7XUL5dIY
         sT9qHxoquZWDivNcujMQZTg4EZe7/l3MB+eUNRu6RnZEPA0FgdX8w+ySyAheVbgOkNXy
         pM5/28BiwPRD0J8qAVoQ5EFArmz3hcjqr2lOTVZBjZ7t8KGIIa+3REYj1TjnDOwcWaGe
         njMfSaJojhFCOtiV7gtcfG6BQacw4KCwNfNGVzQa6zgL/m9YSfRCUDmcWKn7bmKmdzd8
         WLQZ9sHVzEW96Od5MoN7eqrDRji4ZPL507fzrz1ePki9s2UrrLYfGmuIqtSQ/6oXc6sz
         R3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8/BFvotyV16rGRGzCcfyG6KHbmyA4piW84HapIyHPvE=;
        b=I0BiFlCtTf3RbinnE5/qjvTRdFaaVuwdwRrGRGoWy5QcfT57RjZuFCOTCCiUgREPbD
         sKD1pCyOdCLP0cCOAhW3FcMOwE6MxDB50n/EJ9wniNLhMz4mq6uA4fXPG8fx45mRQ6m/
         1SJSDc3MCmwPfnYtjX0HbHzfuHTnC103a5WVkHeWr+JuvIbOKvk4ILqw/2G9P/ptAqM+
         BEwHRUenf0KZ3l90kaBnRiiy3bo57PLsT4BVzTZisURrjJEWo51FY6/+CYkeD1cJlAJK
         MiGMZt+pxPptFPVEthXTDvz4SavqOTZa6d/om3GqeAiLgsjaHL5BunP+L6w6qyTSwYKY
         84Vw==
X-Gm-Message-State: AOAM531MNd2NIB0C59oehhqxXTn8KfG+lqMgocnnRuWbUKTmJBf0JOJt
	4AgE5AsOeOowyVQCM5+ZiQm1iCM429IyNocDcCS2EQ==
X-Google-Smtp-Source: ABdhPJwLupM2LfDnwv5F+z/7lpzTGdZxG2puX0dWo3ur3FKBPFpazEqHUwwhkFd22J+VG9pe+nUjfRXJNkb9wMEz27o=
X-Received: by 2002:a2e:97d3:: with SMTP id m19mr1261812ljj.340.1596626362539;
 Wed, 05 Aug 2020 04:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200805071423.Horde.gFLTeIPgkH6Zz45SlgRXx8H@crashcourse.ca>
In-Reply-To: <20200805071423.Horde.gFLTeIPgkH6Zz45SlgRXx8H@crashcourse.ca>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 5 Aug 2020 12:19:11 +0100
Message-ID: <CAAnfSTt254oxeTYf8+21ZTa0ZR+0293P9JMC=RSSC4YjhDOMjw@mail.gmail.com>
Subject: Re: [yocto] when is it appropriate to push recipe enhancements (eg., class-nativesdk) upstream?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

For simple things like adding native/nativesdk then pushing them
upstream is easy and simple.  I'm trying to avoid commenting on that
specific bbappend...

Ross

On Wed, 5 Aug 2020 at 12:14, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
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
