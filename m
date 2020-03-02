Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web09.125.1583188242270091467
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 14:30:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 69B3B40C2A;
	Mon,  2 Mar 2020 22:30:41 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKYcvq4fIDUK; Mon,  2 Mar 2020 22:30:41 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 3EE9340C14;
	Mon,  2 Mar 2020 22:30:39 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 8CB5716D1BD; Mon,  2 Mar 2020 17:30:38 -0500 (EST)
Date: Mon, 2 Mar 2020 17:30:38 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
Message-ID: <20200302223038.GE1578@denix.org>
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
 <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com>
 <35f9783b-70f8-ef58-c113-e1b2fe20e038@kernel.crashing.org>
MIME-Version: 1.0
In-Reply-To: <35f9783b-70f8-ef58-c113-e1b2fe20e038@kernel.crashing.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 02, 2020 at 04:27:05PM -0600, Mark Hatle wrote:
> 
> 
> On 3/2/20 12:42 PM, Khem Raj wrote:
> > 
> > 
> > On 3/2/20 9:39 AM, Mark Hatle wrote:
> >> In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
> >> of gcc were disabled by default.  This behavior may be required by some
> >> (poorly written) makefiles.
> >>
> >> This will allow someone to do:
> >>
> >> gcc *.c -o myoutput
> >>
> >> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
> >> ---
> >>   recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> >> index 9c0d828..e0463c6 100644
> >> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> >> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> >> @@ -1,5 +1,5 @@
> >>   INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
> >> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
> >> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
> > 
> > this change is fine. is this the only place we need it ?
> 
> Yes, it doesn't do anything if the generated toolchain isn't mingw.. and AFAIK,

Where does this bbappend go? Should this patch be designated to mingw layer?


> we're only build cross-canadian there.
> 
> (binutils and others don't appear to have this option, unless I just missed it.)
> 
> --Mark
> 
> >>   LDFLAGS_append_sdkmingw32 = " -Wl,-static"
> >>   EXEEXT_sdkmingw32 = ".exe"
> >>   ELFUTILS_sdkmingw32 = ""
> >>
> >>
> >>
> >>
> >>
> >> 

> 

