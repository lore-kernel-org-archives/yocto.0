Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A15F3E013CA
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 05:39:42 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S6MWI-000717-3W; Sat, 10 Mar 2012 08:39:38 -0500
Date: Sat, 10 Mar 2012 08:39:31 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F5B3272.2010607@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1203100654540.29307@oneiric>
References: <alpine.DEB.2.02.1203100523020.26289@oneiric>
	<4F5B3272.2010607@mlbassoc.com>
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
X-List-Received-Date: Sat, 10 Mar 2012 13:39:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Mar 2012, Gary Thomas wrote:

> All you really need are these lines:
>   SOURCE_MIRROR_URL ?= "file://${COREBASE}/sources/"
>   INHERIT += "own-mirrors"
> Adjust the SOURCE_MIRROR_URL to wherever you want the files.  I also always
> add
>   BB_GENERATE_MIRROR_TARBALLS = "1"
> This will let the fetcher make a git2_XXX tarball, once the repo has been
> cloned.
>
> My understanding is that the git (and other SCM) fetcher works like this:
>   * If there is a git2_XXX tar file in the DL_DIR (or mirror), unpack it
>     into ${BUILD}/downloads/git2
>   * Check to see if the desired ${SRCREV} is present.  If not, do a 'git pull'
>     to update the local clone and then rebuild the git2_XXX tarball.
> This way, you only have to clone once - just copy any generated tarballs back
> to your source mirror.
>
> Finally, if you set
>   BB_NO_NETWORK = "1"
> the build will fail if bitbake *ever* has to go to the network,

  well, that (sort of) worked so let me summarize for the benefit of
anyone else interested.

  i configured for a new build (beagleboard), and added the following
to the bottom of local.conf:

SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
INHERIT += "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS = "1"
# BB_NO_NETWORK = "1"

  (since i know i'll need to do some downloading, i won't ban network
access, obviously, not for this first run.)

  did a "bitbake -c fetchall core-image-minimal", then checked my
downloads/ directory for any content that actually got downloaded and
tarball-ed, and found one obvious and sizable download:

... 87770604 2012-03-10 06:45 gcc-4_6-branch_gcc.gnu.org_.svn.gcc.branches_184847_.tar.gz

  i copied that over to my own mirror dl/ directory, then configured a
whole new build (also beagleboard), added same mirror directives to
local.conf except (of course) banning network access this time, and
once again did

  $ bitbake -c fetchall core-image-minimal

and got something unexpected:

NOTE: package bash-4.2-r1: task do_fetch: Started
ERROR: Function failed: Network access disabled through BB_NO_NETWORK
but access rquested with command /usr/bin/env wget -t 5 -nv
--passive-ftp --no-check-certificate -P
/home/rpjday/yocto/builds/beag2/downloads
'ftp://ftp.gnu.org/gnu/bash/bash-4.2-patches/bash42-001' (for url
None)
ERROR: Logfile of failure stored in:
/home/rpjday/yocto/builds/beag2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/bash-4.2-r1/temp/log.do_fetch.32479
Log data follows:
| DEBUG: Trying PREMIRRORS
... snip ...

  i can clearly see the problem -- while i have the bash tarball
itself in my own mirror, i don't have the patches to go with it, as
defined in the recipes file:

SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \

${GNU_MIRROR}/bash/bash-4.2-patches/bash42-001;apply=yes;striplevel=0;name=patch001 \
${GNU_MIRROR}/bash/bash-4.2-patches/bash42-002;apply=yes;striplevel=0;name=patch002 \
${GNU_MIRROR}/bash/bash-4.2-patches/bash42-003;apply=yes;striplevel=0;name=patch003 \
... etc etc ...

  when i went looking for actual downloads in step 1, i just searched
for sizable tarballs or zip files, it never occurred to me to check
for patch files.  so i guess i just have to be more observant and
check for patch files as well (or anything else a recipe might want to
download).

  so far, so good?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



