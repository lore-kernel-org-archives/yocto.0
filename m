Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF447E006D9
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 01:53:31 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-69-176.range86-170.btcentralplus.com
	[86.170.69.176]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 128739C07
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 09:53:30 +0100 (BST)
Message-ID: <4FDC4985.6040405@r-finger.com>
Date: Sat, 16 Jun 2012 09:53:25 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4FD93175.7070202@linux.intel.com>
	<4FD98EA6.1050403@r-finger.com>	<4FDA530E.3090508@linux.intel.com>
	<4FDAD6D1.4050605@r-finger.com> <4FDB91B1.2010706@am.sony.com>
	<4FDBA883.8030609@r-finger.com> <4FDBC1FC.3050008@linux.intel.com>
In-Reply-To: <4FDBC1FC.3050008@linux.intel.com>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Sat, 16 Jun 2012 08:53:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Darren,

On 16/06/12 00:15, Darren Hart wrote:
> I dont think
> Tim's comment was wrong there. Of course "big system" is subjective, to
> me that's anything over 4 MB of storage and 8MB of RAM, for Tim, that's
> 1 MB of RAM.

Indeed, I was thinking of something like the OpenRisc board
(http://opencores.org/shop,item,9), which is a 1MB flash / 32MB RAM,
which I now realize is a huge system by both your and Tim standards :)


> Your point on eliminating shell scripts is a good one though.

In my experience scripts tend show fairly visibly on poky bootchart,
that's all.

I was thinking that for a small system, where I know exactly what I
want, the rc.local file could probably be fairly easily replaced with a
custom config-less spawner written in C. If done with a view to permit
easy modification of the .c source file, it would not be any more hassle
customizing than tweaking a shell script. But you would loose the
ability to tweak config over ssh, which is a significant trade off for
development / debugging, so I think the rc.local is a better default
approach (and alternatives can always be dropped in using the
ALTERNATIVES mechanism anyway).

I think the busybox sysvinit is probably worth experimenting with to get
some idea what size of a system it would be a viable alternative for the
default, and document that somewhere.

Tomas

