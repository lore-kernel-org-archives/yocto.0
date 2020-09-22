Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.1790.1600808312690467366
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2020 13:58:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LyXrqnv5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id a17so18563516wrn.6
        for <yocto@lists.yoctoproject.org>; Tue, 22 Sep 2020 13:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Rz76jVfD0D1CqIkgyfPk9Gvt4Xf6gx3/VGo7Eo9hx6Y=;
        b=LyXrqnv5YB5VbAd+AvjCg6MvZv7JkFG2XltcLzEv26dUQAAIQoqm9UVLctVDgSh75M
         8SMZz9CAC0FDYSYHH4cKyrQmUNDAT0jKt5otekwH6yEsdTEB07hEkz/4pIZ98FnGQe/Y
         kXj+yr2X4FV6KblQsdCqam5ZTlWcXQJEuCOhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Rz76jVfD0D1CqIkgyfPk9Gvt4Xf6gx3/VGo7Eo9hx6Y=;
        b=BDWQccMpJLQYNZngxplG6AvSeQQoQ3R3mSEW839v7KkEsLEzWWKeKSjU3u7o0WoQek
         yeYm+jvGgGjFJhDzHKJ7lib2mKn6tRfEahk7egH9TZRaUWcvo4V1hS8Nt+yQbl6wUs8y
         bfp1qbMPcm+xnUrWUpbPpYkNC3mVzcFrBfCscwoaFP5tG8XYnVsKBejo3yKtYkc7B3hf
         3+5IB05pP/QvPYWHM+ylq3ngEwFKV+icUMo2CuG7YXVvkGVMNnHL9rvBPlfrq6fFVJP3
         Rah3rjceKRN0GX4VE0jE5l7dGgv2kwVSHMgF5IN8Iv33rWvQonbQnb58MypmTy60efSr
         tApg==
X-Gm-Message-State: AOAM533Cz+fPCvgKMhFP1AAwyzD4edDu9Eq38svYrHO+v8z4aHJ4IQsv
	rFM6nuRuQUz3d/DfS3E1piBDcw==
X-Google-Smtp-Source: ABdhPJzR4GKDU9v1G3By5wucMtjXILyv/Kr0VHTsEsCqlPiBGvz61Y5DSenIFc1HUwWcYDaNqjDnCw==
X-Received: by 2002:adf:e7c8:: with SMTP id e8mr7718697wrn.358.1600808310960;
        Tue, 22 Sep 2020 13:58:30 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 3.5.b.6.d.4.1.e.4.a.2.6.1.0.d.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (3.5.b.6.d.4.1.e.4.a.2.6.1.0.d.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:4d01:62a4:e14d:6b53])
        by smtp.gmail.com with ESMTPSA id z9sm6195424wmg.46.2020.09.22.13.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 13:58:30 -0700 (PDT)
Message-ID: <60fadfd2c9b5a1383a8069a11a17fba85c88cf06.camel@linuxfoundation.org>
Subject: Re: [yocto] How to *properly* use SSTATE_DUPWHITELIST?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
Date: Tue, 22 Sep 2020 21:58:26 +0100
In-Reply-To: <20200922164031.Horde.Xm9jz1YbQL8KIUMp209SDPn@crashcourse.ca>
References: <20200922164031.Horde.Xm9jz1YbQL8KIUMp209SDPn@crashcourse.ca>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-09-22 at 16:40 -0400, Robert P. J. Day wrote:
> Quoting "Robert P. J. Day" <rpjday@crashcourse.ca>:
> 
> > Never had cause to dig into SSTATE_DUPWHITELIST until now,
> > so a couple questions. (Side Note: This variable is not listed
> > in the YP Reference Manual variable glossary -- should it be?)
> > 
> > Ran across this as current project incorporates recipes
> > grpc-python and python-grpcio, which is problematic as the
> > latter is simply the renamed version of the former so, yeah,
> > that's definitely going to generate a ton of file install
> > conflicts.
> > 
> > The solution selected (and, yes, I know this is tacky and
> > gross and this should be fixed the right way) was to add
> > the line:
> > 
> > SSTATE_DUPWHITELIST = "/"
> > 
> > to python-grpcio.inc, which *seemed* to fix the problem,
> > until I started playing this morning to clarify what different
> > variations of this solution would do.
> > 
> > First oddity was that, after I added or deleted that line,
> > it seemed it made no difference in the rebuild of the
> > incorporating image, until I noticed this in
> > sstate.bbclass:
> > 
> > sstate_install[vardepsexclude] += "SSTATE_DUPWHITELIST ..."
> > 
> > which suggests that the sstate doesn't check dependency
> > based on SSTATE_DUPWHITELIST, so to get the change to kick in,
> > I did a "bitbake -c cleanall ..." on those recipes first,
> > and that seemed to do it.
> > 
> > But even that showed some weirdly non-deterministic behaviour,
> > as there seemed to be a difference based on which recipe I
> > added that line to, and which recipe I cleaned. So the
> > obvious question is, if I have two recipes that clash in
> > terms of installed files like these two, does one add that
> > line to either or both of the recipes? What does it mean to
> > add it to only one, and if that happens (as it did here),
> > how does that affect the eventual install? Does ordering then
> > matter?
> > 
> > In a general case, if I have, say, 5 recipes all of which
> > clash in the same place, do I add that line to all 5 recipes?
> > And if I don't, do I get undefined behaviour?
> 
>    Oh, wait, I think I misunderstood this variable entirely --
> it's not a per-recipe variable, is it? Its value represents the
> combination over all recipes in the image, is that right? So
> by adding the line:
> 
> SSTATE_DUPWHITELIST = "/"
> 
> I've effectively de-activated file conflict errors across the
> entire rootfs and all recipes in the image, do I have that right?

You are totally misunderstanding what this variable does. It has
nothing to do with images or rootfs. Its also definitely not per
recipe.

sstate has an overall view of any output 'deployed' in TMPDIR. For
example the sstate of the do_package_write_ipk tasks deploys the ipks
into DEPLOY_DIR_IPK. 

In a perfect world, no sstate should overwrite the sstate of anything
else.

In reality there are some corner cases where one set of sstate output
may overwrite another set. An example would be the sdk-provides-dummy-
target ipk/rpm files when multilib is enabled.

This variable controls whether these overlapping sstate files should be
allowed or whether they should be errors.

Documenting it is a low priority as either you understand the sstate
code internals and know how to use it or you probably shouldn't be
changing it.

Cheers,

Richard







