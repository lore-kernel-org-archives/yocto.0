Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 403D6E00804
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 15:18:39 -0800 (PST)
Received: from [173.34.6.101] (port=36994 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VzE0j-00070E-EV; Fri, 03 Jan 2014 18:18:37 -0500
Date: Fri, 3 Jan 2014 18:18:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Belisko Marek <marek.belisko@gmail.com>
In-Reply-To: <CAAfyv36VJSx65N_aG2f3MWpQ+YRtQTJLTfgJtojqUNLoZ-qXow@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1401031817080.17356@localhost>
References: <CAAfyv36VJSx65N_aG2f3MWpQ+YRtQTJLTfgJtojqUNLoZ-qXow@mail.gmail.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Fedora 20 building core-image-miminal failed for danny
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Jan 2014 23:18:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 4 Jan 2014, Belisko Marek wrote:

> Hi,
>
> I'm trying to build minimal image for beagleboard in Fedora 20 in poky-danny.
> With small tweaks (basically fix texinfo errors by replacing @colophon
> and doc@cygnus.com) I get rid of some initial bugs but
> binutils-cross-2.22 failing during install (log attached). I cannot
> understand what is an error with install. Any ideas?

  before i even *look* at the attached, coincidentally, i just built
core-image-minimal for beagleboard on fedora 20 using the "git poky"
checkout and it worked fine.

  so now i'll look at the attached and see how it differs from what i
did.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

