Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DE8DE00B85; Thu, 22 May 2014 01:40:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31617E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 01:40:54 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4M8eY7P023016; Thu, 22 May 2014 09:40:34 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KIC1x4sqYXTb; Thu, 22 May 2014 09:40:33 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4M8eQua023003
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 22 May 2014 09:40:28 +0100
Message-ID: <1400748019.17834.37.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Thu, 22 May 2014 09:40:19 +0100
In-Reply-To: <537DB568.4060904@dynamicdevices.co.uk>
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
	<537CF707.4060506@mlbassoc.com>
	<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>
	<537D0964.9090208@dynamicdevices.co.uk>
	<CANr+NRsnNeBtkJOB-EVNzsGWOOH6YG1cnw11FOcbo9V78-8vPg@mail.gmail.com>
	<537D3560.2040702@dynamicdevices.co.uk> <1400746996.17834.26.camel@ted>
	<537DB568.4060904@dynamicdevices.co.uk>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, gary@mlbassoc.com
Subject: Re: meta-mono core-image-mono failing
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
X-List-Received-Date: Thu, 22 May 2014 08:40:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-05-22 at 09:29 +0100, Alex J Lennon wrote:
> On 22/05/2014 09:23, Richard Purdie wrote:
> > On Thu, 2014-05-22 at 00:23 +0100, Alex J Lennon wrote:
> >> Thanks Stefan.  > daisy was my suspicion but that seemed unlikely so I
> >> have a clean Fedora build underway with daisy / meta-mono /
> >> core-image-mono to prove it to myself as a first pass before trying master.
> >>
> >> As I do this I am thinking it would be nice if there were canonical
> >> images of Yocto-X.Y available to run up on Amazon/Azure/elsewhere to
> >> prove these things out in the background without mashing my SSDs.
> >>
> >> I am guessing somebody has done this already but I hunted around Amazon
> >> and couldn't see any community images that looked useful (?)
> >>
> >> Similarly (and I confess I haven't yet had time to understand
> >> AutoBuilder as I should) presumably there are a number of daily builds
> >> in the cloud, on each of the supported host platforms, for each of the
> >> advertised layers, and if they fail then maintainers are kicked? Is that
> >> how things work? If so, can you advise how I request to add meta-mono to
> >> the kick-list?
> > Its a nice idea but right now we struggle to test and keep OE-Core
> > building, let alone trying to define tests for every other layer :(. The
> > amount of time I and others spend on this for OE-Core is phenomenal.
> 
> I can well imagine Richard! I've often wondered how the team(s) manage
> to keep everything running along so smoothly.
> 
> >
> > If we had more people and resources, sure but right now there is no such
> > setup.
> 
> Like you I'm very time constrained here unfortunately, but I like the
> idea of having some baseline VM images ready to go on Amazon or Azure as
> a starting point for testing at least.
> 
> If such a thing hasn't already been done I might try to put those
> together. If I do get around to it I'll you know (if of interest)

FWIW we do have the build-appliance image and that is able to run builds
within it. It sounds like you just need a slightly different version of
that (with the UI removed).

Cheers,

Richard




