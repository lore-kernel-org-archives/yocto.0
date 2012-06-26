Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37113E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 13:14:11 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:41920 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Sjc9F-0004ZR-7U; Tue, 26 Jun 2012 16:14:05 -0400
Date: Tue, 26 Jun 2012 16:14:00 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Dallas Clement <dallas.a.clement@gmail.com>
In-Reply-To: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1206261612200.12718@oneiric>
References: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 26 Jun 2012 20:14:11 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 26 Jun 2012, Dallas Clement wrote:

> I'd like to clean all of my build output so that I can rebuild with a
> different toolchain.  What is the best way to clean without having to
> redownload all of my source packages again?
>
> I can see that something like this
>
> $ bitbake -c cleanall linux-yocto
>
> can clean the kernel or an individual package.  I want to clean everything.

  hey, there's an FAQ entry for that! :-)  well, sort of ... if you
want to avoid all that source downloading:

http://www.crashcourse.ca/wiki/index.php/Yocto_FAQ#How_can_I_set_up_a_local_mirror_of_tarballs_to_save_download_time.3F

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

