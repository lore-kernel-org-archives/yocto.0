Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 152EF4C8009D
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 11:37:01 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QjwF9-0001f4-5C; Thu, 21 Jul 2011 12:36:59 -0400
Date: Thu, 21 Jul 2011 12:36:53 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: McClintock Matthew-B29882 <B29882@freescale.com>
In-Reply-To: <CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1107211236130.4508@localhost6.localdomain6>
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
	<4E2829B1.7080506@intel.com>
	<CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Garman <scott.a.garman@intel.com>
Subject: Re: best cfg for building all of yocto?
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
X-List-Received-Date: Thu, 21 Jul 2011 16:37:01 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 21 Jul 2011, McClintock Matthew-B29882 wrote:

> On Thu, Jul 21, 2011 at 8:29 AM, Scott Garman <scott.a.garman@intel.com> wrote:
> > bitbake world should build all of the available packages that aren't
> > explicitly excluded due to machine incompatibilities. It doesn't generate a
> > final image though, just all of the output packages.
>
> Is there an easy way to remove a specific package from being built
> with running bitbake world? There are unmet dependencies:
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'libmad'
> ERROR: Required build target 'libomxil' has no buildable providers.
> Missing or unbuildable dependency chain was: ['libomxil', 'libmad']

  i saw that a couple days ago but i figured someone else would pick
up on it in short order.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

