Return-Path: <nick@leverton.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD4A4E008E1; Tue, 16 Feb 2016 02:18:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from tauism.org (leverton.org [80.229.14.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C60E0086B
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 02:18:29 -0800 (PST)
Received: (qmail 14167 invoked from network); 16 Feb 2016 10:18:28 +0000
Received: from unknown (HELO localhost) (127.0.0.1)
	by localhost with SMTP; 16 Feb 2016 10:18:28 +0000
X-Virus-Scanned: Debian amavisd-new at hub.home
Received: from hub.home ([127.0.0.1])
	by localhost (hub.home [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id 0fpkRUQ1xqTe for <yocto@yoctoproject.org>;
	Tue, 16 Feb 2016 10:18:19 +0000 (GMT)
Received: (nullmailer pid 14160 invoked by uid 130);
	Tue, 16 Feb 2016 10:18:19 -0000
X-OS-Fingerprint: (up 111) (distance -1, link IPIP tunnel)
Received: from inspiredesigns.force9.co.uk (HELO nickl.localnet)
	(80.229.47.107) (smtp-auth username nj@leverton.org, mechanism login)
	by tauism.org (qpsmtpd/0.84) with (AES256-SHA encrypted) ESMTPSA;
	Tue, 16 Feb 2016 10:18:19 +0000
From: Nick Leverton <nick@leverton.org>
To: yocto@yoctoproject.org
Date: Tue, 16 Feb 2016 10:18:12 +0000
Message-ID: <3643440.C5VSuRxHDx@nickl>
User-Agent: KMail/4.14.1 (Linux/4.3.0-0.bpo.1-amd64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Tue, 16 Feb 2016 10:18:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 11 Feb 2016 14:32:50 Burton, Ross wrote:
> On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org> wrote:
> > Possibly a little early - Debian 7 will be going onto LTS security support
> > for
> > two years, starting some time this month.  Quoting from
> > https://wiki.debian.org/LTS
> 
> Ah yes, I'd forgotten about the LTS project and was looking at the security
> team.
> 
> This does make it less clear, but it's still an old release and we can't
> support/test on everything.

I agree it appears old by the standards of fast moving bleeding edge distros.  
But despite what I said last week it's not really that ancient. Debian 7 is 
still an officially supported version, and as an LTS version you're perhaps now 
more likely to find your own users still on it.

The LTS announcement was made just this weekend, by the way:

"There will be no further security support for Debian 6.0.

The LTS Team will prepare the transition to Debian 7 ("wheezy"), which
is the current oldstable release. The LTS team will take over support
from the Security Team on April 26, 2016.

Debian 7 will also receive Long Term Support for five years after its
initial release with support ending in May 2018"

I can't say what Yocto ought to do, but if it were possible to make the sparse 
support into an option, would that be a compromise ?   The patch linked from 
#9099 suggests that only two places would need to use that option.

Nick

