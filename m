Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web12.1169.1579703736670400302
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 06:35:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GFxe5aJ6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id b19so7043345wmj.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2020 06:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=/HB9MJK/Af85HnQBCMxYNp26kXj1LLyN6lrfV4HdELQ=;
        b=GFxe5aJ6xi5+j5uPRhfLg5fYBKS2RCe5Rrjq2dgcCCk8JtYHkfaa5wQR3OrZDZQuz1
         u1jP5kvfnlZ+w2Cdx2fqP8tNzofB3h4wR/c9ykVx/mvNFiwGoqnZ2dbuGGSp6tB45yFM
         7MlAAxsqE0U9sV/oZ76b6TuB71+UZIi4SehMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=/HB9MJK/Af85HnQBCMxYNp26kXj1LLyN6lrfV4HdELQ=;
        b=bvfDyueU+UEnnrF0ubK+/xZ3eSpK2cjeIttP1SA3/feWg7yjkwTfrT9gR0KkXqfwdP
         1l6bjeE1SkquVaQcoTVgQKF92lmYRzgV66Pn0MTgdZHaYmZ6xAzTBXHit2esqOW7WzSS
         lX3vi5XUeR7dMxIRi6IF+LMSURdKzlzcfBdsqKP7x1AU3TVy8nhtUwnMNk3fwoagXeGd
         dugTJWXSTcmLyi8ZiiG/KCZWOVSsl/R50bhbQ/sIYcQmworDPJoTckl4pbDLWkVpAS0f
         v/Tvo7NYM4yO18y7UIc2LlMqxakGm8DCTVljEgZDEcVUTTbvyPhXB1hy6r+yPqhMG/z1
         1vSw==
X-Gm-Message-State: APjAAAWh7QOsEyhl6XFKfV1LbbACWtJ3hdOf+vRv2c3wBOeSHEq0pAcd
	ljY9lAD2P4eKv2yx5P5Cqc7Skw==
X-Google-Smtp-Source: APXvYqyVQf+bDns5cwsk/gAYRc5iCodOPAP1YVcEAQw60pILqOH028ZIoFo4r/+gi3AVJLNC/inEiw==
X-Received: by 2002:a05:600c:23c9:: with SMTP id p9mr3369755wmb.160.1579703735222;
        Wed, 22 Jan 2020 06:35:35 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id i16sm4478998wmb.36.2020.01.22.06.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 06:35:34 -0800 (PST)
Message-ID: <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
Subject: Re: [yocto] using d.expand() in a python function
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 22 Jan 2020 14:35:33 +0000
In-Reply-To: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-22 at 13:55 +0000, Rasmus Villemoes wrote:
> I have a do_configure() python function which is essentially
> 
> python do_configure() {
>     import fileinput
>     with open("foo.txt", "w") as out:
>         for line in
> fileinput.input(files=d.getVar("FOO_INPUT").split()):
>             line = d.expand(line)
>             out.write(line)
> }
> 
> So some of those input files can contain ${VARIABLE} and it gets
> replaced appropriately. But to my surprise, when I then change
> VARIABLE,
> the recipe doesn't get rebuilt, so it seems that bitbake doesn't
> automatically realize that the recipe (or task) depends on VARIABLE.
> 
> So digging a bit into the code, it seems that d.expand() calls
> expandWithRefs(), which returns a VariableParse object, but then only
> uses the .value property, throwing away .references. So I assume that
> what I really should be doing is call expandWithRefs and then somehow
> manually pass .references to... something? Or, there must be some
> other
> bitbake interface for doing this properly?

Bitbake can only detect direct references to variables. The code above
only runs at configure time, not at parse time so its not really
surprising that bitbake can't know what its doing.

You'd need to read the data from this file at parse time for bitbake to
stand some chance of seeing it, or manually set the variables it
depends upon using the vardeps flag.

Something like:

do_configure[vardeps] = "${@my_depends_function(d)}"

where my_depends_function would return a list of variables it
references.

Reading files like that at parse time doesn't work out well for
performance.

Cheers,

Richard

