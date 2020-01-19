Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web10.3024.1579442357186766597
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 05:59:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=avpb0nH0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f66.google.com with SMTP id d16so26869954wre.10
        for <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2020 05:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=YYQee9/wjpzhlIyWOLoCpZYW759pAn5PTN0NP4JmNRw=;
        b=avpb0nH0uvKYd0mYnWy7JSyI1cCJ7EdGFg+A8VM0MUDtJ8z2etkHefmN+Wgl3wrCzo
         dZ1TbVgmwAcgtVRPIeDi7gtVkLz9qH8oYoJHBqKse3odgrgD2ECB5k6RbIkqZ1dTdjaH
         XVq0jz+lgAK2v190SX8KjAbRFigZQII2xl3Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YYQee9/wjpzhlIyWOLoCpZYW759pAn5PTN0NP4JmNRw=;
        b=a7dhM3uy3/oVlhPA96aVBy+xguB4pNG60+prEd/xYXASn9j/Uwvigl0cq98tMKq4cs
         4rRGOqhOGv593qjLZLRP+JWkUlopga/qgvWTs8Bg4YwJ3ggLJ00kPWItTlofQrj1s3pB
         /Jg6s6LT6kHCJfZ66I+KWTlsypVQkRjo2MdpSIPbWJl4KJeYSTNZtYhatt0l1eJ8E3ZD
         +WE0rOvbG91SSnOnsWAY8Q+oUn5Yw2UbA2ZOUSa7ADqX7+KmTnSguwyeEkmdePzv7PcN
         kXb9iVnSBa4z4cEsHZvE/x+oUj5y2UZzX1yabDrbDC9d1QteLdg9sbBtsf0yQ/owit/S
         z8GA==
X-Gm-Message-State: APjAAAUXxSZDigTRAlBlukjqhG/t1Wp+5LZa5cS70i6d/3ymu1FFXX1x
	tYunh1kA6L5FgWvIcCeaLBxuCA==
X-Google-Smtp-Source: APXvYqzDj8+lmtqRU6L/AszKHGb/AwDdI/8fLRovyGk7rV9+8FD+MGB9qyvTcMXhhy7QxoIyWPVpBg==
X-Received: by 2002:a5d:4983:: with SMTP id r3mr12907286wrq.134.1579442355623;
        Sun, 19 Jan 2020 05:59:15 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g18sm18106496wmh.48.2020.01.19.05.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2020 05:59:14 -0800 (PST)
Message-ID: <5d25dc833a9d914ae319efd55930ba05088ad40b.camel@linuxfoundation.org>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, Andreas =?ISO-8859-1?Q?M=FCller?=
	 <schnitzeltony@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Sun, 19 Jan 2020 13:59:13 +0000
In-Reply-To: <CAMKF1sodwwma8WVS92UBJ9AhtTL2pzqtFuDp=qvyc+VE_YD_9Q@mail.gmail.com>
References: <20200117141632.3809-1-ross.burton@intel.com>
	 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
	 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
	 <CAMKF1sodwwma8WVS92UBJ9AhtTL2pzqtFuDp=qvyc+VE_YD_9Q@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2020-01-17 at 13:28 -0800, Khem Raj wrote:
> On Fri, Jan 17, 2020 at 12:15 PM Andreas Müller <
> schnitzeltony@gmail.com> wrote:
> > On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com>
> > wrote:
> > > On 1/17/20 6:16 AM, Ross Burton wrote:
> > > > Python 2 ceased being maintained on the 1st January
> > > > 2020.  We've already
> > > > removed all users of it from oe-core so the final step is to
> > > > move the
> > > > recipe and supporting classes to meta-python2.
> > > > 
> > > > The following are removed in this commit:
> > > > - python and python-native 2.7.17
> > > > - python-setuptools
> > > > - The classes pythonnative, pythondir, distutils, setuptools
> > > > 
> > > 
> > > perhaps add them to meta-py2 first before this lands
> > Just a question: What is the plan with all those recipes which are
> > going to fail (most headaches I have with old waf): Will meta-oe /
> > meta-networking..., depend on meta-py2 or kick them out or?
> 
> I am a bit apprehensive about creating direct dependency, since
> that would prolong the support, so I would still like to use rest of
> this
> dev cycle to fix as many recipes as we can to not depend on py2
> and I will publish the failing recipes, so far we have had no failure
> run for all meta-openembedded layers on master. In the end perhaps
> we will be able to blacklist the recipes which still need py2 and are
> not
> migrarted to py3, or if we end up with  a lot of critical ones then
> we might want to create dep on meta-py2, hope that clarifies my
> thoughts
> on course of action.
> 
> but I am sure, if you have needs for py2 then including meta-py2 will
> be the place to go and I hope that it will provide the existing
> functionality that's being pushed out from the core.

I have to admit I don't know what the best solution for meta-oe is.

If py2 pieces are left in meta-openembedded, it may be best to move
them to a separate sublayer to make the issue clearer?

FWIW I did remove some python binding pieces in meta-gplv2 to work
around problems, a similar strategy may work for some things too?

I have however merged the patch for OE-Core. The reasons:

* We've known this was coming for some time
* OE-Core is due to build M2 this week
* The change has long been scheduled for M2
* Its a forcing function, we are going to have to deal with this
* This gives meta-oe time to resolve the issues before April

Sorry Khem!

Cheers,

Richard



