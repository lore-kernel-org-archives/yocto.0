Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D017E00D26; Fri, 29 Mar 2019 05:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 017DDE00BAF
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 05:58:10 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44W1xY2qdKzH8;
	Fri, 29 Mar 2019 13:58:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1553864289;
	bh=5KoKgLUKvEJsLWyE0dvy2QPLJMM0umT76uhQAfEhPLo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N+bpKNdB3IvURUa8De4vK89OlIw9ZlNu1VSSbfg+qHV3aimSZ2iPCbPcstKetCOKI
	FymI+FsrWy8fUtyg91eEa3tiJxVdN37UwO0lMdWGw7QwtPdijE6tsno13GMfngguUW
	Q121tU11k7sSLJvFgWiAMrVOLTs/hWu+Dke4kaHRlUXRR5IKGki6jeggGqgd9LPn2z
	AHWAKHhnZKnyyS5tQVm1ynF3GL6qoP8kErX0xnVcAE+GT6EQbn/Lv5JLp1D+5ozNVw
	sFkil5TSaYVJix9nE35tfdEvXcevd+m4lyuQnvlD/XMMhalWAiMvf/nVFVL8QUBSFJ
	1GB2JuufXV+ynhX6dKtLM1ygb9geFQAC4mTpNTs9BQzdlZVxGyv7NUbZkUaaJHXQXk
	UuHzeySM/2utf9MHydIG7MoiTCJw+dnbKiwxJovaf1SycY6VVfxNjZEdwqIqKpugUR
	5W36rHrhBH8bkGDs0kCeNgD+0hb1IgvLxwbJIKoJdacGSYvj+pWi7tN9isv8ittp1F
	tcvF1AOVKcad34u4Eq5gJrFPRggy/rdnTo2nANDp9cUBymZHfVZ3S6ShiCLOO7gDXQ
	WeXGEvh4aM8mDXjgrKobZZAPOv0y8G6q2ARCysSNONtHgMRQaHZ/6ITkBWyNP/XzBE
	tG/eN7qLreO+WPqX1nv1K23o=
Date: Fri, 29 Mar 2019 14:58:07 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20190329125807.GA11351@localhost>
References: <20190329052821.13718-1-akuster808@gmail.com>
	<20190329052821.13718-2-akuster808@gmail.com>
	<20190329065014.GA26574@localhost>
MIME-Version: 1.0
In-Reply-To: <20190329065014.GA26574@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/5] libldb: work around samba libldb packaging issues
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
X-List-Received-Date: Fri, 29 Mar 2019 12:58:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri, Mar 29, 2019 at 08:50:14AM +0200, Adrian Bunk wrote:
> On Thu, Mar 28, 2019 at 10:28:18PM -0700, Armin Kuster wrote:
> > Samba and libldb overlap in a few places. This is the simplest fix for
> > now.
> 
> Adding a quick hack for interaction problems between two packages
> that are both in meta-openembedded by adding a .bbappend in 
> meta-security creates a technical debt while not even helping
> users who are not using meta-security.
> 
> The proper solution is likely to make samba use the external libldb 
> instead of an internal copy.
>...

commit a001e465293b36c03d4ca4500857fe0a67d13e20
Date:   Fri Jul 27 14:09:10 2018 -0700

    samba: Update to 4.8.3
    
    LDB 1.4.0 breaks Samba < 4.9 therefore use internal version


So the root cause is that last summer LDB in meta-openembedded was 
updated to a version not compatible with with the Samba version in 
meta-openembedded.

As workaround Samba was changed to use the internal version
of the library.

What is now proposed is a workaround to fix a regression caused
by the first workaround.

The best way forward would be to upgrade Samba to 4.9 or 4.10 and
use the external LDB again.


cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


