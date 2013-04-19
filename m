Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F874E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:16:17 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-86-81.range86-137.btcentralplus.com
	[86.137.86.81]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 7B0249512
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 15:16:16 +0100 (BST)
Message-ID: <517151AF.3030301@r-finger.com>
Date: Fri, 19 Apr 2013 15:16:15 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
In-Reply-To: <CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
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
X-List-Received-Date: Fri, 19 Apr 2013 14:16:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/04/13 15:02, Burton, Ross wrote:
> On 19 April 2013 14:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>   but in the case of the rpi, is there any value in putting the files
>> under a machine-named subdirectory? of course it won't hurt, but is
>> there any point to it?
> 
> You could argue the clarity that it will bring if another machine is
> added to the BSP - the maintainer will be forced to decide if it's
> common across all machines that the BSP will service, or truly is
> specific to a particular machine.

No, no, no, this has nothing to do with clarity, it's the only way in
which it can be done without breaking other machines. As Martin said,
multiple BSP layers often are included at the same time, and if a config
file pulled in by a BSP bbappend is not made machine specific (which is
what the machine specific directory means), it will be installed for any
machine that does not come with a higher priority bbappend that also
overrides this file.

As an additional point, the 'interfaces' file should not be included in
a netbase bbappend, it's not part of the netbase base package ... I
opened a bug against meta-yocto-bsp for this, but seems this is more
wide spread.

Tomas

> 
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
http://sleepfive.com

