Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10942.1581431484820318970
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:31:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73055E01626; Tue, 11 Feb 2020 06:31:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9687BE01626
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:31:22 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:55482 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1WZN-00FGc4-7V; Tue, 11 Feb 2020 09:31:21 -0500
Date: Tue, 11 Feb 2020 09:31:18 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
cc: Jonatan Palsson <jonatan.p@gmail.com>, 
    Leon Woestenberg <leon@sidebranch.com>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
In-Reply-To: <ceaa8ee91198acbcf0c64390c45d32ada8936373.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.2002110930060.42350@localhost.localdomain>
References: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain>  <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>  <CAKm+giNpqiOwQfjtAwnmqF_6kXOgb4Re11UT90A9cKmdo6w=TQ@mail.gmail.com>  <alpine.LFD.2.21.2002110525540.30584@localhost.localdomain>
 <ceaa8ee91198acbcf0c64390c45d32ada8936373.camel@linuxfoundation.org>
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

On Tue, 11 Feb 2020, Richard Purdie wrote:

> On Tue, 2020-02-11 at 05:32 -0500, rpjday@crashcourse.ca wrote:
> >   second, i think we all agree that it is rarely necessary to use
> > "PROVIDES +=", although i did run across one case in
> > recipes-core/glibc/glibc.inc:
> >
> >   PROVIDES = "virtual/libc"
> >   PROVIDES += "virtual/libintl virtual/libiconv"
> >
> > where, sure, if you break it over more than one line, yes, then you
> > need it.
>
> I think the original intent was that bitbake.conf defines the basic
> PROVIDES/DEPENDS and then the recipes adjust as needed.
>
> As such, PROVIDES and DEPENDS would then always use +=.
>
> Unfortunately over the years this has gotten lost and bitbake.conf
> and base.bbclass had to become more inventive about how they set the
> defaults for the variables.
>
> As such, I think += actually makes sense but I realise that isn't
> the way most recipes work now. We could try and fix that but it does
> seem like a marginal gain when there are bigger issues.

  oh, i wasn't suggesting any sort of massive cleanup; i just wanted
to make sure i was explaining it properly to any potential students to
make sure they appreciated corner cases like this.

rday
