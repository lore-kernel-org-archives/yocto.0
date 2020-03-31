Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.39.1585695201574559676
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 15:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=ykQZl9e9;
 spf=pass (domain: burtonini.com, ip: 209.85.167.50, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f50.google.com with SMTP id q5so18747102lfb.13
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2020 15:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/xbwyy0rBwAU8tYfcq/Ua0RBTQEqRd60PNwZisD7jMk=;
        b=ykQZl9e9XfiooQ+syR48o+68iPSAUuLB83O8Rfc/vIfr5/S6J/9VWcTVyhAVwSvygh
         cqJU9TYfmKSqyPR1FGlluyvKbq4gk9cTRgIA/R4qCAk49MTx4EnY9+m/DTFfSw4+KLgi
         udU75CyMupHIEYjweiNRL7ZW4F8lJ3To/w6RrU3SCqdGEfZXf/qA3W8w4t5ewkgXX3+U
         yPBAnKyH+d7gC1UgHzUSgJC82BkMMGp7n9e5BHz0hbfIeSbJWLKPmxA4OviUITJEg8vO
         kjvwCO4enAwrecOt13umuBynXzT3bbEX4G1LkYXXKHVfq5YD0D6oUJZhTRK3wWwj7rBj
         db8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/xbwyy0rBwAU8tYfcq/Ua0RBTQEqRd60PNwZisD7jMk=;
        b=rbL0fttSOfUGdeRWOx9RrSM64AeyOeXMAWkBjxl7cu4L87VKHv6SbFlPil2aV3A5fu
         vJYGEdI8CqQh7fyfZ/3peLLeBjTw08jWqitcH9VnOZGSKO31Ippqcx7PMNjTuZWTLyVE
         hqeX4z2dRaeph/38wo16s/dJGWxNSk9yxX8ET2frCSXIVC4SqPOdffhouNWf5WVmR22R
         LkmD+eqEzVE2n0GjDo9dagdwuM02N+LYgW60xWVRBAc6b409XW/u+YJ+zvXFL4umyJcy
         rXXZLhDkNndbEzEFPSRS+6GMLnCjwbzgT27PSt41gTx/5qAVJ6p4C/b0y5AmqM41gF/k
         gBJg==
X-Gm-Message-State: AGi0PuYzMurug1QIzU/5zlOeXjHIIPXtvJafr+qXF8vHj0cVoaaux/k0
	KPJECtx97y2gHaRPvlpFBog3hwqaASx2ELDLnIxYoQ==
X-Google-Smtp-Source: APiQypKeNjrnwljS1O7nFF+40403jsw6lm+GuFFFqU4B8T+XAXbjCwpr7CufXwNsYH4pxhqBmvoRRiwSSSWg3TOPrlQ=
X-Received: by 2002:a19:c005:: with SMTP id q5mr12450771lff.216.1585695199776;
 Tue, 31 Mar 2020 15:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <76CA873A-5C59-4578-BCFB-61E21B116DE2@gmail.com>
In-Reply-To: <76CA873A-5C59-4578-BCFB-61E21B116DE2@gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 31 Mar 2020 23:53:08 +0100
Message-ID: <CAAnfSTvNUbUeuoZe7OB2FEUxcwqHDm44z40CY6P_JWC26qpSqQ@mail.gmail.com>
Subject: Re: [yocto] boost monthly download limits
To: Andrew Geissler <geissonator@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 31 Mar 2020 at 20:07, Andrew Geissler <geissonator@gmail.com> wrote:
> Given the download limitations of dl.bintray.com, does it make sense to try
> and move back to sourceforge? Someone also had recommended we just grab
> from github (i.e. https://github.com/boostorg/boost/archive/boost-1.71.0.tar.gz)

That's a dynamically generated tarball that can't be relied upon, so
isn't an option.  As there's a known limitation with bintray.com I see
no reason not to move back to SF.

Patches welcome!

Ross
