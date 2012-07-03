Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F983E006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 02:52:03 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:58446 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Slzm4-0004mp-Ug; Tue, 03 Jul 2012 05:52:01 -0400
Date: Tue, 3 Jul 2012 05:51:53 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Zhang, Jessica" <jessica.zhang@intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46A874F6@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1207030547210.29271@oneiric>
References: <alpine.DEB.2.02.1206260424590.22400@oneiric>
	<CAKSdS8JfwcMZpXej0jykpquWvAN8vPyJPrmq3u_Y6i47iYdzZA@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46A874F6@ORSMSX101.amr.corp.intel.com>
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
Subject: Re: how does one use a prebuilt toolchain from the toolchain/ directory?
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
X-List-Received-Date: Tue, 03 Jul 2012 09:52:03 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 2 Jul 2012, Zhang, Jessica wrote:

> On Tue, Jun 26, 2012 at 4:51 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

... snip ...

> > 4) once i install a toolchain, how do i use it?  say i install the arm
> > toolchain, and want to build a beagleboard image.  at what point do i
> > source the arm toolchain environment setup file?  is that all it
> > takes?  will the bitbake build process automatically recognize what
> > i've done and use that toolchain?
>
> [JZ] Please note this toolchain is meant to be used by application
> developers not image builders.  This toolchain is meant for cross
> development that allows you to develop target application on your
> host machines.  Once you source the environment-setup script, it'll
> setup your path correctly that makes it able to find all the cross
> development tools, e.g.
> /opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc
> will be used for compiling your programs.

  ah, i wasn't aware that the prebuilt toolchains were meant primarily
for *app* development, not *image* development.  i already knew how to
use them for app development, that's fairly straightforward.

  which brings me back to my original curiosity -- how can i use the
same toolchain across a number of different *image* builds?  under
what circumstances does that make sense, and how would i do that?

  say i want to configure and build images for a number of
beagleboards, and a beaglebone, and a pandaboard, etc., all of which
require an ARM toolchain.  if these builds can share the same
toolchain, how can i build it once, then not have to build it over and
over for the remaining builds?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

