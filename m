Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web12.45111.1593983683759808552
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 14:14:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QqbbBKH7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id q15so37123648wmj.2
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 14:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=wew2Z42/4PJeQXXdzUGeahU+EBm9oQh1fpUAMiC7Jmw=;
        b=QqbbBKH7WkWlPalHu5JpHeomT/Oa71yEVf+Sj77sC17HuknLJ58JFqBnvbjQv/VMfO
         lPHi0kOC52gIE0BxkfnKdTlazFOsyKQjpjFW0icmI05+MnPat6Svrv66h6N93x0auF1c
         NpVfld2nltuKs8YUHPVtdm15oOnlmI9Q1v3M0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=wew2Z42/4PJeQXXdzUGeahU+EBm9oQh1fpUAMiC7Jmw=;
        b=Rx2eUKI/kIz8ukTe6yn5haTUEVoTYUQM1TfBXRO/g/JUpcZco48Ugz2S/48V37qnCM
         W66C7MmF5j9vUPLH3sDdPfhW6g+tzwvdgEMcbe+o8YFAbrdzZVIUO7ANkr2cSUAcMW4D
         hnasL4j4Bo0LxEYyiBe6Du1BPbPY8rU/2BskBvMnxY+MC4xLzf11orvuICbnRaVCyJOe
         ixVNCsYJJ3O/DjE6+Jb2BaS3Wcc5K+0K/yqh0d1eAtLXgfK6Rfm+OqRDccVz1NhPsYgC
         yqd648BtVquYgL5bYkkIepcaNzifhCW7+eRcNKkMkhqNDe5RD3j3j7/X84J0eNzmKqfF
         bKvA==
X-Gm-Message-State: AOAM531ZwRClOYgyDYUmeOHfrdgQ1aXfVRtKmRyVQa8PeYEtY3MZ4ezn
	MQtBYjheGttU+VAUTniZLCLowA==
X-Google-Smtp-Source: ABdhPJxBFjsXNP7Q03peaqbFuZRiXEpLj/ZjIjyt9DBj+Vh/FYtrEjEd9weoKOVtLbv6HQeCR+47cA==
X-Received: by 2002:a1c:5581:: with SMTP id j123mr16364706wmb.75.1593983682178;
        Sun, 05 Jul 2020 14:14:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id a22sm20709720wmj.9.2020.07.05.14.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 14:14:41 -0700 (PDT)
Message-ID: <13669db91c4314f433e43a0ad7f7c4ba912c95db.camel@linuxfoundation.org>
Subject: Re: [yocto] how does "bitbake meta-toolchain" map to a particular "image" when generating SDK?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
Date: Sun, 05 Jul 2020 22:14:40 +0100
In-Reply-To: <20200705152404.Horde.B3EKfbXBj697OSUtR4mf4S6@crashcourse.ca>
References: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
	 <CAAnfSTu2mMMifGdTc0OtGfN8wXNQKddnZ9udTY0gbV0fQAvRRw@mail.gmail.com>
	 <20200705152404.Horde.B3EKfbXBj697OSUtR4mf4S6@crashcourse.ca>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-07-05 at 15:24 -0400, Robert P. J. Day wrote:
> Quoting Ross Burton <ross@burtonini.com>:
> 
> > On Sun, 5 Jul 2020 at 11:50, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > >    however, one can also generate a standard SDK with the generic
> > > (image-independent):
> > > 
> > >    $ bitbake meta-toolchain
> > > 
> > > which clearly does not identify an image (all that recipe does,
> > > really, is "inherit populate_sdk"), so i *guessed* that using that
> > > command will generate a standard SDK based only on what can be found
> > > in the various .conf files and associated variables (MACHINE, DISTRO,
> > > etc.) without being tied to a particular image.
> > > 
> > >    just about to dive into the details, but is the above at least a
> > > simplistic way of looking at it?
> > 
> > At the most fundamental level, you've asked bitbake to build
> > 'meta-toolchain'.  Looking in meta-toolchain.bb will show you what
> > that entails.  It's basically just the compilers and a few other tools
> > that were added as needed over the years.
> 
>    i'd assumed as much, but is there a reason that the meta-toolchain target
> is not mentioned at all in the SDK manual? Would that not be the right
> place to mention it, even briefly?

meta-toolchain is really old, from the days before the populate_sdk
task for images existed. It was created as a compatibility artefact and
as an example to show you could do standalone SDKs like that without
images.

I'd imagine its not mentioned as we envisaged the populate_sdk tasks
taking over from meta-toolchain. I'm not even sure we test meta-
toolchain on the autobuilder. It probably continues to work as its so
similar to buildtools-tarball and friends.

Should it be mentioned? Maybe...

Cheers,

Richard

