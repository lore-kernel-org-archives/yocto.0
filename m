Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5468.1581173955504408596
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 06:59:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D108E014C6; Sat,  8 Feb 2020 06:59:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAEDEE014C6
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 06:59:13 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:46262 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j0RZg-007tKO-CL; Sat, 08 Feb 2020 09:59:12 -0500
Date: Sat, 8 Feb 2020 09:59:10 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Jonatan Palsson <jonatan.p@gmail.com>
cc: Leon Woestenberg <leon@sidebranch.com>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
In-Reply-To: <CAKm+giNpqiOwQfjtAwnmqF_6kXOgb4Re11UT90A9cKmdo6w=TQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002080957430.2147342@localhost.localdomain>
References: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain> <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com> <CAKm+giNpqiOwQfjtAwnmqF_6kXOgb4Re11UT90A9cKmdo6w=TQ@mail.gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sat, 8 Feb 2020, Jonatan Palsson wrote:

> Hello Robert & Leon,
>
> > So I think it might be harmful to replace it with "=", as it would no
> > longer provide libpcre.
>
> I had a look at the variable expansions bitbake -e. Here are two
> examples. The vim recipe uses "PROVIDES = xxd" (which would cause
> weird effects if = simply overwrote any existing ${PN} value), and the
> libpcre2 recipe uses "PROVIDES += pcre2", as already mentioned.
>
> vim:
> # $PROVIDES [4 operations]
> #   set ... /poky/meta/conf/bitbake.conf:275
> #     ""
> #   _prepend ... /poky/meta/conf/bitbake.conf:276
> #     "${PN} "
> #   set ... /poky/meta/conf/documentation.conf:335
> #     [doc] "A list of aliases that a recipe also provides. ... SNIP ...
> #   set ... /poky/meta/recipes-support/vim/vim_8.2.bb:3
> #     "xxd"
> # pre-expansion value:
> #   "${PN} xxd"
> PROVIDES="vim xxd"
>
> libpcre2:
> # $PROVIDES [4 operations]
> #   set ... /poky/meta/conf/bitbake.conf:275
> #     ""
> #   _prepend ... /poky/meta/conf/bitbake.conf:276
> #     "${PN} "
> #   set ... /poky/meta/conf/documentation.conf:335
> #     [doc] "A list of aliases that a recipe also provides. ... SNIP ....
> #   append ... /poky/meta/recipes-support/libpcre/libpcre2_10.33.bb:24
> #     "pcre2"
> # pre-expansion value:
> #   "${PN}  pcre2"
> PROVIDES="libpcre2  pcre2"

  argh ... that is, of course, what i should have done first, just
check the environment for the recipe. ok, that pretty much confirms
that, barring some exceptional circumstances, most instances of
"PROVIDES +=" are not harmful, just redundant.

rday
