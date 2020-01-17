Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web09.2669.1579296516353917464
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 13:28:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3b9NbL1;
 spf=pass (domain: gmail.com, ip: 209.85.219.65, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f65.google.com with SMTP id z3so11387502qvn.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2020 13:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4M1z+u48vCpiXqQaMbIbFyhnGEgXPAH35S5xSVIHam8=;
        b=a3b9NbL13h3XdGl7R5ui5jNzmdHb/fbYQsZlKbn/IRtNcnXyEpUCJieNw84plT5YK1
         wtWEMBlN3/FT824NhhrkLJ0Wky1WW0auV1AfinLG4tyRZI34vhucOONlnkP0oURDJEVP
         osERMIIetiH6aoiEo0OnTJMuZp4GvtYsEgXnBp+GlUraCer/9Ft/OFkXcJcRowGHCKTl
         Wkrywa4VvXobcOEgjto903bn7q6PT3MxN0jNCOhxq2wumsqbWohgP0gPCoNtPyMDyZeh
         ycuuWr9l/bqp6/FIWHZAaoogJ+kcD0UJMNkMh6Wk/Yth02DiFivVWAdinlkHty22Dx86
         /mUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4M1z+u48vCpiXqQaMbIbFyhnGEgXPAH35S5xSVIHam8=;
        b=l7N33T7fMCzLYXE6U+qcXCpim2zigAfPb9nGX55hLBCqRtKtHVRR+4p5n9v/bb6/vv
         Wua4nD+OrxPyHQJR+xIwTSU9fMr0OQUe+5VTsxaeHD8KV0LVyYTiNk7N/dqec+3iCXwz
         mA2L1OCSJsWUWkDi/+FGb7qOdEhShWKC92Bs6wEfaWcxcAttT0xjzQwdj0ObP8p9fPfQ
         nFNXqhyBlEPMQsJsu+fnSqGwV78ijwnp1tncEDUIsoTSOQnm73yGo5nRqgxxlQiJqrvc
         CywRQlCuf5XzRsx/FX+fJDS5ZktJX+TMmdPn4SkECdQGi10ZL9279j9NlrAXWYmVAtLH
         1qfQ==
X-Gm-Message-State: APjAAAXrejinhd/XjqeGKQu7BXLiOmUJjJNzvGQNs4iIdkj+Xh+3ZL75
	JZ9MnvxRaJ6vlsDxkZB5prNYFJofsxWBeNcgpiY=
X-Google-Smtp-Source: APXvYqyklFj76PIYnSQee1WTqsfb28rLkQv12QwwI9fxjIwYlDgIa7GdgT5noBKMeLZpBcajhEQzrysjHynMme+8dC0=
X-Received: by 2002:a0c:8605:: with SMTP id p5mr9763626qva.109.1579296515299;
 Fri, 17 Jan 2020 13:28:35 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
In-Reply-To: <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 17 Jan 2020 13:28:08 -0800
Message-ID: <CAMKF1sodwwma8WVS92UBJ9AhtTL2pzqtFuDp=qvyc+VE_YD_9Q@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 17, 2020 at 12:15 PM Andreas M=C3=BCller <schnitzeltony@gmail.c=
om> wrote:
>
> On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On 1/17/20 6:16 AM, Ross Burton wrote:
> > > Python 2 ceased being maintained on the 1st January 2020.  We've alre=
ady
> > > removed all users of it from oe-core so the final step is to move the
> > > recipe and supporting classes to meta-python2.
> > >
> > > The following are removed in this commit:
> > > - python and python-native 2.7.17
> > > - python-setuptools
> > > - The classes pythonnative, pythondir, distutils, setuptools
> > >
> >
> > perhaps add them to meta-py2 first before this lands
> Just a question: What is the plan with all those recipes which are
> going to fail (most headaches I have with old waf): Will meta-oe /
> meta-networking..., depend on meta-py2 or kick them out or?

I am a bit apprehensive about creating direct dependency, since
that would prolong the support, so I would still like to use rest of this
dev cycle to fix as many recipes as we can to not depend on py2
and I will publish the failing recipes, so far we have had no failure
run for all meta-openembedded layers on master. In the end perhaps
we will be able to blacklist the recipes which still need py2 and are not
migrarted to py3, or if we end up with  a lot of critical ones then
we might want to create dep on meta-py2, hope that clarifies my thoughts
on course of action.

but I am sure, if you have needs for py2 then including meta-py2 will
be the place to go and I hope that it will provide the existing functionali=
ty
that's being pushed out from the core.
