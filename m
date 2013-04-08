Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AACFAE00597
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 15:54:42 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:56906 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPKxV-0000Te-3p; Mon, 08 Apr 2013 18:54:41 -0400
Date: Mon, 8 Apr 2013 18:54:34 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <5163442A.7070801@windriver.com>
Message-ID: <alpine.DEB.2.02.1304081840340.4612@oneiric>
References: <alpine.DEB.2.02.1304081757170.3910@oneiric>
	<5163442A.7070801@windriver.com>
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
Subject: Re: what's the situation with MIPS support/BSPs/dev kits in yocto?
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
X-List-Received-Date: Mon, 08 Apr 2013 22:54:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 8 Apr 2013, Bruce Ashfield wrote:

> On 13-04-08 5:59 PM, Robert P. J. Day wrote:
> >
> >    other than the canonical routerstation pro in the meta-yocto-bsp
> > layer, is there any serious work being put into MIPS machines?  a
> > quick google didn't seem to find anything, and the rs pro itself was
> > end-of-lifed a while back (as i recall), so is there something else if
> > one wants to use yocto on a MIPS dev kit?
>
> From: https://bugzilla.yoctoproject.org/show_bug.cgi?id=2444
>
> MIPS suggested refresh: http://www.ubnt.com/edgemax
>
> .. but I've yet to complete the due diligence on seeing if I can
> actually purchase one :) That's going to happen shortly after yocto
> 1.4 completes.

  it would appear there's a canadian branch of ubiquiti:

http://ubnt.ca/en/8-edgemax

but based on what i remember about ubiquiti, it's *excruciating* to
try to figure out how to buy anything from them.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

