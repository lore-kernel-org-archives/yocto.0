Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B93E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 08:44:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85Fir1m028668;
	Wed, 5 Sep 2012 16:44:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27558-06; Wed,  5 Sep 2012 16:44:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85Fih7s028662
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 5 Sep 2012 16:44:44 +0100
Message-ID: <1346859883.21985.61.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: William Mills <wmills@ti.com>
Date: Wed, 05 Sep 2012 16:44:43 +0100
In-Reply-To: <5047657C.4010902@ti.com>
References: <50450DC6.20303@r-finger.com> <504663C0.6050907@ti.com>
	<50471207.8080104@r-finger.com> <2612934.gZ3vcrfUaE@helios>
	<50471ECE.8000502@r-finger.com> <1346849303.21985.56.camel@ted>
	<5047657C.4010902@ti.com>
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
X-List-Received-Date: Wed, 05 Sep 2012 15:44:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 10:45 -0400, William Mills wrote:
> 
> On 09/05/2012 08:48 AM, Richard Purdie wrote:
> > On Wed, 2012-09-05 at 10:43 +0100, Tomas Frydrych wrote:
> >> On 05/09/12 10:15, Paul Eggleton wrote:
> >>> On Wednesday 05 September 2012 09:49:11 Tomas Frydrych wrote:
> >>> It has been considered witin OE to be best practice to append to BBPATH and
> >>> not prepend, the thinking being that then the search path matches the order of
> >>> the layers listed in bblayers.conf rather than the reverse.
> >>
> >> Then meta-yocto should follow that convention ... and it needs to be
> >> well documented, with the consequence of breaking that convention
> >> explained, and the terrible punishments to come described in great and
> >> sordid detail. Because this needs to be more than a convention, it needs
> >> to be an article of faith.
> >
> > I just want to clarify something here.
> >
> > Its accepted that most layers will append to BBPATH. I do think its
> > acceptable for a distro policy layer to prepend though and this is why
> > meta-yocto does this. I don't remember the exact reason right now but
> > the principle stands.
> 
> So how should we resolve the issue in meta-ti for the denzil/1.2 branch?
> 
> I think the expediency of prepending sounds right to me.  We can shoot 
> for a better fix in 1.3.

I think the problem is in meta-yocto and is hitting a particular subset
of users where people combine meta-yocto and meta-ti.

I'm not sure this can easily be fixed in meta-ti, or that we currently
have a high volume of users mixing those two.

> > The root of the problem is that meta-yocto mixes up policy and hardware
> > support which is bad. It also means its not compliant with the new Yocto
> > Project compliance criteria and hence is not Yocto Project Compatible.
> >
> > Now we've got the compliance criteria sorted out there are some
> > adjustments that need to be made and I will shortly be cleaving
> > meta-yocto into two pieces to resolve this. I hadn't looked at this
> > until now mainly in case there were changes to the criteria.
> >
> > FWIW I think this shows the strength of those criteria as by following
> > them, we'd avoid a real world problem here.
> 
> I'm glad you are thinking of doing this.  I think it sets a good example 
> and is cleaner.
> 
> However we will still need priority or namespace to override the 
> beagleboard definition in the meta-yocto-bsp (or whatever) layer if it 
> contains both the beagleboard reference and the atom-pc.

With the solution, you can just order the meta-ti and meta-yocto-bsp
layers such that the TI layer "wins" and no extra configuration is
necessary. The trouble is that the meta-yocto doesn't allow this at the
moment as things stand.

In many ways this is just part of the learning experience of how to use
and how not to use layers...

Despite the fact we just passed the feature freeze point, I'm going to
ensure we get this fixed for 1.3.

Cheers,

Richard





