Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web09.931.1580255867646975960
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 15:57:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id F130B40BCC;
	Tue, 28 Jan 2020 23:57:46 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uy_F260WSPEC; Tue, 28 Jan 2020 23:57:46 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id B36D7400E8;
	Tue, 28 Jan 2020 23:57:45 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 1A4C91743C2; Tue, 28 Jan 2020 18:57:45 -0500 (EST)
Date: Tue, 28 Jan 2020 18:57:45 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Alexandru Onea <onea.alex@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] what does DEPENDS have to do with do_build
Message-ID: <20200128235745.GO4735@denix.org>
References: <CAJgSc4wdfwu4-3ttb1hN-EydG4n788=cHB6kxahLSGjP-zX4Ug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgSc4wdfwu4-3ttb1hN-EydG4n788=cHB6kxahLSGjP-zX4Ug@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 29, 2020 at 01:45:18AM +0200, Alexandru Onea wrote:
> Hello community,
> 
> I have a recipe which DEPENDS on ncurses. It is clearly a build dependency
> since do_configure cannot execute successfully without finding the ncurses
> headers. It might also be a run-time dependency but I have not specified it
> so I expect that bitbake will take no action in that direction.
> 
> When I inspect the dependency graph with
> 
> bitbake -g myrecipe -u depexp
> 
> I notice that all of a sudden, the do_build task of my recipe now depends
> on basically half of the world, including stuff that has nothing to do
> directly with either the build or the run-time dependencies of my recipe. I
> understand that those are the recursive dependencies of ncurses (my only
> build dependency), however, my understanding was that DEPENDS only puts a
> dependency between myrecipe:do_configure and ncurses:do_populate_sysroot.
> 
> What does do_build have to do with build dependencies and why is it
> necessary that my recipe now depends on the do_package_write* of all the
> recursive build dependencies?
> 
> Any help is greatly appreciated, as at the moment I am lost.

https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#normal-recipe-build-tasks

8.1.1. do_build
The default task for all recipes. This task depends on all other normal tasks 
required to build a recipe.


In other words, do_build depends on do_fetch, do_unpack, do_patch, do_configure, 
do_compile, do_install, do_package, do_package_write*, etc. and hence it pulls 
all the dependencies required to perform all those tasks.

-- 
Denys


> Best regards,
> Alexandru Onea

> 

