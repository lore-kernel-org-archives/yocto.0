Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F389E00D15; Thu, 31 Jan 2019 02:52:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 099A8E00BED
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:52:33 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id k7so2254705iob.6
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UzgA3jR/caENSlyCgXzWdMZSICQWg7dEhva5iWK7ByI=;
	b=qBqS0tCZFbOkuRrnhTiBynosB/ADO450Fo06qlQUgSea2jLLAWWwXV3slniVmiYeSr
	1ci30RYmn6iIoCCNHg4qATOznfh+7aF046h0Vbfa6SGwT2+CeSmigxbRzkivLJDwX/tU
	Gpu7EwCVTwcgcFFICSSB3get3DmNR9VVrR/Dxl5WtkpWsnAQjqqQab1xml19Cwv5fy0z
	mS9FVGR5akTmR4fjBSaWSOyUE8/w/jj7EkeTQ2wusaVjf5/HP1QHrfdaSh9pUjcW9jmn
	e9W/PxAfxfixIQ9x6JYEkQNrEckkOly4K907UBnur8Dv8CcDvdwD6LEG1ZDa9lPH91i4
	86kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UzgA3jR/caENSlyCgXzWdMZSICQWg7dEhva5iWK7ByI=;
	b=Lj/vaoihNuvRZNABuHKw4CbxefsHWS/mFbBcHyGLHzKF+/yi9jfQW4BnK7X7d0KvS6
	jhhduyJm5xGfahL5AUJNRct4bjOUhJvMXrbgUW+ftQ9RPx/MgX04IwiJFAT3BErYtR6O
	KzwUZBlBOHy5eEjhLdNy7VFokEy0Hk03T30T7PkpGEwcwgOEzN7jqxbL0JsvtkT6JYK9
	9xu582UMod8puLDKFi9zFs7d6tJmwKhFGBaIQ6WKaKiZrmuhEmJql/HBO96uYry7jN0x
	msERz4uxshZzfSPssPHQjk5pfeKGCtIiGS0mbXdCa/W5UC846qhg8ppHJdbXg1cihaoe
	rBlg==
X-Gm-Message-State: AJcUukd93o4QjBLxsTSNjyRy8iutg3E+eZXKqOG2jVpI5VyCuj7S0AIE
	ctSzkca4hfnjsf5yK0+jg0peXqeqgqHtE8OQKJkG0Q==
X-Google-Smtp-Source: AHgI3IYiA/ayEpOX1pd038n7VuHqYdVSfJFfKgGOscR41BKouuPPJdRL0ppAuv3L4XwKfC5O7hN5+H6v1Rosr+rEPYE=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr18739377ioe.20.1548931953565;
	Thu, 31 Jan 2019 02:52:33 -0800 (PST)
MIME-Version: 1.0
References: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
	<CAJTo0LYxrsLQJsj3T60VzmKt9MUziEkN5mA0aD6vqd+LEJynbA@mail.gmail.com>
In-Reply-To: <CAJTo0LYxrsLQJsj3T60VzmKt9MUziEkN5mA0aD6vqd+LEJynbA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 10:52:22 +0000
Message-ID: <CAJTo0LYaVUuMNkxP9CyNHqWAv7RQ9xtjmAgMw_7q64BJNR3LWQ@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: RDEPENDS and do_rootfs
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
X-List-Received-Date: Thu, 31 Jan 2019 10:52:34 -0000
Content-Type: text/plain; charset="UTF-8"

Forgot to say, Bitbake's dependency model is loosely based on Debian's
so the Debian Policy is a good read for semantics:

https://www.debian.org/doc/debian-policy/ch-relationships.html#binary-dependencies-depends-recommends-suggests-enhances-pre-depends

Debian's "Depends" is our "RDEPENDS", what you want is "Pre-Depends"
that we don't (yet) support.  As I said, this is just a matter of
picking a name and then mapping it into the control file.

Ross

On Thu, 31 Jan 2019 at 10:49, Burton, Ross <ross.burton@intel.com> wrote:
>
> Presumably the problem here is that you've a maintainer script
> (preinst or postinst) in B that needs a binary/library from A, and is
> failing because B's postinst is running before A is unpacked?  If not,
> please clarify, otherwise the problem is that DEPENDS just talks about
> the final solution.  If you want to express that A needs to be
> installed and configured before B is configured then you'll need to
> use Pre-Depends, which I don't believe are actually supported in the
> packaging classes yet.  I know that dpkg and opkg support this, and
> presumably rpm too, so extending the packaging classes is a few
> minutes work.
>
> Ross
>
> On Thu, 31 Jan 2019 at 06:51, Darcy Watkins <dwatkins@sierrawireless.com> wrote:
> >
> > Hi,
> >
> > Can someone knowledgeable with the inner workings of the build system
> > please confirm...
> >
> > IF package B has RDEPENDS on package A
> >
> > THEN during do_rootfs task, package A will always be installed into
> > rootfs first AND the post-inst scripts of package A will always be run
> > prior to those for package B.
> >
> > Also, if that can be confirmed for 'daisy' branch, that would really be
> > helpful.  If not, then please mention as far back the branch that you
> > know for sure.  Thanks!
> >
> >
> >
> > --
> >
> >
> > Regards,
> >
> > Darcy
> >
> > Darcy Watkins ::  Senior Staff Engineer, Firmware
> >
> > SIERRA
> > WIRELESS
> > Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
> > 1 604 231 1100
> > 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> > [P1]
> >
> > dwatkins@sierrawireless.com :: www.sierrawireless.com
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

