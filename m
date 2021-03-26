Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10756.1616755905307026636
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 03:51:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=aHBhP/j9;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 760D638C06E6
	for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 10:51:44 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id j7so5216830wrd.1
        for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 03:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=LllIybnV8anBhH1MwTz14uQpsIyMSoKzQCoSua+CBdE=;
        b=aHBhP/j9lD9y5OB8vfXPu9MfS5mVjQRaJlf2Gkfw6v8ELTb1axe1z+C729bC+EoFxi
         Js/mfk46QIweBekFqVm4CWQuOlBVPRj8/wGs1JjFREw6Y/LSbuSf/aYC+MciLclPMoxn
         eQjzlJZswYVu37B5j+ke37hQrVC4h/Qo0JEEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=LllIybnV8anBhH1MwTz14uQpsIyMSoKzQCoSua+CBdE=;
        b=pb4yNZFnEj+lt9Ym3z1wy+V9aOz1n6+vRQVJLmIq7niOFgiN9ZdRBY/JKK5ZPhZ5Tc
         Ze+LFEePzO/gAaqcL6wodaUl15P0s/bBIFvKvJOruhXCg5GXoeq390zZZliyw27Du3+F
         0S8ggOC/O4yFBz0zLuozBsqIDo/0HD7aEeR4JthTGF2qmauxOrn1rHkdd0OVxvbwCUar
         eZE6RsJex+Iag6TOqdSs81gmmGKb8bcDps8Cii63AVhTAZEgrV63lhINxAXFmZT0M4u7
         lnVkiFPKiV94LE5vKSeqOOKiOBB8ykUwEYFMik9RWMy7zji1rVWm/kwUQUmNv78gqv2c
         rLaQ==
X-Gm-Message-State: AOAM53032a5jPH8DKxoQVElvrtScoafGXenbL79MIuUAl3payRdsbLvA
	iNgiUZEHq8lya/gYNQ9mcBes5W8Sd2iyNg==
X-Google-Smtp-Source: ABdhPJzMc1C5yrIJ8cO6559H050cbAYhL02fLPQCjp7NAUNXXkGgaGJhhGGENA1QthD6uE9Ns0tz5A==
X-Received: by 2002:a5d:63d2:: with SMTP id c18mr13678562wrw.277.1616755903109;
        Fri, 26 Mar 2021 03:51:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2f59:1239:417b:1a83? ([2001:8b0:aba:5f3c:2f59:1239:417b:1a83])
        by smtp.gmail.com with ESMTPSA id u17sm9728687wmq.3.2021.03.26.03.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 03:51:42 -0700 (PDT)
Message-ID: <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org>
Subject: Re: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Milan Shah <mshah@mvista.com>, yocto@yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>, Armin Kuster <akuster@mvista.com>
Date: Fri, 26 Mar 2021 10:51:41 +0000
In-Reply-To: <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
	 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
	 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
	 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
	 <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
	 <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2021-03-26 at 16:04 +0530, Milan Shah wrote:
> It seems like patches sent for error-report-web are not much important =
to the community as this patch has
> not been reviewed/commented on by anyone since 6th January 2021 (more t=
han 2.5 months).
>=20
> Still, I'm sending a reminder one last time for [YOCTO #9700].
> https://lists.yoctoproject.org/g/yocto/message/51891
>=20
> Please review/comment on it so that things can move further.

Sorry, that isn't true, they are important and appreciated. We're=C2=A0
just struggling to handle everything.

The challenge/problem has been that there are much older patches which
were half merged and broke things. People have rightly been complaining
about those issues and Khem for example has been carrying a patch for 3
years to work arond that problem. I did figure out a fix for that which
has now been merged.

We also needed to migrate the service from py2 to py3 and deal with a
set of patches that had been applied locally that we had been unaware of
until very recently but which complicate things. The people who wrote=C2=A0
them are no longer around to help with that.

The original authors of this code are no longer around, the people who
stepped up to try and help also haven't had time so the support/review
has struggled. The service is in daily use however so it is important
and that is why I'm now trying to unravel and fix things.

I do want to get to your patch but you can appreciate that adding it=20
directly on top of an already failing set of changes wouldn't be good
for anyone.

We are making progress in resolving the issues so I hope to get some
kind of better answer to you soon.

Cheers,

Richard


