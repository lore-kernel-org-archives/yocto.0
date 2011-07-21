Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7CF74C800A1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 12:08:56 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1Qjwk2-0003qd-3f; Thu, 21 Jul 2011 13:08:54 -0400
Date: Thu, 21 Jul 2011 13:08:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4E285718.10302@intel.com>
Message-ID: <alpine.DEB.2.02.1107211307240.4686@localhost6.localdomain6>
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
	<4E2829B1.7080506@intel.com>
	<CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
	<4E285718.10302@intel.com>
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
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 21 Jul 2011 17:08:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 21 Jul 2011, Scott Garman wrote:

> On 07/21/2011 09:32 AM, McClintock Matthew-B29882 wrote:
> > On Thu, Jul 21, 2011 at 8:29 AM, Scott Garman<scott.a.garman@intel.com>
> > wrote:
> > > bitbake world should build all of the available packages that aren't
> > > explicitly excluded due to machine incompatibilities. It doesn't generate
> > > a
> > > final image though, just all of the output packages.
> >
> > Is there an easy way to remove a specific package from being built
> > with running bitbake world? There are unmet dependencies:
> >
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing PROVIDES 'libmad'
> > ERROR: Required build target 'libomxil' has no buildable providers.
> > Missing or unbuildable dependency chain was: ['libomxil', 'libmad']
>
> This happens because conf/distro/include/default-distrovars.inc excludes some
> recipes which are known to use commercial licenses:
>
> COMMERCIAL_LICENSE ?= "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp"
>
> If you'd like to build these recipes, set COMMERCIAL_LICENSE = "" in your
> local.conf.

  related to richard's earlier post about how to exclude packages,
shouldn't the initial settings be consistent, then?  either a default
yocto setup should include commercial licenses, or exclude them (and
their packages) entirely.  it seems that running a simple "bitbake
world" shouldn't just fail.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

