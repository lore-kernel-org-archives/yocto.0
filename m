Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49DEBE01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 08:06:32 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E28FF9ADE;
	Wed,  5 Sep 2012 16:06:30 +0100 (BST)
Message-ID: <50476A75.20107@r-finger.com>
Date: Wed, 05 Sep 2012 16:06:29 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <50450DC6.20303@r-finger.com>
	<504663C0.6050907@ti.com>	<50471207.8080104@r-finger.com>
	<2612934.gZ3vcrfUaE@helios>	<50471ECE.8000502@r-finger.com>
	<1346849303.21985.56.camel@ted> <5047657C.4010902@ti.com>
In-Reply-To: <5047657C.4010902@ti.com>
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
X-List-Received-Date: Wed, 05 Sep 2012 15:06:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/12 15:45, William Mills wrote:
>> Its accepted that most layers will append to BBPATH. I do think its
>> acceptable for a distro policy layer to prepend though and this is why
>> meta-yocto does this. I don't remember the exact reason right now but
>> the principle stands.
> 
> So how should we resolve the issue in meta-ti for the denzil/1.2 branch?
> 
> I think the expediency of prepending sounds right to me.  We can shoot
> for a better fix in 1.3.

I think in the light of what Paul said, the meta-ti behaviour is what is
expected and changing will potentially complicate things for other
meta-ti consumers who follow the convention; the problem is in
meta-yocto, not meta-ti.

The current problem can be worked around; it requires a custom layer
that also prepends itself to the path in front of meta-yocto, and then
provides a beagleboard.conf of it's own (which can simply 'include' or
'require' the beagleboard.conf from meta-ti). I think if Richard is
working on a solution in meta-yocto, it might be enough to document this
somewhere until it is ready.

Tomas

