Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web10.5348.1579453536443748422
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 09:05:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jo3NBt2v;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: schnitzeltony@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id f10so25362135ils.8
        for <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2020 09:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fHi3mzU04J6soGPGmqSgwp/+h2alQSWXaSk1MuZyNW8=;
        b=Jo3NBt2vEzvgk1aL//R2YfD/5iZVpZloOjS6+3nrteUTIgCFTHtclIh2hhefdUiLc3
         DS6+kFlPi1CoMxVUCdJSdZrc0uld3wdAaxOpl9EY+63mpQpvIIt83l6qAkdTLL5HAjGc
         26Z03Mr6l15+8O5+AiMK1hAc4dCEQXBpMBTV8qRBjdhUtbQ7Vy4rwHJ3R5U4hqgQXLU+
         4JBI/hB46e9Ebg8pa8pgURJqp5XhTti1Q5Ri/tqHlixabBgAmPbAV79x+mzIb82yy/+N
         0HerIH6h3Dn+cdGUo4MnavsT9b+i83tYOvXzL2DPaXnGEWigBDikj4jyhCR6wSAkfYJp
         ppGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fHi3mzU04J6soGPGmqSgwp/+h2alQSWXaSk1MuZyNW8=;
        b=nkJZanRefNETPbiyNKC+y3pUoB8UYd10pAefFfL9fUssfahQN9NYlNzVb4/sUQ9FgY
         hBA+y9vMWL3bmT4JRWfqEceDi/bZV5xvDfjEVBTlvayw39b/rnxFZa5UqVFeIxP8tva8
         EEc2pdTKal+cHp4OYoCfVWoTxRGW+S4bMfztWoGSs4PLXlkR2zuB9PoX61Fgt3j3QmXF
         /eTNxGBOqQiCkNl28LjKcnxH5PyCaGVfyIJBe7jWqqIMZWkz+sjBI9g1xfccWTzjIQn1
         5zUyKtVfpWFZzXCv2xv7+XJaYUu63u22ZjtgpVPMGv/uuMxalPUgoyoKdrC7TsgLxjzi
         1mIw==
X-Gm-Message-State: APjAAAUnIQmh1S/PYInA83tXz8ZxBcooNzwDA0f5zZT8ZzJKJUt0p1hT
	Ey58WxmMowqMYat7TlocItNCIn4hT/mYdsE8Cww=
X-Google-Smtp-Source: APXvYqzPY6VwbaV4Wt8FoWxPcZ2Zdjo+7PouMedPMDdMboKy+vP4HijJgXMStkIhl8USKSclKiQy/0TnalF0QB08x+o=
X-Received: by 2002:a92:145:: with SMTP id 66mr7230170ilb.147.1579453535786;
 Sun, 19 Jan 2020 09:05:35 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <CAMKF1sodwwma8WVS92UBJ9AhtTL2pzqtFuDp=qvyc+VE_YD_9Q@mail.gmail.com> <5d25dc833a9d914ae319efd55930ba05088ad40b.camel@linuxfoundation.org>
In-Reply-To: <5d25dc833a9d914ae319efd55930ba05088ad40b.camel@linuxfoundation.org>
From: "Andreas M?ller" <schnitzeltony@gmail.com>
Date: Sun, 19 Jan 2020 18:05:23 +0100
Message-ID: <CALbNGRQq60UVTOn75Gr5xVd0iou+-q78euyQv5A1b6TAa7Hwvw@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 19, 2020 at 2:59 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2020-01-17 at 13:28 -0800, Khem Raj wrote:
> > On Fri, Jan 17, 2020 at 12:15 PM Andreas M=C3=BCller <
> > schnitzeltony@gmail.com> wrote:
> > > On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com>
> > > wrote:
> > > > On 1/17/20 6:16 AM, Ross Burton wrote:
> > > > > Python 2 ceased being maintained on the 1st January
> > > > > 2020.  We've already
> > > > > removed all users of it from oe-core so the final step is to
> > > > > move the
> > > > > recipe and supporting classes to meta-python2.
> > > > >
> > > > > The following are removed in this commit:
> > > > > - python and python-native 2.7.17
> > > > > - python-setuptools
> > > > > - The classes pythonnative, pythondir, distutils, setuptools
> > > > >
> > > >
> > > > perhaps add them to meta-py2 first before this lands
> > > Just a question: What is the plan with all those recipes which are
> > > going to fail (most headaches I have with old waf): Will meta-oe /
> > > meta-networking..., depend on meta-py2 or kick them out or?
> >
> > I am a bit apprehensive about creating direct dependency, since
> > that would prolong the support, so I would still like to use rest of
> > this
> > dev cycle to fix as many recipes as we can to not depend on py2
> > and I will publish the failing recipes, so far we have had no failure
> > run for all meta-openembedded layers on master. In the end perhaps
> > we will be able to blacklist the recipes which still need py2 and are
> > not
> > migrarted to py3, or if we end up with  a lot of critical ones then
> > we might want to create dep on meta-py2, hope that clarifies my
> > thoughts
> > on course of action.
> >
> > but I am sure, if you have needs for py2 then including meta-py2 will
> > be the place to go and I hope that it will provide the existing
> > functionality that's being pushed out from the core.
>
> I have to admit I don't know what the best solution for meta-oe is.
>
> If py2 pieces are left in meta-openembedded, it may be best to move
> them to a separate sublayer to make the issue clearer?
>
> FWIW I did remove some python binding pieces in meta-gplv2 to work
> around problems, a similar strategy may work for some things too?
>
> I have however merged the patch for OE-Core. The reasons:
>
> * We've known this was coming for some time
> * OE-Core is due to build M2 this week
> * The change has long been scheduled for M2
> * Its a forcing function, we are going to have to deal with this
> * This gives meta-oe time to resolve the issues before April
>
> Sorry Khem!
To avoid double efforts: I will start with mozjs now. Did work on that
already and tried to build it from firefox-esr V68.xx. That did not
work because:

* We nee meta-rust for that
* Python scripts were not upgraded to python3 (because the moved to cargo/r=
ust)

Hope to get it working soon...

Andreas
>
> Cheers,
>
> Richard
>
>
>
