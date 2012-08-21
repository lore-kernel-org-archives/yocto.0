Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76F3E0027E
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:16:31 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:35824 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T3r7z-0004uD-TA; Tue, 21 Aug 2012 12:16:27 -0400
Date: Tue, 21 Aug 2012 12:16:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jeff Osier-Mixon <jefro@jefro.net>
In-Reply-To: <CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1208211215490.14178@oneiric>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
	<CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
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
Cc: Yocto Project <yocto@yoctoproject.org>,
	aaryak gautam <aaryak.gautam@gmail.com>
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Tue, 21 Aug 2012 16:16:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 21 Aug 2012, Jeff Osier-Mixon wrote:

> Hi - please take a look at the FAQ here: https://wiki.yoctoproject.org/wiki/FAQ
>
> Near the bottom there are some technical answers, one of which is how
> to add a single package:
>
> Q: How can I add a package to my project?
>
> A: As with any complex system, the real answer is it depends, but of
> course that is not very helpful. The simplest method for adding a
> single package to your build is to add a line like this to
> conf/local.conf:
>
>    IMAGE_INSTALL_append += " package"

   grrrrrr ...            ^ "="

the "+=" is redundant.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

