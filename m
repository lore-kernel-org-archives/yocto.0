Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66518E00307
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 13:38:17 -0800 (PST)
Received: from durham.keylevel.com ([109.224.134.115]:8142
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1RR9ew-0005GS-AH; Thu, 17 Nov 2011 21:38:14 +0000
Message-Id: <94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
In-Reply-To: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 17 Nov 2011 21:38:11 +0000
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Thu, 17 Nov 2011 21:38:18 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:

> Mark & everyone else listening:
>
> Would you say that (1) the need for a recipe and (2) the requirement  
> to cross-compile are two of the most major usability or learning- 
> curve disadvantages of working with the Yocto Project (and oe-core)?  
> What would be a third disadvantage from a usability standpoint?
>
> Another way to put it: if you could change three things about the  
> Yocto Project to make it more approachable for someone who has never  
> used it before, what would they be?

As another very experienced embedded systems developer who is  
relatively new to embedded linux I would say that documentation and  
worked examples are what I would really be after.

It can be really frustrating when you can't get something going  
because you don't understand the phrases / terminology that's being  
used and it isn't readily available via the documentation. I've seen  
quite a few posts on here relating to the documentation and it does  
look like good progress is being made. As someone said earlier in this  
thread, it would be good it run stuff through new (or relatively new)  
adopters to see if they can get the examples to work without a fight.  
I'm more than happy to help (and learn!).

I to started with OE and failed to get a build to complete. Yocto got  
me there first time, so it is already much better for a novice 'baker' !

Some worked examples for 'how to do xxx' would also be nice. E.g.

1) How do I configure the kernel ?
2) What do I need to do when I change my recipe to ensure that the  
changes make it in to the image ?
3) How do I change and add startup scripts ?
4) How do I add data files to the image ?
5) How do I make sure dependencies (e.g. libraries) are included in  
the image ? i.e. what do DEPENDS, RDEPENDS, etc. do.
6) How can I use a layer to hold my project files ?
7) Do I need to delete tmp/ and rebuild to ensure I've got a valid  
project build configured ? (i.e. it doesn't rely on staged items that  
don't build when I bitbake MyProject).
8) How do I make my existing autobuild project in to a recipe ?
9) How do I set / change the root password ?

These items would help explain how to create a recipe and to use  
bbappend. Ideally they should be worded so that they can be followed  
by someone with a general embedded background who has minimal exposure  
to embedded linux. However, it probably doesn't want to be an embedded  
linux primer.

This project is already easier to use than many others and is  
supported by a really knowledgeable group who are willing to help  
newcomers out. As it grows it would be unreasonable to expect the same  
(relatively small) group to be able to support a much wider user-base.  
Comprehensive documentation and non-trivial worked example should help  
to reduce the workload and allow the group to assist those who have a  
genuine need of help.

Chris Tapp

opensource@keylevel.com
www.keylevel.com


