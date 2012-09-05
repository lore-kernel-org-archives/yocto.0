Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF48E014BD
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 05:48:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85CmXbO027171;
	Wed, 5 Sep 2012 13:48:33 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24954-08; Wed,  5 Sep 2012 13:48:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85CmNPS027164
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 5 Sep 2012 13:48:24 +0100
Message-ID: <1346849303.21985.56.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Wed, 05 Sep 2012 13:48:23 +0100
In-Reply-To: <50471ECE.8000502@r-finger.com>
References: <50450DC6.20303@r-finger.com> <504663C0.6050907@ti.com>
	<50471207.8080104@r-finger.com> <2612934.gZ3vcrfUaE@helios>
	<50471ECE.8000502@r-finger.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 12:48:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 10:43 +0100, Tomas Frydrych wrote:
> On 05/09/12 10:15, Paul Eggleton wrote:
> > On Wednesday 05 September 2012 09:49:11 Tomas Frydrych wrote:
> > It has been considered witin OE to be best practice to append to BBPATH and 
> > not prepend, the thinking being that then the search path matches the order of 
> > the layers listed in bblayers.conf rather than the reverse.
> 
> Then meta-yocto should follow that convention ... and it needs to be
> well documented, with the consequence of breaking that convention
> explained, and the terrible punishments to come described in great and
> sordid detail. Because this needs to be more than a convention, it needs
> to be an article of faith.

I just want to clarify something here.

Its accepted that most layers will append to BBPATH. I do think its
acceptable for a distro policy layer to prepend though and this is why
meta-yocto does this. I don't remember the exact reason right now but
the principle stands.

The root of the problem is that meta-yocto mixes up policy and hardware
support which is bad. It also means its not compliant with the new Yocto
Project compliance criteria and hence is not Yocto Project Compatible.

Now we've got the compliance criteria sorted out there are some
adjustments that need to be made and I will shortly be cleaving
meta-yocto into two pieces to resolve this. I hadn't looked at this
until now mainly in case there were changes to the criteria.

FWIW I think this shows the strength of those criteria as by following
them, we'd avoid a real world problem here.

Cheers,

Richard




