Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8730CE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:10:22 -0700 (PDT)
Received: from [142.204.70.21] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RJn8W-0001p0-Cb; Fri, 28 Oct 2011 10:10:20 -0400
Date: Fri, 28 Oct 2011 10:10:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Brian Park <bsp2020@gmail.com>
In-Reply-To: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1110281009190.7011@localhost6.localdomain6>
References: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: Building for pandaboard
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
X-List-Received-Date: Fri, 28 Oct 2011 14:10:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 27 Oct 2011, Brian Park wrote:

> Hi,

> I'm interested in using Yocto to build linux for PandaBoard. It
> seems there are already patches some where that I can use to build
> for panda, as I found some discussions mentioning PandaBoard patch
> in the archive. But I could not apply it. I'd appreciate some
> pointers on how to find and apply the right patch.
>
> Just trying to apply
> http://article.gmane.org/gmane.linux.embedded.yocto.general/2037/match=pandaboard as a patch
> using "git am" command gave the following error. I'm using release 1.1 Edison.
>
> briansp@LinuxMint11 ~/poky $ git am < ~/Documents/pandaboard.patch
> previous rebase directory /home/briansp/poky/.git/rebase-apply still exists but mbox given.
>
> I'm new to developing for linux and yocto. So, any help would be appreciated.

  i am particulartly interested in this topic as i have two
pandaboards waiting to be yocto-ized.  might this be a more
appropriate topic for the pandaboard mailing list?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

