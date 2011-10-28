Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A422E013E0
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 17:58:23 -0700 (PDT)
Received: from [70.28.50.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RJam4-0006WZ-Cz; Thu, 27 Oct 2011 20:58:21 -0400
Date: Thu, 27 Oct 2011 20:58:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4EA9C676.7000408@intel.com>
Message-ID: <alpine.DEB.2.02.1110272057160.3759@localhost6.localdomain6>
References: <20111027162751.fbwguloe84sooggc@crashcourse.ca>
	<4EA9C676.7000408@intel.com>
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
Subject: Re: What's the purpose of "BDIR" in oe-buildenv-internal?
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
X-List-Received-Date: Fri, 28 Oct 2011 00:58:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 27 Oct 2011, Scott Garman wrote:

> On 10/27/2011 01:27 PM, Robert P. J. Day wrote:
> > prepping to give a yocto talk to my local (ottawa) LUG next week,
> > and was reviewing the logic of the setup starting with
> > oe-init-build-env, and noticed in scripts/oe-buildenv-internal a
> > test of the variable BDIR for the name of the build directory. but
> > there's no mention of that variable in the calling
> > oe-init-build-env, and i see no mention of it in the intro-level
> > docs.
> >
> > clearly, one could use that shell env variable if one wanted to
> > name the build directory to be used, but given that there's
> > absolutely no explanation of it anywhere for a new user, what
> > exactly is its purpose?
>
> This allows you to specify a build directory that lives elsewhere on
> your filesystem, rather than in poky/build. This is handy in case
> you want to keep the build system source tree pristine.
>
> Simply source the build init script with the desired build directory
> as an argument. I'm quite sure we have this documented, although
> BDIR isn't explicitly mentioned.

  that's the point i was raising -- that variable's value is obvious,
it's just not described anywhere i noticed.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

