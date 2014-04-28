Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7196BE00BF2
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 06:14:23 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WelO0-00071z-AJ
	for yocto@yoctoproject.org; Mon, 28 Apr 2014 15:14:20 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 15:14:20 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 15:14:20 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 28 Apr 2014 15:14:06 +0200
Message-ID: <ljlk6u$pd6$1@ger.gmane.org>
References: <ljl1vt$ink$1@ger.gmane.org> <535E5198.60709@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <535E5198.60709@windriver.com>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Mon, 28 Apr 2014 13:14:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 28.04.2014 15:03, schrieb Bruce Ashfield:
> 
> The answer to your question depends on the base linux-cubox-i
> recipe.
> 
> Config fragment support works for kernels that inherit from linux-yocto,
> versus ones that inherit directly from kernel.bbclass. So if you
> pop open that base recipe, and look for a reference to linux-yocto.inc,
> you'll have the answer.
> 
> It is possible to bbappend the linux-yocto support into the kernel
> recipe via your layer, and might be worth a try.
> 
> The separation between the two classes exists to not break compatibility
> with existing kernel recipes, or change long standing oe workflow with
> the existing classes.
> 
> Cheers,
> 
> Bruce
> 
Ahh, I see. That is probably the reason then. It includes from linux-imx:

include recipes-kernel/linux/linux-imx.inc

Now, should I just forget the fragment idea and use my own defconfig
file? Or can I just include linux-yocto.inc in my bbappend?


