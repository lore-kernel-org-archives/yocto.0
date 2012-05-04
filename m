Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19BB8E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:57:33 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SQPZD-0006MP-AO
	for yocto@yoctoproject.org; Fri, 04 May 2012 22:57:31 +0200
Received: from ip66-35-226-228.altera.com ([66.35.226.228])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 22:57:31 +0200
Received: from jrucker by ip66-35-226-228.altera.com with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 22:57:31 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jim Rucker <jrucker@altera.com>
Date: Fri, 4 May 2012 20:57:19 +0000 (UTC)
Message-ID: <loom.20120504T225223-561@post.gmane.org>
References: <loom.20120504T174109-199@post.gmane.org>
	<CAEsOVNfDA9rcQ1dshyKBq=rCk4nmqsBTQ0QvNL9jxa5SO52VBg@mail.gmail.com>
	<4FA4403E.8010000@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 66.35.226.228 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162
	Safari/535.19)
Subject: Re: error with bb.fetch2.get_srcrev(d)
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
X-List-Received-Date: Fri, 04 May 2012 20:57:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

> >
> > Does your u-boot SRCREV = ${AUTOREV}? You could try picking a specific
> > SHA so it does not have to check for the latest each time.
> 
> This is definitely a good suggestion. If you aren't using AUTOREV, then
> something else is triggering the fetcher. All of your parsed recipes can
> trigger fetchers, whether or not it is precisely what you are building,
> since the upstream sources are part of determining what needs to be
> rebuilt. It was a surprising (to me), but fundamental thing that happens,
> and I've just gotten used to it :)
> 
> Richard could probably correct my description above, or provide more
> options.
> 
> Bruce
> 
> >
> > -M
> > _______________________________________________
> > yocto mailing list
> > yocto@...
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 

Thanks for the quick replys. I don't have SRCREV = ${AUTOREV}, but what I did 
find is that someone put in the following:
PV="2011.12+${SRCPV}
PR="${inC_PR}.0"

When I removed these it seems to have fixed the issue. Was I wrong to remove 
these? In the documentation, it says the following which led me to believe that 
the inclusion of PV was a hack, and not part of something that should be 
released
"PV is generally not overridden within a recipe unless it is building an 
unstable version from a source code repository (e.g. Git or Subversion)."



