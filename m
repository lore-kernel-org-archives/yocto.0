Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B967E00AB6; Wed, 19 Apr 2017 05:53:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39369E00A38
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 05:53:43 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id a1so15097624uaf.3
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 05:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=2QHcqh4F6+v+xPG4VA67ZCjaMf+S9vQETSLL0pSrvxA=;
	b=cP8eY7jPCsoTIWh3gcvpNbfoiJobARPmb7d3dNCPTqTD3M9RtGCZwgtYHlaFWRAa6f
	+yZDSD2QFahXJyu1xlVgevxpwPAuRRnj5fHyW9K+Ky0FsizDQ+HdPRERN6cy40kNNkrC
	nxp83aXpJgKa99Y/hr2QIafydlpuwH93IaBH9+DlbbwGXAJucsA038dguSyUYrQftn2l
	RXhgOk8Kg8OGPZyHX6HDfB5IzF+JjfJB/ju6FqiblEeP/cy9Bqfel8upP4gUFuFNj0tb
	Ybi4uToD+WGu0pfCvI2nvrjqPLJYpb7zCXiy7PY3fsdjdseNVZGd6JEWDJBWIp7lum1e
	N55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=2QHcqh4F6+v+xPG4VA67ZCjaMf+S9vQETSLL0pSrvxA=;
	b=eQmcj2BV+B12zwA17YByn/9aDc7iab6Spwcnp2arFcNI9blRStkA81sv4HV+RD3xaV
	jcuyDhNUkhIrFfBqiHpULQ320SvxfZMxiVV0b8REj/B+tl5jzF99cyFOkDBE7y9Jp2eL
	t64UjZZJbBQTUhyoY0CEgN0diTHOcyW4aLbqlWzPwigwQhw2YZl+0+cWw6DKsxHblIDc
	oazKCp7gPPaL/4BWYRtrME4x6dQR0R57/eMx1yrflI5YOLaNQzxX94hERLvUTQiAaLks
	M0JdbQlJbM2bmF/L9nVo4JBBOZrGbb+HWKiP0+2K4JODEfwn10g1SrWd5ZOim6VxxdBi
	RUBg==
X-Gm-Message-State: AN3rC/46CcTRRHBJBqtUfr1FxJpkHDwkuMrQxE8PqfDQzyuNr6AREEvg
	rjMRj/s+UDd81n+K4NKdd+fLx+WMMwN1
X-Received: by 10.176.82.238 with SMTP id w43mr1321357uaw.171.1492606422914;
	Wed, 19 Apr 2017 05:53:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.30.70 with HTTP; Wed, 19 Apr 2017 05:53:42 -0700 (PDT)
In-Reply-To: <CAHUNapTkUb2YuY+cnhdo2ra4+t81sQxNc-D35qEYjh6Nvwe-NA@mail.gmail.com>
References: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
	<CALbNGRR-AGWLmGiZGbYi4RqqMTUnDz=YJgoeak6qVX8FTzR6wA@mail.gmail.com>
	<CAK18fxGOjHtj1gEQAd2+snrp6tM=h1Rg7CTwwdEja_bAVZ3EFw@mail.gmail.com>
	<CAHUNapTkUb2YuY+cnhdo2ra4+t81sQxNc-D35qEYjh6Nvwe-NA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 19 Apr 2017 08:53:42 -0400
Message-ID: <CAHUNapSmP8BOAo3ecc0AEB3JqLdAAse==R+aSVWRwZU=BpO5RQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Unified serial console device option
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
X-List-Received-Date: Wed, 19 Apr 2017 12:53:47 -0000
Content-Type: text/plain; charset=UTF-8

oops, forgot "reply all"


---------- Forwarded message ----------
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, Apr 19, 2017 at 8:53 AM
Subject: Re: [yocto] [meta-raspberrypi] Unified serial console device option
To: Andrei Gherzan <andrei@gherzan.ro>


On Wed, Apr 19, 2017 at 7:28 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> I've seen people requesting it and this approach would unblock them.

It sounds like what they want is a DISTRO. They want everything to
look the same when the user logs in, regardless of the hardware on
which they're running. That's a DISTRO's job, not a hardware issue.

I'm not really in favour of the current situation where raspi3
includes raspi2... Machine configuration files are pretty short as
they are, I'd rather have independent files even if 2-3 lines are
duplicated.

It's a pretty fundamental fact that new hardware comes along to
replace older hardware. I don't think attempting to "contain/restrict"
these changes in machine files is the right solution.

<troll>
if they want hardware that never changes, introduce them to the
beagleboard or the iMX6 line...
</troll>

