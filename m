Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D04CE0030A
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 09:06:12 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RMMHR-0002oo-DC; Fri, 04 Nov 2011 12:06:09 -0400
Date: Fri, 4 Nov 2011 12:06:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <4EB40CEC.4030106@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1111041205450.6804@localhost6.localdomain6>
References: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
	<4EB40CEC.4030106@linux.intel.com>
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
Subject: Re: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Fri, 04 Nov 2011 16:06:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 4 Nov 2011, Joshua Lock wrote:

> On 04/11/11 08:57, Robert P. J. Day wrote:
> >
> >   stumbled over this so i did a more thorough search:
> >
> > $ grep -w PARALLEL_MAKE $(find . -name *.bb)
> > ./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE = ""
> > ./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=""
> > ./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE = ""
> > ... more snipped ...
> >
> >   why are individual recipes setting PARALLEL_MAKE to the empty
> > string?  it's a *build* option, why would it have any relevance to
> > individual .bb files?
>
> Because that individual BB file has problems being run with parallel
> make (make -j).

  ok, makes sense, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

