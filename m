Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF97E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 13:21:48 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:41940 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjcGc-0005LM-D8; Tue, 26 Jun 2012 16:21:42 -0400
Date: Tue, 26 Jun 2012 16:21:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Stewart, David C" <david.c.stewart@intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C866D8D@ORSMSX105.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1206261620350.15185@oneiric>
References: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
	<CDED78A957032E45B3239CDDA7642D151C866D8D@ORSMSX105.amr.corp.intel.com>
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
Subject: Re: How to clean
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
X-List-Received-Date: Tue, 26 Jun 2012 20:21:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 26 Jun 2012, Stewart, David C wrote:

> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Dallas Clement
> >Sent: Tuesday, June 26, 2012 12:21 PM
> >
> >I'd like to clean all of my build output so that I can rebuild with a
> >different toolchain.  What is the best way to clean without having to
> >redownload all of my source packages again?
> >
> >I can see that something like this
> >
> >$ bitbake -c cleanall linux-yocto
> >
> >can clean the kernel or an individual package.  I want to clean everything.
>
> I just delete the tmp directory and that seems to get the result I
> want - remove all the binaries but doesn't delete the sources.

  ok, better answer than mine, and added to the FAQ.

http://www.crashcourse.ca/wiki/index.php/Yocto_FAQ#How_can_I_remove_all_of_the_build_output_so_I_can_start_over.3F

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

