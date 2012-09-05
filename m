Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C58E014FB
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:43:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85LhKH0030746;
	Wed, 5 Sep 2012 22:43:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28994-03; Wed,  5 Sep 2012 22:43:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85LhDZf030740
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 5 Sep 2012 22:43:14 +0100
Message-ID: <1346881393.21985.97.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Wed, 05 Sep 2012 22:43:13 +0100
In-Reply-To: <1346849303.21985.56.camel@ted>
References: <50450DC6.20303@r-finger.com> <504663C0.6050907@ti.com>
	<50471207.8080104@r-finger.com> <2612934.gZ3vcrfUaE@helios>
	<50471ECE.8000502@r-finger.com> <1346849303.21985.56.camel@ted>
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
X-List-Received-Date: Wed, 05 Sep 2012 21:43:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 13:48 +0100, Richard Purdie wrote:
> The root of the problem is that meta-yocto mixes up policy and hardware
> support which is bad. It also means its not compliant with the new Yocto
> Project compliance criteria and hence is not Yocto Project Compatible.
> 
> Now we've got the compliance criteria sorted out there are some
> adjustments that need to be made and I will shortly be cleaving
> meta-yocto into two pieces to resolve this. I hadn't looked at this
> until now mainly in case there were changes to the criteria.

This has now been fixed in:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=2000698b17011bbde1c3e5bb01a7d6763316db5a



