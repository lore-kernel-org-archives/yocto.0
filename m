Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web11.2849.1577483558539128939
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 13:52:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y1Tb7VZr;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id t12so17607031vso.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 13:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=e/SJP9/iPeRIpxvWTVDv7Jbkl8HL5F21yTtzoajbG74=;
        b=Y1Tb7VZrKXJeSfMb/WAqUBy33gxUVeoonYPbLl4KPU1QEkst1tcW/hTsyfmw4fU6JA
         IAVzg1B5tabsVGPKh5Qs88o8cIt2CRd/8tNCgVMwvJbVm7vHujsx380EU8WS/ApbsDWl
         yn7vZthwzENT4Wl8mA9PZAOED7wAfObRE82I9mVq9qn+/+lV/IfRsP+XO6iOV7p3xgap
         LQ/46ZzbDFtx/g8sWD+JKAKVkfCEDSEunKSlu+ix1p7nCeb+Wvgm81e0Trr2RKWbc7wD
         iv8bAM+CmTPMlgKpT26wsBUHdSqDeCy098rmrybgI3uigXj1GR+HgZYMXVDWoqh5TVjW
         eSHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=e/SJP9/iPeRIpxvWTVDv7Jbkl8HL5F21yTtzoajbG74=;
        b=YFMOHDugCpk+1IVQmLCSefSHFvzTtydZxrxZaXaV8qJQ+KuPX27emAMJhidDEQ3lTe
         jxhDKKYXmnAeihE2fuNQAmK0vJcrVve+/rWU8ZCduJSKv8qNL1h4s2C94pm3FGJhdAqv
         ol20ThZJWY6mc7CHyJo1JpLqG+4RYPxVJCMKl6XTuZ6UwF9Uu2foN+T7wGUls8PslZYw
         u53UwKFMLlpTZOApVUUbKxg0vFwGCVt8ZjTp5tDoXDIvNSY9YM09+ZbVmQmWcyCjI0LM
         GzwhABQes24AfnOLuixEKx1pR+EVhFRdjz5oifQ9qxJnDzLW7AZmaFmhbByhFEr2+K5O
         mF7w==
X-Gm-Message-State: APjAAAWTlmgpdmH6cS/6U27KXuZP4F7bserjn4UAWGvDEzINPGj+CJKZ
	urHXbRAmu1dQnh3eLbhWV2cRbDiNBJEay5/9JARgEQ==
X-Google-Smtp-Source: APXvYqw6xkCGrqOCEEdaWhI2sU3ofsg6M+Pm1vl7O9plL2uFBqCUbLqveE9kcfBCc0QA10KuKOxtdn0i8Z1mWiwnjdk=
X-Received: by 2002:a67:f641:: with SMTP id u1mr28767722vso.86.1577483557259;
 Fri, 27 Dec 2019 13:52:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Fri, 27 Dec 2019 13:52:36
 -0800 (PST)
In-Reply-To: <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain>
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
 <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Fri, 27 Dec 2019 16:52:36 -0500
Message-ID: <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 12/27/19, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de> wrote:
> Hello Kent!

thanks for the followup!

> "close" is really somewhat relative here. The words that trigger my
> alarm here are "mission critical" and "aerospace". Anything that I will
> write below is no legal advice, and not fit for any form of
> certification or audit. If these are your requirements, then there are
> companies in the Yocto ecosystem that are willing to offer their
> services.

yeah...no legal advice is expected online...just a forum to vent in, sometimes.



> BSPs are a constant cause of pain for us giving Yocto support too. If
> a board vendor screws up, we get to pick up the pieces too many times.

Yup...been there, done that.



> Little to add, besides... that it might have been a bad choice or
> negotiation, if you're only now learning that they want to charge you
> additionally. Thats something we obviously can't help you with.

Yes, very bad choice in a field with no notably good choices.

> If they are not willing to hand out all sources plus metadata layers,
> then thats a total red flag. Yet again, not something we could change.

OK, to be clear, I have access to meta-layers, but a large percentage
of the BB files point to private git repos, and they don't volunteer
the gitshallow  for a repo unless I know enough to specifically ask
them for that repo, and assuming it's not something they are claiming
is IP.


> Sorry, I mean... didn't you request at least some form of eval kit? Demo
> boards? To actually understand what you are buying?

