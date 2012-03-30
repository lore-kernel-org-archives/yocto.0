Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11F8E006C7
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 03:15:00 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SDYrD-0007KF-4b; Fri, 30 Mar 2012 06:14:59 -0400
Date: Fri, 30 Mar 2012 06:14:46 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Rudolf Streif <rudolf.streif@linux.com>
In-Reply-To: <CA+gsK-rXemLsxH0NCOaX7xvFNQOYsn416_rEAWyg9s+4Qo6mJg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1203300613320.30730@oneiric>
References: <alpine.DEB.2.02.1203291746350.19207@oneiric>
	<CA+gsK-qYyhBU5gXHAECt=udaX8DpoAz0Y-t5urya8qqimXBgDQ@mail.gmail.com>
	<alpine.DEB.2.02.1203291826450.21523@oneiric>
	<CA+gsK-rXemLsxH0NCOaX7xvFNQOYsn416_rEAWyg9s+4Qo6mJg@mail.gmail.com>
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
Subject: Re: which yocto doc explains bitbake assignment variations?
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
X-List-Received-Date: Fri, 30 Mar 2012 10:15:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 29 Mar 2012, Rudolf Streif wrote:

> 1. yes, = will always override any prior ?= or ??= and any subsequent ?= or ??= will not change the
> setting anymore.
> 2. yes, a ?= following a ??= will set the variable. Only a = will be override the setting of the ?=.
> Any following ?= and ??= will not change the setting.
>
> 3. yes, a ?= or = following a ??= will set the variable.
>
>
> Just try it. Put a variable (FOO) in local.conf and use bitbake -e | grep FOO
>
> FOO ??= "bar"
> FOO ?= "barbar"

  thanks, i've already been testing numerous variations just so i'm
absolutely convinced i understand it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

