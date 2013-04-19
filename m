Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66531E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:56:55 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-86-81.range86-137.btcentralplus.com
	[86.137.86.81]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id B77649512
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 15:56:54 +0100 (BST)
Message-ID: <51715B36.9040408@r-finger.com>
Date: Fri, 19 Apr 2013 15:56:54 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
	<alpine.DEB.2.02.1304191008450.5407@oneiric>
	<517152BC.8070905@r-finger.com>
	<alpine.DEB.2.02.1304191032090.5553@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304191032090.5553@oneiric>
Subject: Re: any point in a single machine recipe using a machine-specific file?
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
X-List-Received-Date: Fri, 19 Apr 2013 14:56:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/04/13 15:34, Robert P. J. Day wrote:
> On Fri, 19 Apr 2013, Tomas Frydrych wrote:
> 
>> On 19/04/13 15:15, Robert P. J. Day wrote:
>>> i'd wonder, if you're building for a different machine, why are
>>> you including the meta-rpi layer?
>>
>> Because at a distro-level you often want to target different
>> architectures.
> 
>   yes, i appreciate that but, in *this* case, we're talking about a
> single machine with a single architecture. i'm pretty sure we're
> agreeing, i'm just pointing out that in this specific example, having
> a machine-specific subdirectory is overkill.

BSP layers are not stand alone entities, they can never assume that no
other machines exist in the ecosystem they are pulled into. So, no, it
is most definitely not an overkill. I am not sure how else to explain
it, maybe fix up the RPI layer the way you intended locally and build
yourself a Qemu image, see what happens to your interfaces file.

Tomas

-- 
http://sleepfive.com

