Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C833E0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 13:01:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VK1aHj011419;
	Wed, 31 Aug 2011 21:01:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11250-02; Wed, 31 Aug 2011 21:01:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VK1VCR011413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 21:01:31 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <A03B490E-95AF-4E98-816C-A74154CE950E@keylevel.com>
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
	<1314727662.5939.388.camel@rex>
	<A03B490E-95AF-4E98-816C-A74154CE950E@keylevel.com>
Date: Wed, 31 Aug 2011 21:01:18 +0100
Message-ID: <1314820878.5939.495.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Wed, 31 Aug 2011 20:01:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-31 at 20:33 +0100, Chris Tapp wrote:
> Sorry for the delay in looking at this again.
> 
> I can't re-create the behaviour here either, though it was repeatable  
> before. However, since then I've made quite a few changes to the  
> recipe and done a complete re-build.
> 
> It was also failing with the correct paths - I was trying all sorts of  
> combinations when the correct one wasn't working!
> 
> I'll try and do some more testing here (with what I think the recipe  
> was at the time) to see if I can get it to show again. I've only got a  
> slow build machine, so it may take a while ;-)

Ok, in the meantime I've resolved the bug as worksforme since we're
unable to reproduce. Please do open (or reopen) one if you can reproduce
the problem though, I'd be interested to get to the bottom of it.

Cheers,

Richard


