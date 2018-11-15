Return-Path: <samuli.piippo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B313E00C52; Thu, 15 Nov 2018 00:32:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (samuli.piippo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF1CBE00C4B
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 00:32:37 -0800 (PST)
Received: by mail-it1-f179.google.com with SMTP id m15so28055542itl.4
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 00:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e8YTCPecGC3TzaSyXQfSzWxAXYab8RpjVLZS8W2zJbM=;
	b=rLIdbaeEH0iDQNkUROeuVoFPhLLe6xApv9qa1RorkEOCadnaYDUbbmAbmYpR3zxg1v
	OZkMzWQAKUQn3Hf2Z+0O68epcZD+NeflXS2lS105JKi/YKJG6aA1bviNyf9CQSFKojRy
	Wlh6qBs8J6QLRCUFs/nQUPkpB+N+/iDXEXwYhFcrxeBjj+XSdK9hBizqF9Ev3sB+W7x2
	ylj0hAazJpD7bb1OZVspsfe8AWTstB77JP0rKRjKi6pEzgsTAcyRsVl8HAjXBD8+mtmQ
	hZKafJtlIwG+i1f/o4CpXJC3xyP70sJWmtFiBkG7YtqLesA9V+4/7gG0OCP4jXQ2juxS
	SvcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e8YTCPecGC3TzaSyXQfSzWxAXYab8RpjVLZS8W2zJbM=;
	b=nUJ2PEN/L0r1hVXMYhZ0qOgbxZZtoCgkmEz3bi/8L5AfHT4eYY8Tf7aq1CcwSAe8iA
	Lu6zDwBjtqJANsQ/jW8bUCfeFhb16k3kCqjgwN6zsKLRcjeXfWgJdPX67zbTT+kODl37
	00ILaojgxBrZIlWWnQTGUavxiOTQO+MqeLKWL6qKzxLPhOfsN697PqdWWpsozHLBTkMp
	C43isyHpfJC0K0gGXcrGnFgSduGqMO47R29NewS2H6fj9t2KIcg+CRpYcsCH/bCCiOvX
	iqGx9kNWTSwVluM/1WzFdHtG8o9c/0+u2Za3cfIwywSXZdiD2NGMzrmo74Z6OLrccC74
	kSfw==
X-Gm-Message-State: AGRZ1gK8VSpwbDSVNc23PzRMGP60ySbJ1fvQQJxI/yEj6EfWsWC/vOyI
	znURZ+yTJdqvwpG8fvdKP9Ex2i/B5yWdFU/XF2N4EkSB
X-Google-Smtp-Source: AFSGD/VDLsrcIKpRhuQf0AFZCFmPS1NcOLDMTvJjCfbgEXKTqMPc4ef+0ytHxwvx1yhylQc25OyM0rDrE83D7GeygwQ=
X-Received: by 2002:a24:4a10:: with SMTP id
	k16-v6mr5132704itb.170.1542270757210; 
	Thu, 15 Nov 2018 00:32:37 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
	<CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
	<CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
In-Reply-To: <CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Thu, 15 Nov 2018 10:32:25 +0200
Message-ID: <CABXoSoUqzDtrdea7rFkF0xiXULR4sto+gqcXL4L8TpZy8Ni7bQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Thu, 15 Nov 2018 08:32:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Nov 2018 at 07:01, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
> >
> > On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com> wrote:
> > >
> > > On 11/14/18 9:54 AM, Mark Hatle wrote:
> > > > On 11/13/18 3:56 AM, Samuli Piippo wrote:
> > > >> Hi,
> > > >>
> > > >> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result
> > > >> a lot of the executables in the toolchain no longer run correctly on Windows.
> > > >
> > > > Which version of windows?
> > > >
> > > >> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work
> > > >> fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and
> > > >> exit without any output.
> > > >>
> > > >> Has anyone else seen this?
> > > >
> > > > I've run a toolchain made on mingw after sumo, but before thud's release.  I'll
> > > > see if I can find a VM and give it a try later today.
> > >
> > > I'm running on Windows 7 for my testing (ya, I know old.. but it's what I got.)
> > >
> > > Can you try adding the following to your conf/local.conf: GCCPIE_mingw32 = ""
>
> this will be effective just for SDK and native versions I hope, but in
> cases if we
> have this override also applicable for target then this fix is not
> correct. We have
> to keep using it for target builds.
>
> > >
> > > I found that the SDK was not working properly here as well, but only binutils.
> > > The above seems to fix the issue.  (You do have to rebuild your SDK.)
> >
> > I also saw this issue on Windows 7, and your described fix corrected
> > it (Thanks!). On the plus side, the automated SDK testing that I'm
> > working on discovered it as well (e.g. the tests failed because of
> > it), which means that the tests are working and should help prevent
> > issues like this in the future once I get it merged.
> >

bisect finished last night and the winner was: commit
491082c56ce34f3fd644f8d4457ccd52af951087
poky.conf: Enable security flags+pie by defaultEnable security
flags+pie by default

Adding GCCPIE_mingw32 = "" fixes this also for Windows 10

