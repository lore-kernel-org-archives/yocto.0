Return-Path: <denis@denix.org>
Received: from vms173011pub.verizon.net (vms173011pub.verizon.net
	[206.46.173.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E06D9E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 15:51:38 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173011.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3G00K0TY62U752@vms173011.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 17:51:38 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 8C5B520099; Thu,
	03 May 2012 18:51:38 -0400 (EDT)
Date: Thu, 03 May 2012 18:51:38 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Khem Raj <raj.khem@gmail.com>
Message-id: <20120503225138.GG9822@denix.org>
References: <7513B431-B65B-4ADC-AAA3-9C54F9A37028@gmail.com>
	<CAMKF1srm-fj99U6cMF-FWM_RWBWjPAQYyPJM2Zr4n0dRnXwJuQ@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAMKF1srm-fj99U6cMF-FWM_RWBWjPAQYyPJM2Zr4n0dRnXwJuQ@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: ParseError at /tool/yocto/poky-extras/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc:1: Could not include required file recipes-devtools/gcc/gcc-4.5.1.inc
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
X-List-Received-Date: Thu, 03 May 2012 22:51:39 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 10:02:08AM -0700, Khem Raj wrote:
> On Thu, May 3, 2012 at 9:25 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> >  /tool/yocto/poky-extras/meta-linaro \
> 
> I think you should remove above layer from BBLAYERS

I agree - that one is unofficial and unmaintained. Linaro is working on the 
official meta-linaro layer for OE/Yocto.

Darren,

What are you plans for the old meta-linaro in poky-extras? Do you plan to 
update it or do you want to drop it?

-- 
Denys

