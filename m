Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C72BE0059B
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 07:29:21 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S6OER-0004xP-7o; Sat, 10 Mar 2012 10:29:19 -0500
Date: Sat, 10 Mar 2012 10:29:09 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F5B6B44.7020409@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1203101025220.24607@oneiric>
References: <alpine.DEB.2.02.1203100523020.26289@oneiric>
	<4F5B3272.2010607@mlbassoc.com>
	<alpine.DEB.2.02.1203100654540.29307@oneiric>
	<4F5B6B44.7020409@mlbassoc.com>
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
Subject: Re: how to set up PREMIRRORS_prepend to avoid constant git clones?
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
X-List-Received-Date: Sat, 10 Mar 2012 15:29:21 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Mar 2012, Gary Thomas wrote:

> On 2012-03-10 06:39, Robert P. J. Day wrote:

... snip ...

> >    $ bitbake -c fetchall core-image-minimal
> >
> > and got something unexpected:
> >
> > NOTE: package bash-4.2-r1: task do_fetch: Started
> > ERROR: Function failed: Network access disabled through BB_NO_NETWORK
> > but access rquested with command /usr/bin/env wget -t 5 -nv
> > --passive-ftp --no-check-certificate -P
> > /home/rpjday/yocto/builds/beag2/downloads
> > 'ftp://ftp.gnu.org/gnu/bash/bash-4.2-patches/bash42-001' (for url
> > None)
> > ERROR: Logfile of failure stored in:
> > /home/rpjday/yocto/builds/beag2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/bash-4.2-r1/temp/log.do_fetch.32479
> > Log data follows:
> > | DEBUG: Trying PREMIRRORS
> > ... snip ...
> >
> >    i can clearly see the problem -- while i have the bash tarball
> > itself in my own mirror, i don't have the patches to go with it, as
> > defined in the recipes file:
> >
> > SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
> >
> > ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-001;apply=yes;striplevel=0;name=patch001
> > \
> > ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-002;apply=yes;striplevel=0;name=patch002
> > \
> > ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-003;apply=yes;striplevel=0;name=patch003
> > \
> > ... etc etc ...
> >
> >    when i went looking for actual downloads in step 1, i just searched
> > for sizable tarballs or zip files, it never occurred to me to check
> > for patch files.  so i guess i just have to be more observant and
> > check for patch files as well (or anything else a recipe might want to
> > download).
> >
> >    so far, so good?
>
> I didn't check but this is often the recipe's fault.  It must specify
> an exact git SRCREV, not a tag, for the NO_NETWORK to be successful.

  i'm not sure what you're saying here.  the patches are simple files,
nothing to do with git.  the bash source itself is properly being
fetched from my mirror -- it's the numerous patch files i was unaware
of that still require network access; that is, until i manually copied
them over to my mirror directory, and that solved the problem.

  i just had to notice that the bash recipe downloaded a number of
patch files, then add them to my local mirror.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

