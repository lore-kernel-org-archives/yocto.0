Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.2338.1579708223234049871
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 07:50:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UWy4pQeT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 20so7687227wmj.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2020 07:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=BebHQ00rkBi2Rp/1sw8tgWlsqwAPkNcfXkJCgW1kt4M=;
        b=UWy4pQeTVLFchmAcUQYjC/vEyAdsK/5JP7Wk+iQmOmz69bt7Kc/pgg8Qk53xVG6065
         wifUdCP6zAdt+I4hWIPA6hv0NmCrpkWXKNv+l0KcWHz/qE/mRjehuoNnpNgjt3rqg4sL
         cFOUOsGpf/kf9c87secdW5W+CWkdf0NhM6TPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=BebHQ00rkBi2Rp/1sw8tgWlsqwAPkNcfXkJCgW1kt4M=;
        b=HItPUzxQEynyGRvjMBRMdngloPvXfFoyCIabUILF9L4DnhVr6D3JjZJrlyhNFfgx3U
         PXU7m1IbxTf+MmJRJSs0IE84nBwlRl2h+eXJWp6d3O1pEn4HprigZJR3fgNkzY1S3VGi
         b5hZ+s9gIv0CSYcoiWImuZXlpKvLx9vbqyEHug9gpvn+kX3dY4G1hyFW2BSskwDuFeTz
         I8XTZmmQNM2qC18UcDLh9pAUSg9+RWFXHS+gDeOKTpNHlD4VOSuv8yWgpeDjit98sN6n
         xaJe+3Xsej32s99l2Rl5s0jg6/U6sIMKl/war16izraEcrTnlnJc3f3IxaMiZX3nJYGJ
         t7GQ==
X-Gm-Message-State: APjAAAVWDr6GcUBuSRYvGLwurv0ZamjS5mD70vKA7wK+t4xjFFuvY7KK
	3DuZD9dbrlFPXqfSWYh55234Nw==
X-Google-Smtp-Source: APXvYqzRWe5NZfBcVj1RNbowynLzhFEaoSEquMCDOdTA3sPQfU0VWIIQ3Tcsp6M/nr5xFBCNaPseSg==
X-Received: by 2002:a1c:541b:: with SMTP id i27mr3887575wmb.137.1579708221755;
        Wed, 22 Jan 2020 07:50:21 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id s65sm4650821wmf.48.2020.01.22.07.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 07:50:21 -0800 (PST)
Message-ID: <4fce81ff69a5610957d83aad2ef45a41338ac362.camel@linuxfoundation.org>
Subject: Re: [yocto] using d.expand() in a python function
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 22 Jan 2020 15:50:19 +0000
In-Reply-To: <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
	 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
	 <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-22 at 15:46 +0000, Rasmus Villemoes wrote:
> On 22/01/2020 15.35, Richard Purdie wrote:
> > Bitbake can only detect direct references to variables. The code
> > above only runs at configure time, not at parse time so its not
> > really surprising that bitbake can't know what its doing.
> 
> Well, I thought that as well at first. But there must be something
> done at run-time to feed back the variable dependencies, because if I
> add a completely dumb
> 
> python do_configure() {
>     import fileinput
> +    d.getVar("VARIABLE") # silly
>     with open("foo.txt", "w") as out:
>         for line in
> fileinput.input(files=d.getVar("FOO_INPUT").split()):
>             line = d.expand(line)
>             out.write(line)
> }
> 
> build the recipe (because now it has of course changed), and then
> change VARIABLE, the recipe does get re-built. Or does bitbake
> specifically look for d.getVar(<literal>) when it parses a python
> function?

Bitbake has ASTs for all its python fragments and can search those for
getVar() calls. It will spot getVar("X") but can't know what is in
d.expand(line).

> > You'd need to read the data from this file at parse time for
> > bitbake to
> > stand some chance of seeing it, or manually set the variables it
> > depends upon using the vardeps flag.
> > 
> > Something like:
> > 
> > do_configure[vardeps] = "${@my_depends_function(d)}"
> > 
> > where my_depends_function would return a list of variables it
> > references.
> > 
> > Reading files like that at parse time doesn't work out well for
> > performance.
> 
> Yeah, so I'd very much like to avoid that, and the above observation
> suggests that I might be able to do the expansion manually, just
> looking for the \$\{...\} regexp and calling getVar to find the
> replacement. But that seems like something that should be solved
> already.

Well, if you have the expansion, just put it in a variable the function
references...

Cheers,

Richard

