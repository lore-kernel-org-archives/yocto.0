Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 287DCE013C9
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 03:23:59 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S6KP0-00004x-HZ; Sat, 10 Mar 2012 06:23:58 -0500
Date: Sat, 10 Mar 2012 06:23:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F5B3272.2010607@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1203100621420.12050@oneiric>
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
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 10 Mar 2012 11:23:59 -0000
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

  one last point -- what i typically do as a test is always

  $ bitbake -c fetchall <target>

before doing the actual build, just to see that everything is
fetchable and gets fetched.  is there a bitbake task that would tell
me what needs actual fetching before i start that?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

