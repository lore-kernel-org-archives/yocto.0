Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3670.1589368384398066365
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 04:13:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ED6EE01B4C; Wed, 13 May 2020 04:13:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D374FE01B0B
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 04:13:02 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:50326 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jYpJt-0073EY-B6; Wed, 13 May 2020 07:13:01 -0400
Date: Wed, 13 May 2020 07:12:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
In-Reply-To: <20200513103944.5d7jjdnqs352htpy@qschulz>
Message-ID: <alpine.LFD.2.21.2005130706400.9129@localhost.localdomain>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain> <20200513103944.5d7jjdnqs352htpy@qschulz>
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

On Wed, 13 May 2020, Quentin Schulz wrote:

... snip ...

> If it's really widely used, maybe something to add to
> openembedded-core/files/common-licenses/ ? So that you don't need
> any of the suggested ways?

  that was one of the first things that came to mind ... if there are
enough packages with this license, why not just make it official? i
just did a quick search, and this is the only layer i see that makes
reference to it:

  busybox/networking/tls_aes.c

/*
 * Copyright (C) 2017 Denys Vlasenko
 *
 * Licensed under GPLv2, see file LICENSE in this source tree.
 */

/* This AES implementation is derived from tiny-AES128-C code,
 * which was put by its author into public domain:
 *
 * tiny-AES128-C/unlicense.txt, Dec 8, 2014
 * """
 * This is free and unencumbered software released into the public domain.

more info on that license:

  https://choosealicense.com/licenses/unlicense/

open to suggestions.

rday
