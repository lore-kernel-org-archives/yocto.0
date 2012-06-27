Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2114E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 13:06:06 -0700 (PDT)
Received: from cpe78cd8ec96008-cm78cd8ec96005.cpe.net.cable.rogers.com
	([173.32.31.66]:33530 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjyV3-0006pg-Pm; Wed, 27 Jun 2012 16:06:05 -0400
Date: Wed, 27 Jun 2012 16:06:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A138B8@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1206271604580.4118@oneiric>
References: <alpine.DEB.2.02.1206271335320.24547@oneiric>
	<alpine.DEB.2.02.1206271546060.4074@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A138B8@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 27 Jun 2012 20:06:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 27 Jun 2012, Rifenbark, Scott M wrote:

> Robert,
>
> So you do think it is a carry-over of that openjdk-6 error?  I
> thought the error output was very similar.

  i'm digging into it now - that bug report implied that it had been
addressed back in openjdk-6, so it's clearly returned under some
circumstances.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

