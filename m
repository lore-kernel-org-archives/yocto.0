Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF681E0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 05:47:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2TCllFd031362;
	Thu, 29 Mar 2012 13:47:47 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31242-01; Thu, 29 Mar 2012 13:47:43 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2TClarm031356
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 29 Mar 2012 13:47:38 +0100
Message-ID: <1333025256.14983.29.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf Streif <rudolf.streif@linux.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>
Date: Thu, 29 Mar 2012 13:47:36 +0100
In-Reply-To: <CA+gsK-o4KeAqZLW8gSQkoEBy6jyJvi8EJeZuChfsYgwAF2xCyQ@mail.gmail.com>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
	<1332589972.27577.1.camel@ted>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-raRiKQ7GHLSy4tAJHJmDardhr8by0A9FGJ7diCYo00Uw@mail.gmail.com>
	<1332802684.28414.146.camel@ted>
	<CA+gsK-o4KeAqZLW8gSQkoEBy6jyJvi8EJeZuChfsYgwAF2xCyQ@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: tentative list of vars to be dropped from variable glossary
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 12:47:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-26 at 16:50 -0700, Rudolf Streif wrote:
> Thanks, Richard. Clearer now but not entirely.
> 
>         
>         
>         >> BBMASK removes recipes from being parsed. It does not
>         remove them from
>         >> images although that would I guess be an indirect result
>         since you could
>         >>no longer build them.
>         
>         
> Yes, it removes it from being parsed. I used, for test although not
> sensible, BBMASK = "base-passwd". If I then tried building
> core-image-minimal it fails with "Nothing provides base-passwd". If
> one could use BBMASK to customize images as suggested
> in http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-customimage-localconf then one would expect the package to be removed indirectly from the image. However, that does not happen, the build just fails.

I hadn't realised Scott had added this to the customising images section
of the manual. This is not what its designed for and we need to move
this to somewhere less confusing.

Scott: This is going to need to move somewhere else in the manual as
this is confusing. I'm going to suggest a 4.12 section "Other tips and
tricks" which says:

"""
Sometimes there are groups of recipes you might wish to filter out. If
there were recipes you know you're never going to want/use, removing
them from parsing would speed up parts of the build for example.

It is possible to filter or mask out both .bb and .bbappend files. You
can do this by providing an expression with the BBMASK variable. Here is
an example:

     BBMASK = ".*/meta-mymachine/recipes-maybe/"

Here, all .bb and .bbappend files in the directory that matches the
expression are ignored during the build process. 
"""

Cheers,

Richard




