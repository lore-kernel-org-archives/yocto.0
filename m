Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BAC0E013C9
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 03:17:58 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S6KJA-0008Ir-Nl; Sat, 10 Mar 2012 06:17:56 -0500
Date: Sat, 10 Mar 2012 06:17:52 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F5B3272.2010607@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1203100606250.27482@oneiric>
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
X-List-Received-Date: Sat, 10 Mar 2012 11:17:58 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Mar 2012, Gary Thomas wrote:

> All you really need are these lines:
>   SOURCE_MIRROR_URL ?= "file://${COREBASE}/sources/"

  ah ... and i see no mention of that in the variable glossary in the
reference manual. :-P  i'm assuming that that value is nothing more
than the name of my massive tarballs directory, right?

>   INHERIT += "own-mirrors"

> Adjust the SOURCE_MIRROR_URL to wherever you want the files.
>
> I also always add
>
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

  yup, that's what i was after -- the ability to avoid constant
cloning.  and i see i still have to manually copy the git-based
tarball back to my own mirror, that's fine, i would have expected
that.

> Finally, if you set
>   BB_NO_NETWORK = "1"
> the build will fail if bitbake *ever* has to go to the network, i.e. not find
> the desired files in the source mirror or DL_DIR.  This is a great way to
> insure
> that you've got what you need locally.  I use this all the time to make sure I
> have a fully populated local cache of sources.

  i knew about that setting, i can use that for, as you say,
verification that i have all local sources.

  ok, i'm off to try this, i'll let you know.  thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

