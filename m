Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88AFDE0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 08:52:56 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFozX-0003M8-Hq; Thu, 05 Apr 2012 11:52:55 -0400
Date: Thu, 5 Apr 2012 11:52:49 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945178D11@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1204051151570.1013@oneiric>
References: <alpine.DEB.2.02.1204050815450.21476@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178C7A@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1204051116220.29794@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178CF1@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178D11@ORSMSX101.amr.corp.intel.com>
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
Subject: Re: i think the meta-intel "BSP layer" needs to be clarified in BSP guide
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
X-List-Received-Date: Thu, 05 Apr 2012 15:52:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 5 Apr 2012, Rifenbark, Scott M wrote:

> I looked at meta-ti and I don't see other BSP Layers within it.  I
> see the recipe-* stuff, conf, classes, etc.  Can someone explain how
> meta-ti is like meta-intel?

  actually, that was me misspeaking since i hadn't taken a close look
at meta-ti yet and just *assumed* it would be like meta-intel.  upon
further examination, that's clearly not true.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

