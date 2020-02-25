Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.249.1582655431284894962
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 10:30:31 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8707E0175E; Tue, 25 Feb 2020 10:30:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.68.198.64 listed in list.dnswl.org]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 731CFE003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 10:30:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id C184740C2E;
	Tue, 25 Feb 2020 18:30:26 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6jF5vPsGxtYn; Tue, 25 Feb 2020 18:30:26 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id A294840C27;
	Tue, 25 Feb 2020 18:30:25 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id E65A01738D4; Tue, 25 Feb 2020 13:30:24 -0500 (EST)
Date: Tue, 25 Feb 2020 13:30:24 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Joel A Cohen <aaron@assonance.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] Using "latest git" versions of recipes
Message-ID: <20200225183024.GA1578@denix.org>
References: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 25, 2020 at 01:21:53PM -0500, Joel A Cohen wrote:
> Hi all,
> 
> What I've done for quite a while when creating recipes for code that is
> under heavy development is create 2 version of the recipe.
> 
> 1) recipe_1.0.0.bb (a known-stable recipe)
> 
> 2) recipe_git.bb (which contains something like:
> SRCREV="${AUTOREV}"
> SRCPV="1.0.1+git${SRCPV}"
> DEFAULT_PREFERENCE = "-1"
> 
> 
> The major problem I have with this, is that it defeats BB_NO_NETWORK, even
> if I'm not using the git version of the recipe (because bitbake wants to go
> check what the latest version is of the recipe during parsing).
> 
> I'm currently experimenting with a different approapch, which seems to have
> several advantages. I wanted to share it and get commentary.
> 
> 1) Add a new class, "use-git.bbclass":
> # This allows using the latest version of the source without requiring a
> separate
> # "recipe_git.bb". To use:
> # 1) Add: INHERIT += "use-git"
> # 2) Add: GIT_PNS = "recipe1 recipe2 etc"
> 
> GIT_PNS ?= ""
> GIT_PNS[type] = "list"
> 
> python () {
>     pn = d.getVar('PN')
>     git_pns = d.getVar('GIT_PNS', [])
> 
>     if pn in git_pns:
>         d.setVar('SRCREV', d.getVar('AUTOREV'))
>         srcpv = d.getVar('SRCPV')
>         d.appendVar('PV', '+git' + srcpv)
>         bb.note('Using latest git source code for %s, as recipe %s' % (pn,
> d.getVar('BP')))
> }
> 
> 
> 
> 2) In local.conf:
> INHERIT += "use-git"
> GIT_PNS = "recipe1 recipe2 etc"
> 
> 
> 
> This is nice, because I no longer have to create those recipe_git.bb
> recipes, and it's a central place to go configure a "use latest source
> code" setting.
> 
> Is this interesting to anyone else?
> 
> --Aaron

You know that you can poke SRCREV and other vars from a config file, 
such as local.conf?

SRCREV_pn-recipe1 = "${AUTOREV}"
SRCREV_pn-recipe2 = "${AUTOREV}"

-- 
Denys
