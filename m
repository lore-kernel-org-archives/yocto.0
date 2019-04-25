Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AF77E00CD6; Thu, 25 Apr 2019 06:03:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1500E00AC5
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 06:03:04 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id s18so5400657wrp.0
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 06:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=GG0AFebMswzq6+Ba3BQAXTl2+xjaperrx4Y4y3VzAM0=;
	b=Zfm27da4RNRSy1bJ64bpS96J1uwNp63SN8xwViHddlWMN3hIJUjJYLcmaBy/lzoV1O
	jPMZR5P8Cveo2RP9GUAsYaSS89HN6Al8weUzGvUJFVlGQjbXv4Q9XWZBLoMfvsJp2kuO
	oW1jcU1H+QMbKKlbuOtNEz/nhII5+adkQmZug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=GG0AFebMswzq6+Ba3BQAXTl2+xjaperrx4Y4y3VzAM0=;
	b=U9UCfReQFVfVzOfmzSiMYtIQ1HUOOgA17DA7yr88efHtHrxwNjgXF+aF0IpSzmkANd
	mI/83j00h2n66yba69j2VYYabqS9YwI1xIfM3Ad8yDcQQDDYpHFulGNjtO95EP5BcewQ
	m9geATKaJWYuG+oCEqDASh4r8ZmCnaFU9VzyP0NEYmzNwSl0KrFaHNc+mzdIkEsPECGo
	9/tt3971CoPFeCXqo5TFAvoMOEisG0XLbBOUEcMuaRxZx5y4mlL/0CL5OJ1l6chPRv8Z
	3ulwTFA3Zalrnyjk/xQBGt0loPJzxRccYSETvp5jHKDThJzsLOI9fwoBDHzUOiFTL0Vb
	G2og==
X-Gm-Message-State: APjAAAWWPn0w5eKjYDbX0ZaxdIt6EzaQ8Wi/6fAf70jrHhaYIWQFrPVJ
	12mwzlwxE+FsIrarvWuycqbn5/G0Ty4=
X-Google-Smtp-Source: APXvYqwTaDSxEPcu+DsPm9Zd6pvGuZjB6XyYK0dIs0ONa8iCu3gvy3rCpUCc2LHY/3Oz102HJjmpYg==
X-Received: by 2002:a5d:4087:: with SMTP id o7mr27207549wrp.9.1556197383868;
	Thu, 25 Apr 2019 06:03:03 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	q4sm24568596wrx.25.2019.04.25.06.03.02
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 25 Apr 2019 06:03:03 -0700 (PDT)
Message-ID: <bd9c72684e1c6f13df84c02144b738f908332afd.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, "Bach, Pascal"
	<pascal.bach@siemens.com>
Date: Thu, 25 Apr 2019 14:03:02 +0100
In-Reply-To: <alpine.LFD.2.21.1904250826460.20238@localhost.localdomain>
References: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
	<355BE46A91031048906B695426A8D8E62EA52CDA@DENBGAT9EL2MSX.ww902.siemens.net>
	<alpine.LFD.2.21.1904250826460.20238@localhost.localdomain>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ASSUME_PROVIDED, cmake-native and why cmake is subsequently not found?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Apr 2019 13:03:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-25 at 08:32 -0400, Robert P. J. Day wrote:
> On Thu, 25 Apr 2019, Bach, Pascal wrote:
> 
> > >   currently trying to build a "core-image-minimal" for a zedboard
> > > on my
> > > wholly unsupported fedora 30 (branched) system, so i'm well aware
> > > there
> > > will almost certainly be breakage as i try to resolve version
> > > numbers and so
> > > on, but working off the "thud" branch, the first issue i had was
> > > trying to
> > > configure cmake-native -- the error message is exactly what you
> > > can read
> > > someone asking about here:
> > > 
> > > https://stackoverflow.com/questions/52663287/glibcxx-3-4-26-not-found
> > > 
> > > /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> > > native/3.12.2-r0/build/Bootstrap.cmk/cmake:
> > > /home/rpjday/oe/builds/zedboard/tmp/sysroots-uninative/x86_64-
> > > linux/usr/lib/libstdc++.so.6:
> > > version `GLIBCXX_3.4.26' not found (required by
> > > /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> > > native/3.12.2-r0/build/Bootstrap.cmk/cmake)
> > > > ---------------------------------------------
> > > > Error when bootstrapping CMake:
> > > > Problem while running initial CMake
> > > > ---------------------------------------------
> > > 
> > >   i'm unsure how to resolve that easily, but my first reaction
> > > was, "if i already have cmake installed on the host, why not just
> > > take advantage of ASSUME_PROVIDED"? i recall from some time back
> > > asking why more host utils were not, by default, included in
> > > ASSUME_PROVIDED, and the answer (quite reasonably) was that one
> > > wants to have as few variables as possible for reliably
> > > replicated
> > > builds.
> > > 
> > >   fair enough, but in my case, until i figure out how to fix
> > > that,
> > > i thought, why not just:
> > > 
> > >   ASSUME_PROVIDED += "cmake-native"
> > > 
> > > so i did, and that got me past the cmake-native build issue,
> > > until
> > > i hit this trying to build libsolv-native:
> > > 
> > > DEBUG: Executing shell function do_configure
> > > /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/libsolv-
> > > native/0.6.35-r0/temp/run.do_configure.16705:
> > > line 130: cmake: command not found
> > > 
> > >   hang on ... why would a subsequent recipe not be able to locate
> > > /usr/bin/cmake on my host after i explicitly identified
> > > cmake-native as assumed to be provided? is there something about
> > > the libsolv-native recipe that does not take that possibility
> > > into
> > > account? i'm just about to check, but if someone has an
> > > explanation for that, i'm all ears.
> > 
> > There is an issue that CMake is not able to find binaries in
> > hosttools. It might be the case that this is the issue you are
> > seeing.
> > 
> > I submitted a patch for that but I'm not sure it Ever made it into
> > master or a release. I need to follow up on this, the patch is
> > here:
> > https://patchwork.openembedded.org/series/14429/#
> 
>   that *sort of* sounds like what is happening, but to be pedantic,
> it's not that cmake can't find binaries in hosttools, it's that
> *other* packages can't locate cmake on the host even after setting
> 
>   ASSUME_PROVIDED += "cmake-native"

Setting that "fixes" dependencies but it doesn't make cmake visible in
our HOSTTOOLS.

> i am assuming that whatever search path is used for "native" tools is
> extended by the use of ASSUME_PROVIDED -- is that what your patch is
> addressing?

How would it know in general terms which binaries a given X would
provide?

>  in any event, i've now run into a couple other packages
> with the same issue -- "cmake: command not found" -- libcomps-native
> and librepo-native, so i'll just ASSUME_PROVIDED them too for the
> moment, as they're both installed on my host.

This is a bad idea and you're on a path to madness ;-)

Cheers,

Richard


