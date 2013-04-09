Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6F48E01469
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 04:27:56 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:53978 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPWiQ-0003KE-Tc; Tue, 09 Apr 2013 07:27:54 -0400
Date: Tue, 9 Apr 2013 07:27:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <5163442A.7070801@windriver.com>
Message-ID: <alpine.DEB.2.02.1304090718010.3901@oneiric>
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
X-List-Received-Date: Tue, 09 Apr 2013 11:27:57 -0000
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

  i ordered one last night -- total $159.79 (CAD), including
shipping. it took a couple minutes to understand what i was reading
here:

http://ubnt.ca/en/8-edgemax

  "edgemax" is simply the generic name for the "platform" -- the
product itself is the edgerouter lite 3 (or "erlite3" as they like to
abbreviate it):

http://ubnt.ca/en/edgemax/61-edgemax.html

so the next shipment comes in on friday to ubnt.ca, at which point
they'll ship one to me.  the admin claims that they're getting in only
a "very limited" number of them on friday, so you can take that with
whatever grain of salt you feel is appropriate, but i wanted one.

rday

p.s. i was interested in a newer MIPS box as a former student of mine
dropped me a note and told me his corp was planning a new product
based on the MIPS SEAD-3:

http://www.mips.com/products/development-kits/mips-sead-3/

but that thing is crazy expensive ($2K USD).

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

