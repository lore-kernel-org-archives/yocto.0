Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16708E013A3
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 02:29:43 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-102-112.range86-137.btcentralplus.com
	[86.137.102.112]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id BFAE5952B
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 10:29:41 +0100 (BST)
Message-ID: <51935584.9030908@r-finger.com>
Date: Wed, 15 May 2013 10:29:40 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANyK_8fKmat+m09jAcxqKA89Z0Qxt3V5+hsBXAvqVstEbvKucQ@mail.gmail.com>
In-Reply-To: <CANyK_8fKmat+m09jAcxqKA89Z0Qxt3V5+hsBXAvqVstEbvKucQ@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Thoughts on Raspberry Pi firmware
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
X-List-Received-Date: Wed, 15 May 2013 09:29:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/05/13 13:09, Paul Barker wrote:
> Secondly, is there any use case for building vc-graphics or 
> vc-graphics-hardfp to provide virtual/egl and virtual/libgles2
> (which rely on binary files from the raspberry pi firmware repo)
> instead of compiling from source using the userland package?

It would be preferable if we could build these from source; last time I
tried (which, admittedly, is a long while back), this was not possible
because of some missing broadcom-specific header files that seemed not
available anywhere, but I guess this is no longer the case.

Tomas


-- 
http://sleepfive.com

