Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE23AE006D9
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 11:20:43 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:34452 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SeVhq-0004xo-Hp; Tue, 12 Jun 2012 14:20:42 -0400
Date: Tue, 12 Jun 2012 14:20:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4FD78713.5090909@intel.com>
Message-ID: <alpine.DEB.2.02.1206121418560.15112@oneiric>
References: <4FD785D2.3020603@intel.com> <4FD78713.5090909@intel.com>
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
Subject: Re: denzil bug status.
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
X-List-Received-Date: Tue, 12 Jun 2012 18:20:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 12 Jun 2012, Scott Garman wrote:

> Hello,
>
> As we are less than a week from our intended release candidate freeze
> date (June 18) for the denzil point-release, I had a meeting with
> Richard Purdie and Saul Wold to go over the final bug list and assess
> the remaining work. Here is a summary of the results of that meeting.
>
> The bug numbers I'm referring to can be found on the Yocto Project
> bugzilla site: https://bugzilla.yoctoproject.org

... snip ...

  was someone working on a fix for downloading tarballs that contain a
"+" in the filename, to prevent them from being downloaded repeatedly?
recall the recent issue i reported WRT the "gtk+" tarball, which was
continually downloaded despite it being in my local mirror.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

