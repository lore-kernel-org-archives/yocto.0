Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B52FE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 14:11:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2ULBDWd018102;
	Fri, 30 Mar 2012 22:11:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17350-03; Fri, 30 Mar 2012 22:11:08 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2ULB63w018096
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 30 Mar 2012 22:11:07 +0100
Message-ID: <1333141865.18082.120.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Fri, 30 Mar 2012 22:11:05 +0100
In-Reply-To: <4F7614FE.5000107@windriver.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 21:11:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-30 at 15:18 -0500, Mark Hatle wrote:
> On 3/30/12 2:33 PM, Koen Kooi wrote:
> >
> > Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
> >
> >> On 3/30/12 1:44 PM, Koen Kooi wrote:
> >>> Hi,
> >>>
> >>> RP said I should raise this on the yocto lists, so here it is:
> >>>
> >>> The Angstrom core team would like to move angstrom under the yocto banner so
> >>> we can formally claim to be 'yocto'.

In the interests of clarity, as Tracey will tell you there is no
"Yocto" (which is an SI prefix), only the "Yocto Project" :). I know
some of us have bad habits but since we're trying to ensure we're all
consistent, this is worth highlighting.

> >> For it to be on the yocto project web site, it just need to have
> the layers hosted on the git.yoctoproject.org.  But there is no
> "yocto".. It's the Yocto Project, Poky, or specific git repositories.
> There is no reason we can't have an angstrom repository.  It could be
> in a similar format to the Poky repository (everything combined for a
> single download), or it could be a layer [or layers] that sit on top
> of Poky.
> >
> > Why on top of poky? I do not want poky, nor do my customers, oe-core is what
> > we need and want. This proposal to move angstrom under yocto is targeted at
> > eliminating 'poky' from the stack while still being able to say 'yocto'.
> 
> Poky is a repository made up of bitbake + oe-core + meta-yocto, as well as a 
> distribution definition (in meta-yocto).  I assume angstrom has it's own 
> distribution definition.
> 
> So my question is why NOT on top of Poky (the repository, not distribution 
> definition)?

FWIW I don't think it has to be "on top of Poky". 

Basically the question is whether you'd include the meta-yocto layer or
not. I know that doesn't have its own repository yet (but that's purely
a time thing). I have no strong feelings either way about the inclusion
of that layer. Its purposefully not got that much in it (one distro
definition and some hardware/BSP addons).

Also, Angstrom has a different repository format in the way the user
fetches and interacts with layers. I don't think Yocto mandates any
requirement in that area, or that it needs to.

> > We both know that saying it is 'yocto' is wrong and misleading, but that's
> > what users are asking for and yocto advocates seem to push.

Try saying this in earshot of Tracey ;-). We are trying to do a better
job of saying "Yocto Project", please help us!

>  Just watch the ELC
> > videos for yocto related presentations, 'yocto' and 'poky' are used
> > interchangeably in most of them.
> >
> > A 'reference' should be just that, a reference, not a mandated part.
> 
> It's hard to call something Yocto Project based unless it used something from 
> the Yocto Project.  meta-yocto being on of those components.

The criteria I see for being part of the Yocto Project are:

a) Sharing the project's objectives (e.g. making embedded Liunx 
   development easier)
b) Willing to be part of the Yocto Project's governance structure
c) Bringing something new/beneficial to the Yocto Project (often with 
   mutual benefit)
d) Have some kind of sustainable resource plan

Note that it I don't list "must use meta-yocto" there since I don't
think that is true.

I would want to be clear about where I'd see Angstrom positioned within
the Yocto Project which would be as a reference binary distribution.

This is in contrast with Poky which would remain as the getting started
and reference testing configuration (obviously building from
source/sstate in contrast to Angstrom).

I do have some questions related to some of the above points but I'm
going to hold off those for now and see where this discussion goes. I'd
also mention that I'd like to see what advice the advisory board has on
this topic too.

> There is enough confusion about yocto vs poky vs..  It's slowly being reconciled 
> and defined.. but it's a slow process for all of us.

Right, I think we are getting to grips with this slowly and there was a
good discussion about this on the meta-ti list recently.

Cheers,

Richard


