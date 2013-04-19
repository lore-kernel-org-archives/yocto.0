Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A35C3E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:20:45 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-86-81.range86-137.btcentralplus.com
	[86.137.86.81]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 037749512
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 15:20:44 +0100 (BST)
Message-ID: <517152BC.8070905@r-finger.com>
Date: Fri, 19 Apr 2013 15:20:44 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
	<alpine.DEB.2.02.1304191008450.5407@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304191008450.5407@oneiric>
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
X-List-Received-Date: Fri, 19 Apr 2013 14:20:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/04/13 15:15, Robert P. J. Day wrote:
> i'd wonder, if you're building for a different machine, why are
> you including the meta-rpi layer?

Because at a distro-level you often want to target different architectures.

> best answer i'd be able to give is that it's not essential but it
> won't hurt anything, which sounds kind of lame. :-)

No, it's is essential that it is done this way, BSPs are for specific
machines, so they should never install generic config files.

Tomas

