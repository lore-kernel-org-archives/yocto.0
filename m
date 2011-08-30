Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 737F0E0048C
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 14:26:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7ULQj0g002554;
	Tue, 30 Aug 2011 22:26:45 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01344-06; Tue, 30 Aug 2011 22:26:41 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7ULQbFg002544
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 30 Aug 2011 22:26:37 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E5543DC.8090501@windriver.com>
References: <1314175707-9214-1-git-send-email-liming.wang@windriver.com>
	<4E5543DC.8090501@windriver.com>
Date: Tue, 30 Aug 2011 22:26:26 +0100
Message-ID: <1314739586.5939.436.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH 0/1] script/runqemu: change boot command line for qemuppc
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
X-List-Received-Date: Tue, 30 Aug 2011 21:26:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-24 at 14:33 -0400, Bruce Ashfield wrote:
> On 11-08-24 04:48 AM, Liming Wang wrote:
> > This patch is just a workaround to speed up boot time of qemuppc, because
> > qemuppc has no framebuffer support, no need to start X server for qemuppc.
> >
> > Richard suggested to fix the X scripts so that if an fbdev X server is in use and
> > the framebuffer device node does not exist, it just exits cleanly with a
> > suitable message and doesn't timeout on boot.
> >
> > But I think it needs more time to implement and test.
> >> X scripts serve for all the boards. And we also can't assume all the
> >> boards use the same
> >> framebuffer device. So how to detect whether the framebuffer device
> >> exists is board dependent.
> >> Maybe we can see whether the device /dev/fb0 exists(it could be created
> >> manually, so we should try to open it to verify)
> >> or the file /proc/fb exists to confirm the framebuffer device. Anyway,
> >> any modification should be
> >> tested on all boards to see whether it works. I prefer to mark it as
> >> todo task in 1.1
> 
> We need to cc Richard/Saul on this, so they can re-consider
> and merge this as appropriate. But for me, I'm acking this
> change.

I've reluctantly merged this but I consider this a bit of a cop-out :(

Cheers,

Richard


