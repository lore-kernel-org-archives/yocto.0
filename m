Return-Path: <denis@denix.org>
Received: from vms173011pub.verizon.net (vms173011pub.verizon.net
	[206.46.173.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8DCEE01525
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:49:49 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.45.150.102])
	by vms173011.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0MQE00H17BYIBWM0@vms173011.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 23 Jul 2013 10:49:30 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 4006F2009B; Tue,
	23 Jul 2013 11:49:29 -0400 (EDT)
Date: Tue, 23 Jul 2013 11:49:29 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-id: <20130723154929.GD21440@denix.org>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<59742333.4mCOApeMVS@helios>
	<CAFZh4h9NzZwLSm5wmnqs8WU5A1hfpBY4z8ryH14eg724QhZvQg@mail.gmail.com>
	<1443099.tO82y7b3tx@helios>
MIME-version: 1.0
In-reply-to: <1443099.tO82y7b3tx@helios>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Tue, 23 Jul 2013 15:49:50 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Wed, Jul 17, 2013 at 02:03:41PM +0100, Paul Eggleton wrote:
> On Wednesday 17 July 2013 08:56:34 Brian Hutchinson wrote:
> > Thanks Paul, I worried about mixing branches since I've never tried that
> > before.  The only reason I picked Denzil is because I need ti816x support
> > and Dylan and Danny don't have machine confs for it in meta-ti.  So what
> > would be easier, getting the machine support I need in Dylan or back
> > porting the net-snmp recipe to Denzil?
> 
> I don't have a feel for the former - if the reason is not already clear you'd 
> probably want to ask the meta-ti folks why that machine isn't supported in 
> later branches and how hard it would be to update support. This might be worth 

Just to update everyone on this list - the issue with ti81x has been discussed 
on meta-ti list multiple times before and Brian already knew the answer to that.


> doing if you're starting something new with denzil, since that's two versions 
> behind current stable.
> 
> Having said that, backporting the net-snmp recipe should be fairly trivial 
> though.

-- 
Denys

