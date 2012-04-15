Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73376E0059A
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2012 04:26:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3FBQoSV020778;
	Sun, 15 Apr 2012 12:26:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18284-05; Sun, 15 Apr 2012 12:26:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3FBQgSs020772
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 15 Apr 2012 12:26:43 +0100
Message-ID: <1334489204.16992.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Philip Tricca <flihp@twobit.us>
Date: Sun, 15 Apr 2012 12:26:44 +0100
In-Reply-To: <4F8897F0.9050104@twobit.us>
References: <4F86EA68.1070504@twobit.us> <4F876B6A.9030405@twobit.us>
	<4F8897F0.9050104@twobit.us>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: native recipe and sysroot-destdir troubles
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
X-List-Received-Date: Sun, 15 Apr 2012 11:27:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2012-04-13 at 17:17 -0400, Philip Tricca wrote:
> Worked out a solution to this issue.  For the sake of brevity it can be
> found here:
> 
> http://twobit.us/blog/2012/04/openembedded-yocto-native-hello-world/

So just to follow up here too for the list archives:

This “craziness” does have a rational explanation. “native” targets are
meant to run on the system they’re built on and run in the location
they’re installed to. This means they install to a destination of “/”
and PREFIX is inside the native sysroot directory.

We install them to a DESTDIR to allow us to manipulate them before they
then get moved to a final DESTDIR of “/”.

Most Makefiles handle this correctly by doing:

DESTDIR ?= “”
prefix ?= “/usrr”
bindir ?= “$(prefix)/bin”

and then, importantly, install in the form:

install -d $(DESTDIR)$(bindir)

so both prefix and DESTDIR are used. Whilst this is a convention, its a
widely adopted and followed one. As you’ve found, you can call into a
custom makefile and set the variables manually if the makefile doesn’t
follow the convention.

Cheers,

Richard


