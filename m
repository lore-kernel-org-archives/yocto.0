Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C0EBE0140C
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 16:05:06 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Sea91-0007ic-PJ
	for yocto@yoctoproject.org; Wed, 13 Jun 2012 01:05:04 +0200
Received: from airbears-136-152-39-3.AirBears.Berkeley.EDU ([136.152.39.3])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 01:05:03 +0200
Received: from ryanjulian by airbears-136-152-39-3.AirBears.Berkeley.EDU with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 01:05:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ryan Julian <ryanjulian@berkeley.edu>
Date: Tue, 12 Jun 2012 23:00:32 +0000 (UTC)
Message-ID: <loom.20120613T005341-535@post.gmane.org>
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
	<4F7D2E45.2020408@r-finger.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 136.152.39.3 (Mozilla/5.0 (X11;
	Linux i686) AppleWebKit/536.5 (KHTML, like Gecko)
	Chrome/19.0.1084.56 Safari/536.5)
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Tue, 12 Jun 2012 23:05:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Tomas Frydrych <tf+lists.yocto@...> writes:
> This is a different issue. I get this too with one particular MMC card,
> but with 2.6.37 kernel, if I unplug this card and plug it back in the
> boot resumes and completes successfully. If I do this with the 3.0.2
> kernel, the bug I described with the associated kernel panic then kicks in.
> 
> Tomas
> 
> > 
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@...
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 

Bruce and Tomas,
Did you ever find a solution to this issue?

I'm encountering the same issue on the BB-xM Rev C. I've tested on two different 
boards from different production runs, both with an error identical to Tomas'. 
I'd be happy to run tests/provide logs if given instructions.

Thanks!

-Ryan




