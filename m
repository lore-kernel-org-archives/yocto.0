Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 993BFE01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 14:29:36 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:56360 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPg6h-0005jt-Du; Tue, 09 Apr 2013 17:29:35 -0400
Date: Tue, 9 Apr 2013 17:29:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1304091728430.4537@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
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
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 21:29:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Apr 2013, Trevor Woerner wrote:

> Hi Robert,
>
> Since you're working your way through the labs, I was wondering if
> you'd be interested in testing something out for me? When I went
> through these labs I had set my PACKAGE_CLASSES to package_ipk instead
> of the default package_rpm. While doing so I had discovered a bug
> which I reported, but nobody else (to my knowledge) tried to reproduce
> the issue. Would you mind working through the labs with package_ipk
> and seeing if there are some things that don't work as advertised?

  does this mean PACKAGE_CLASSES should be *exclusively* ipk, or that
ipk simply be in there?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

