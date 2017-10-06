Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0DF1E00CA2; Fri,  6 Oct 2017 07:00:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 806BCE00C35
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 07:00:32 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id 74so2285288pfu.1
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 07:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=H2x3BXSGZkmMW+Pm/tLvBMcMb/1qsXyadnMs9ihcxjU=;
	b=MXQ8QzwoTrX7U7Z7BEWgNQoW7eBqFzt74ZKKyWyE6KHFtqZWNbVO6dHifFpVrYsR5T
	GdDrqsnLvmJ/puXfqmIb1SG4khY04SDERtXs+MpYBUk9hhDXoArHWifFUTczZjlPILQP
	cE2cCuEH9neiG351a83vryMiGWM9qupUxpd2ZuLazevp11VZZ8pBXxCgJvorA4/FMbOT
	NGnBKhJ3O+HW466zRi4+MSxQ/3eBNT0yxemQ01kaddLlRYUpwmZE1SjbMTbZnEsprzdj
	XpEdKOH60Zvjgo1eiiUrbjWeuY6ProjGrV4ES6yr3Ty54F4PpHuSUMR8aZP0lSArE0+s
	P4pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=H2x3BXSGZkmMW+Pm/tLvBMcMb/1qsXyadnMs9ihcxjU=;
	b=cPp80U8nSSfvFbvQDVpZK3N2IxXyviDiAd+M/figDrX6PB19CeWRoG0Ixejiq/cPsA
	FmlTTTKFiXJou3gocEXDLkZTKq/GaGFx2A2oYB5TXfofQAr14lxiN/QY/AblIQ9FfXl4
	Kdn+ENA2Fb1I6y+AKB8Z2RbSJ1Zujl+KgMhk5WJaQUZQCQSqDBRGFQuw/bbInHMNHn/P
	bs4UFVpFlemGhOfh0Bvf19Y0583WPu1MbhPC+oWs+HGvr1HtqKNIm4bdhDVZykcoKMdt
	7+dU0AX5DdUjLydL0fhAQiNcWRy/VMnb9TtZFJ7w3/2k6pZdq5R8ZQjY4sucGfKHLMOo
	xdhQ==
X-Gm-Message-State: AMCzsaUzCo8f9HoMA8EhGDYFV+80/VGjHdTgM27IAFepew0Gf0v59bPr
	7szfX+g3ypOA3ZFDlcNWcUaOEPua4VCSz9caEt9OCg==
X-Google-Smtp-Source: AOwi7QB2hYTWxXhlG87JyrlMt3EMzKwkN5qAofU55QP638CIQbFv7iJB7akJKxeNRz6LgDMjv2zpF+6ZvwOU5GRJ96k=
X-Received: by 10.84.240.12 with SMTP id y12mr2114530plk.215.1507298431818;
	Fri, 06 Oct 2017 07:00:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.135.23 with HTTP; Fri, 6 Oct 2017 07:00:01 -0700 (PDT)
In-Reply-To: <CAPZw6vNtRpXny=XzB=v88R944eZOP7Lg4RRax8Q9xetRrY7HgA@mail.gmail.com>
References: <CAPZw6vNtRpXny=XzB=v88R944eZOP7Lg4RRax8Q9xetRrY7HgA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 6 Oct 2017 07:00:01 -0700
Message-ID: <CAMKF1sqZP6b7YO5iO5aDro=devyuzEBVUtG++CjwtFXdkGSriA@mail.gmail.com>
To: Torsten Sievers <torstensievers@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbaking a recipe often triggers a do_package_write_rpm of a dependant recipe... why?
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
X-List-Received-Date: Fri, 06 Oct 2017 14:00:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 5, 2017 at 3:09 AM, Torsten Sievers
<torstensievers@googlemail.com> wrote:
> Hi guys,
>
> Here is the situation:
>
> I have two custom made recipes, one is a SDK , the other one is a set of
> examples that use the sdk.
>
> The examples recipe has DEPENDS and RDEPENDS set that point to artifacts
> that are produced by the SDK recipe.
>
> So far, so normal
>
> Now the strange thing happens:
>
> when I do
>
> bitbake sdk
>
> everything is fine, it configures,compiles,installs and eventually create a
> rpm (by do_package_write_rpm)
>
> when I run
>
> bitbake examples
>
> immediately after the finish of the bitbake sdk
>
> it is compiling,installing etc the example rpm. However it is also very
> often (but not always) re-triggering the do_package_write_rpm from the SDK.
> but why?
>
> I double checked, the SDK code/recipe was not touched, and the SDK rpm was
> sitting right there before I bitbaked the examples.
>
>
> i am digging deep inside bitbake / yocto recipes for days but i cannot find
> the rootcause...
>
> Any hint what could cause this? I would not bother too much, but the
> building of the SDK rpms takes roughly 10 minutes, thus significantly
> slowing down my development iterations.
>
> Any hints are highly appreciated...

hard to know without seeing the code but you can try to dump the task
signatures for do_package_write_rpm task from sdk recipe or use
bitbake-diffsigs tool to compute the differencs between two runs of
this task which
can give some insights into the task variable dependencies which might be
in play

> BR
>   Torsten
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