bad decisions were made before I came on-board, and I did ask them for
access to the SDK before we took dilivery of hardware, and they balked
at that idea...which justifiably left me with an uneasy feeling.  Of
course I would have denied delivery if I had seen the state of their
reference SDK beforehand.


> Up to this point, yes, I can feel your frustration, but there's little
> to say other than that you probably have a bad partnership by now.

Oh yeah, I think we're about to head into the "grudgingly conformant"
phase of the relationship.


> The cleanest without throwing away the whole build that you can do is
> remove everything in the build directory besides "conf". Yet there are
> probably two sides to your actual question. a "bitbake -c clean
> $YOURRECIPE" is the perfect equivalent to make clean, "bitbake
> $YOURRECIPE" equivalates to "make". Wiping tmp and sstate cache is
> pretty close to a full clean rebuild of the whole system, and no, it
> shall not break. If it does, there is either something wrong with your
> build setup (can happen) or you hit a bug (happens less often, but
> happens too). The second side is actually running a full system rebuild,
> which includes the complete build setup. Actually there is no
> Yocto-inhernt way to do it, as different people have different needs -
> and nobody managed a one size fits all solution until now. You can look
> at the autobuilder as provided by the Yocto Project, and at the various
> approaches here [1];

I empty the conf/ sstate_cache/ and tmp/ directories and try to do a
devtool build-image, but failures ensue based on it trying to load
from private git repos, and some jibberish about locked signatures not
matching.  I just need to know that I'm reverting to a source level
build "the right way".


>> 2) related to above, yocto needs a much better description of the
>> expected directory tree within a project.
>
> Within a project? Could you please elaborate?

They provided and "ark" embedded SDK, that was presumably generated
from yocto.  I'm not differentiating between projects because there is
only one, so I'm mean within the SDK directory tree.


> bitbake and devtool can and should be used side by side. Running bitbake
> manually, as you put it, is the definitively primary way of doing
> things. So if that eeks out for, there is probably something strange
> with your setup. If you can provide a more extensive log or error
> message, we will happily...erm, at least honestly try to help.

Thanks.  bitbake fails when run manually, telling me that there is a
"." or null path element when I know for a fact that there is not one.
Apparently when devtool calls bitbake it sets up the path correctly,
but when it is called manually (it's not in the shell path), it
doesn't like the PATH var.  There are some online references to this
problem but no authoritative solution or description of why.



>> 5) a big area that seems to be lacking is the ability to inquire in a
>> yocto build as to what is included in it.  This is especially
>> important if the responsible party didn't actually create the build,
>> as is our case.  We're left with trying to guess what the OEM did, and
>> why.
>
> Now this is certainly not true. Even in the utmost default setup, a
> manifest file will be created along the image which tells you which
> packages including version and license that went into it.

A manifest shows packages, not layers/recipes/packages, nor a
breakdown of what is included as a consequence of what layers or
recipes it exists in.  This makes trying to modify a build that
someone else has created, more difficult.


> bitbake -g $TARGETOFYOURCHOICE will give you a dot file to inspect the
> complete dependency graph of your chosen target. This is a bit too much
> in-depth at times, but extremely powerful.

TARGETOFYOURCHOICE?  What is the glue between "target-name" and
available meta-layers and recipes?


> And last but not least, its a good practise to have buildhistory enabled
> [2]. This offers extremely detailed information about each and every
> package and dependency that went into your build, down to each single
> file, package size,...

Agreed.  I think their SDK has it enabled by default but I need to check.



> Including pre-produced blobs in a Yocto build is not pretty, but often
> handy or impossible to avoid. Please see [3] for the documentation on
> it.

Well, unless they give us git access I don't see any way around it.


> In a nutshell: whenever somebody hands you a binary build, without the
> corresponding set of sources and metadata, then you are out of luck and
> in for a lot of pain. That exactly the way of how to NOT use yocto when
> selling hardware. Some do, and unfortunately we, as the Yocto community
> can't do much about it, other than try and help the folks who struggle
> with it. And go buy our hardware in another place.

I wish I did have options, but if you know business, they are all
about free, as long as it doesn't pose any encumberance on them.  I
need to see just how far the OEM is will to go, and if not far enough,
then I've to evaluate other options.


> With that, I hope I could give a somewhat helpful but certainly
> honest answer.


Gracias, Amigo!
