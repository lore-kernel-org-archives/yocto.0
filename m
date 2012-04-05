Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0598E0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 08:22:32 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFoW2-0001UZ-Sj; Thu, 05 Apr 2012 11:22:26 -0400
Date: Thu, 5 Apr 2012 11:21:28 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945178C7A@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1204051116220.29794@oneiric>
References: <alpine.DEB.2.02.1204050815450.21476@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178C7A@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 05 Apr 2012 15:22:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 5 Apr 2012, Rifenbark, Scott M wrote:

> I think what I can do here is add to the paragraph that talks about
> some BSP layers requiring additional layers on top.  I can call out
> meta-intel specifically here and describe that.  That section does
> have a link back to the "Understanding and Creating Layers" section
> in the dev manual where meta-intel is specifically discussed.

  i think that would do, i was just concerned about tossing the reader
an example that involved two "layers" of BSP as an introduction.  it
might be worth mentioning meta-ti as another example, just so the
reader doesn't get the impression meta-intel is the only possibility
there.

  i will think on this more.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

