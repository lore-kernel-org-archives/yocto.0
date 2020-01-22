Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.3491.1579712398253144150
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 08:59:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I1R8pR/8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id b6so8145563wrq.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2020 08:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=trOcUp4xWAiwAyoXqv08GRUzJ9/9WTz9bXh/pTHIlas=;
        b=I1R8pR/8XvkNLu1u6YtG1ZCg2AOtfgTDGXo114q1WlaPVYUtkPMZOnd0oqT0NAzCIe
         CnogcZLDCbeoEWkrSXDJc+gLK2/ArrzZ1qXTxtva1Ba3R2g5Xm9kEuAtEDyMt+q5rXEe
         V0oyIzqulbE9xZvR2pWEIukThI69rrGGReD1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=trOcUp4xWAiwAyoXqv08GRUzJ9/9WTz9bXh/pTHIlas=;
        b=XcZmeJjVO1ohqRYgT9AuJNaB0eSH4l6o1rh9CnuGt8qQZcz4kazLT+rsGYeW9oaYL/
         qSwm0BtoT77LEyaLwwxBKxq89qeR3zOn/+AL5H0XTt82tWeBdZmQylEpprfKaXuG1nDj
         NaxSdMhc04DPK1/2+faBOt6spRkChB8ceaWqaJVT0ikBt02ffZUE/jizFhmd/Vsw8XiN
         Oe+iE+eiE9Uo3YeU8NfWfkkRFy5bqcdlCjcZFgqedwgke28Dr1q/KsLGQzgNfgd39bcQ
         oSiSO6WSifJryWLHCT+28PYpNQVjGGiTvGmd0VVUU2Hwe0K7UmfnNOJEaSMQrDhprNx7
         vrFA==
X-Gm-Message-State: APjAAAUIvLoxPr3HlL0dV+Ba161TBSSf35bMN9Im955nyW3ZeiERtxlF
	fysYiSoDcSqNUtalJNh/JNzPyA==
X-Google-Smtp-Source: APXvYqzTcdlqQvVRrJsf93LDqUoYUbP4MKNTrcUUAR0WzJF93SXTKiWBSwWkQecwAtghjeVcRbLYKw==
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr12814485wru.40.1579712396772;
        Wed, 22 Jan 2020 08:59:56 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t8sm58124053wrp.69.2020.01.22.08.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 08:59:56 -0800 (PST)
Message-ID: <231a141301f7464313c22d9a4a928597c930c8df.camel@linuxfoundation.org>
Subject: Re: [yocto] using d.expand() in a python function
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 22 Jan 2020 16:59:54 +0000
In-Reply-To: <fbddc4d3-e0de-395b-b32a-0374f3eeab39@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
	 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
	 <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
	 <4fce81ff69a5610957d83aad2ef45a41338ac362.camel@linuxfoundation.org>
	 <fbddc4d3-e0de-395b-b32a-0374f3eeab39@prevas.dk>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-22 at 16:39 +0000, Rasmus Villemoes wrote:
> On 22/01/2020 16.50, Richard Purdie wrote:
> > On Wed, 2020-01-22 at 15:46 +0000, Rasmus Villemoes wrote:
> > > On 22/01/2020 15.35, Richard Purdie wrote:
> > > > Bitbake can only detect direct references to variables. The
> > > > code
> > > > above only runs at configure time, not at parse time so its not
> > > > really surprising that bitbake can't know what its doing.
> > > 
> > > Well, I thought that as well at first. But there must be
> > > something
> > > done at run-time to feed back the variable dependencies, because
> > > if I
> > > add a completely dumb
> > > 
> > > python do_configure() {
> > >     import fileinput
> > > +    d.getVar("VARIABLE") # silly
> > >     with open("foo.txt", "w") as out:
> > >         for line in
> > > fileinput.input(files=d.getVar("FOO_INPUT").split()):
> > >             line = d.expand(line)
> > >             out.write(line)
> > > }
> > > 
> > > build the recipe (because now it has of course changed), and then
> > > change VARIABLE, the recipe does get re-built. Or does bitbake
> > > specifically look for d.getVar(<literal>) when it parses a python
> > > function?
> > 
> > Bitbake has ASTs for all its python fragments and can search those
> > for
> > getVar() calls. It will spot getVar("X") but can't know what is in
> > d.expand(line).
> 
> Yeah, I just tried changing it to
> 
>   v1 = "VAR"
>   v2 = "IABLE"
>   d.getVar(v1 + v2)
> 
> and bitbake no longer knew about the dependency on VARIABLE :(
> 
> I can't be the first one to want to substitute bitbake variables in
> various source files, without necessarily knowing upfront which
> variables might appear.
> 
> So thinking out loud (and apologies if this is very silly): Would it
> be
> possible to implement some auto-deps class that a recipe playing the
> above game could inherit. Something like
> 
> AUTO_DEPS_TASKS = "configure"
> python() {
>   for t in AUTO_DEPS_TASKS:
>     f = (tmpdir/cachedir/somewhere)/autodeps/pn/t.inc
>     if f does not exist:
>        make sure the recipe gets rebuilt
>        return
>     include f
> }
> 
> python write_autodeps(d, t):
>   logic to write a "do_t[vardeps] += ..." line to f, called at the
> end
> of t (preferably automatically, but manually if need be)
> 
> python expand_autodeps(d, s):
>   helper to be used within an autodeps task, recording any variable
> used
> in the expansion of s

Why not do what I already suggested?

I suspect rather than a class you're looking for a helper function in
lib/oe to call into? Just move my suggested function somewhere there?

Cheers,

Richard



