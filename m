Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88E8EE012F3
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 16:40:14 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKez6-00079Y-Kz; Sun, 30 Oct 2011 19:40:12 -0400
Date: Sun, 30 Oct 2011 19:40:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20111030231703.4E049180985B@gemini.denx.de>
Message-ID: <alpine.DEB.2.02.1110301939080.5749@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110301735310.4586@localhost6.localdomain6>
	<20111030231703.4E049180985B@gemini.denx.de>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: where does that "50G" disk space figure come from in QS guide?
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
X-List-Received-Date: Sun, 30 Oct 2011 23:40:14 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 31 Oct 2011, Wolfgang Denk wrote:

> Dear Robert,
>
> In message <alpine.DEB.2.02.1110301735310.4586@localhost6.localdomain6> you wrote:
> >
> >   QS guide suggests build process using sato will use about 50G of
> > disk space.  where does that figure come from?  i just did a configure
> > and build of core-image-sato for beagleboard on my 64-bit ubuntu 11.10
> > system and it cost me about 3.5G for the tarball download directory,
> > and just under 28G for the entire build directory.  so where does 50G
> > come from?  and that was *without* economizing using "INHERIT +=
> > rm_work".
>
> After building core-image-sato-sdk, core-image-qte-sdk,
> meta-toolchain-sdk, and meta-toolchain-qte I see 70G used...

  i can believe that, i just want to make that claim in the QS guide a
bit more precise and explain what it represents. ah, well, tomorrow's
another day.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

