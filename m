Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 115D7E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 12:47:39 -0700 (PDT)
Received: from cpe78cd8ec96008-cm78cd8ec96005.cpe.net.cable.rogers.com
	([173.32.31.66]:33481 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjyDC-0005gu-DW
	for yocto@yoctoproject.org; Wed, 27 Jun 2012 15:47:38 -0400
Date: Wed, 27 Jun 2012 15:47:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.DEB.2.02.1206271335320.24547@oneiric>
Message-ID: <alpine.DEB.2.02.1206271546060.4074@oneiric>
References: <alpine.DEB.2.02.1206271335320.24547@oneiric>
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
Subject: Re: making PDF docs, error in fop step, "Can't load standard profile: sRGB.pf"
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
X-List-Received-Date: Wed, 27 Jun 2012 19:47:39 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 27 Jun 2012, Robert P. J. Day wrote:

>
>   for the first time in a while, i tried to build the PDF docs, and
> every attempt ends with a java exception on my 64-bit ubuntu system
> containing the diagnostic:
>
> java.lang.IllegalArgumentException: Can't load standard profile: sRGB.pf
>
>   i've isolated it to the "fop" invocation in poky-docbook-to-pdf.
> i'm using openjdk-7, and it appears that i do have that file installed
> on my system.
>
>   i have to bolt for the airport to pick someone up so i can't dig any
> deeper right this minute, but if anyone else has seen this and has an
> answer, i'd appreciate it.  can anyone else at least verify that they
> get the same error if they try it on a similar system?  thanks.

  it *seems* fairly clear that this is what's happening to me:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=641530

when i try to generate yocto docs in PDF format on my ubuntu 12.04
system using openjdk.  and on that note, i'm going back to my beer and
wings.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

