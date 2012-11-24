Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D72D9E0127C
	for <yocto@yoctoproject.org>; Sat, 24 Nov 2012 00:03:47 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Y7n2n3Dfgz4KK64;
	Sat, 24 Nov 2012 09:03:45 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Y7n2n264Rzbbk1;
	Sat, 24 Nov 2012 09:03:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id l23T6yph_hrR; Sat, 24 Nov 2012 09:00:44 +0100 (CET)
X-Auth-Info: lOtbUbeZUQgeoE6WQIHaFRCL8fqEHUlSSz2krCBrF5k=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Sat, 24 Nov 2012 09:03:43 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id B68E51A6D98;
	Sat, 24 Nov 2012 09:03:42 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 6E0A5201070;
	Sat, 24 Nov 2012 09:03:42 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <3038126.PEqOPPdATB@helios>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<1385552.yOr8lfiUWF@helios>
	<alpine.DEB.2.02.1211230924450.3405@oneiric>
	<3038126.PEqOPPdATB@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Fri, 23 Nov 2012 14:39:23 +0000."
Date: Sat, 24 Nov 2012 09:03:42 +0100
Message-Id: <20121124080342.6E0A5201070@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: inconsistent pages out there for setting up your yocto dev host
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
X-List-Received-Date: Sat, 24 Nov 2012 08:03:48 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul,

In message <3038126.PEqOPPdATB@helios> you wrote:
>
> >   if you're on an allegedly supported distro, and you do an upgrade,
> > it's entirely possible that one of those bits of software gets
> > upgraded in a way that breaks OE/yocto, and by using ASSUME_PROVIDED,
> > you'll automatically start using that newer utility.  or is the list
> > of supported distros specifically only those installed out of the box
> > and never updated?  if that's the case, then, yes, i agree with your
> > position.
> 
> That's why we test specific versions of distributions, and with the Poky distro 
> config we warn the user if the distro/distro version is untested. It's rare 
> that you get that kind of breakage between major versions; if there were then 
> other applications are likely to be affected so it would be considered a 
> regression in that distro.

But of course there have always been, and will always be, such
regressions. Just look at Fedora 17 (one of the supported versions of
distributions), if one of the updates pulls in git version 1.7.11.7
and suddenly all git downloads using HTTP protocol will fail for you
(due to bug 865692, see https://bugzilla.redhat.com/show_bug.cgi?id=865692)

Actually it may make a lot of sense for certain configurations to
bootstrap more tools from a known version of the sources.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Beware of the Turing Tar-pit in  which  everything  is  possible  but
nothing of interest is easy.

