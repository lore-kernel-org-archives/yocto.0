Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 192FDE01347
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 09:15:24 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKY2c-00050c-6Q; Sun, 30 Oct 2011 12:15:22 -0400
Date: Sun, 30 Oct 2011 12:15:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Christian Gagneraud <chgans@gna.org>
In-Reply-To: <4EAD7542.4070204@gna.org>
Message-ID: <alpine.DEB.2.02.1110301214180.915@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
	<4EAD7542.4070204@gna.org>
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
Subject: Re: what's the proper value for BB_NUMBER_THREADS?
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
X-List-Received-Date: Sun, 30 Oct 2011 16:15:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 30 Oct 2011, Christian Gagneraud wrote:

> On 30/10/11 15:32, Robert P. J. Day wrote:
> >
> >    all the docs recommend twice the number of cores (AFAICT), yet the
> > template local.conf file suggests that, for a quad core, the value of
> > 4 would be appropriate.  shouldn't that say 8?  same with
> > PARALLEL_MAKE?
>
> Hi Robert,
>
> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
> and x1.5 for PARALLEL_MAKE.

  if that's the case, anyone object to my submitting a patch to
update local.conf.sample appropriately?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

