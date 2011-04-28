Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 480F24C80188
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 03:29:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3S8TIri015667;
	Thu, 28 Apr 2011 09:29:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15613-01; Thu, 28 Apr 2011 09:29:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3S8T9Ii015661
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 28 Apr 2011 09:29:12 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4DB8BBDF.6070503@windriver.com>
References: <4DB786E3.4080800@linux.intel.com>
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
	<4DB82C1A.2030008@linux.intel.com>	<4DB8506B.9000709@intel.com>
	<1303938199.21461.21.camel@rex> <4DB89D1E.3010307@intel.com>
	<4DB8BBDF.6070503@windriver.com>
Date: Thu, 28 Apr 2011 09:28:36 +0100
Message-ID: <1303979316.21461.29.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Darren Hart <darren.hart@intel.com>, yocto@yoctoproject.org
Subject: Re: Personal git repositories
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
X-List-Received-Date: Thu, 28 Apr 2011 08:29:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-27 at 20:59 -0400, Bruce Ashfield wrote:
> On 11-04-27 6:47 PM, Darren Hart wrote:
> > I don't understand wanting to keep multiple distinct source trees in a single
> > git repositorie. If you have two different layers in there, each in its own
> > branch, then you can only work with one of them at a time. The end-user then has
> > to have multiple clones of the same repository in order to work with their two
> > layers. And they will end up naming them something like:
> >
> > yocto-contrib-layer-1.git
> > yocto-contrib-layer-2.git
> 
> This is what I was wondering as well. I had my meta-kernel-dev as
> a branch on poky-extras and ran into exactly this problem. Either
> have two clones, or get it into master. Master was the choice, since
> the other seemed clunky.
> 
> Maybe I'm misunderstanding as well, but sparse fetch or not (and
> yes I've done/used it), logically I like things that are distinct
> source trees to be separate repos. Maybe it's a kernel-guy thing ? :)

I think there are three elements to this:

a) People do like the logical separation that a repo gives them and 
   find it easiest to think in those terms.
b) Most people are used to single relatively monolithic repos such as 
   the kernel. People like myself who have used svn with multiple 
   projects contained within like matchbox or the OpenedHand "misc" svn 
   repo or the BSD projects approach to source control are probably in 
   the minority.
c) The git tooling and all the examples out there are geared up to 
   single repos. git is very much a tool where you need to think as its 
   authors do.

Some of this can be addressed with clear example documentation about how
to use git in this way.

Partly, these proposals are also working within the constraints of the
git server solution we have too. Are we really in such a bad position
that we need to change all the server setup over this or are there ways
we can work within the existing system (or even extend gitolite)?

Cheers,

Richard




