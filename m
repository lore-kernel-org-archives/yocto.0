Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1038E0034C
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:50:48 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:37410 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TjbHT-0000IX-KD; Fri, 14 Dec 2012 14:50:47 -0500
Date: Fri, 14 Dec 2012 14:50:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212141449280.21599@oneiric>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is GMAE?
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
X-List-Received-Date: Fri, 14 Dec 2012 19:50:48 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 14 Dec 2012, Burton, Ross wrote:

> On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
> > "If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
> > can generate the toolchain installer using bitbake meta-toolchain."
> >
> > After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.
> >
> > It might be good to put this acronym somewhere in the manual.
> > (I'm still not sure if I need GMAE or not...)
>
> Basically, GMAE means GTK+ 2 and bits of the GNOME stack.
>
> A stealth plan of mine is to remove every trace of GMAE from Yocto.

  a good place to start would be to remove the "gmae" component from
the name of the toolchains themselves:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/toolchain/x86-64/

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

