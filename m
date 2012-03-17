Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CBF8E01206
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 17:14:37 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S8hI3-0007di-Pe; Fri, 16 Mar 2012 20:14:35 -0400
Date: Fri, 16 Mar 2012 20:14:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945173476@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1203162012480.8664@oneiric>
References: <alpine.DEB.2.02.1202291147340.2150@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945173476@ORSMSX101.amr.corp.intel.com>
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
Subject: Re: my idea of a quick start guide
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
X-List-Received-Date: Sat, 17 Mar 2012 00:14:37 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Mar 2012, Rifenbark, Scott M wrote:

> Several people have indicated a quick start section like Robert's
> wiki page would be good in the YP QS.  I agree that the idea of
> diverting the super user to a shortened, more concise section that
> let's you kick the tires of Yocto is a good idea.  I have created a
> section based on Robert's example from his wiki page.  You can see
> it at this link:
>
> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#super-user
>
> Feedback and comments welcome.
>
> Scott

  i think it was gary thomas who pointed out an even simpler way to
set up premirrors than what you copied from my QS page:

SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
INHERIT += "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS = "1"
# BB_NO_NETWORK = "1"


rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


