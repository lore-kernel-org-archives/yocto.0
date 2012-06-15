Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC1BE013EB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 23:01:59 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-62-160.range86-170.btcentralplus.com
	[86.170.62.160]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 65D779C07
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 07:01:58 +0100 (BST)
Message-ID: <4FDACFD5.4020808@r-finger.com>
Date: Fri, 15 Jun 2012 07:01:57 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BBB9AD1B-8D46-472C-AE84-5AC18F15B44E@keylevel.com>
	<3AD32D08-64C8-4F37-BF50-9D08560D0194@keylevel.com>
In-Reply-To: <3AD32D08-64C8-4F37-BF50-9D08560D0194@keylevel.com>
Subject: Re: Help needed understanding do_rootfs error
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
X-List-Received-Date: Fri, 15 Jun 2012 06:01:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 14/06/12 22:42, Chris Tapp wrote:
> On 14 Jun 2012, at 21:44, Chris Tapp wrote:
> 
>> The log for do_rootfs is showing: < snip > error: Failed
>> dependencies: libGL.so.1 is needed by libglut3-7.11-r13.2.armv6 
>> libGL.so.1 is needed by column-wallboard-1.0-r1.armv6 libGL.so.1 is
>> needed by libglu1-7.11-r13.2.armv6
>> 
>> libGL is showing in the work area, so I think I just need to add a
>> dependency. But what and where?

There should be no GL on RPI at all, the HW drivers only support GLES/2,
so the short answer is you can't pull in packages that require GL (in
theory you could build mesa with the software rasterizer, but you will
get unacceptable performance, and in the presence of GLES2 that makes no
sense anyway).

Incidentally, the GLES libs are not currently packaged by
meta-raspberrypi, I submitted a pull request for this yesterday.


> Ah, there was an ERROR right at the start of the build saying there
> were multiple providers for virtual/libgl (mesa-xlib, mesa-dri). How
> can I track down the cause of this? Building virtual/libgl doesn't
> get this error - it only shows when I build the full image.

In general, mesa-xlib provides a software GLX emulation, mesa-dri
provides glx based on the GLX extension and each machine conf needs to
choose a preferred provider for virtual/libgl to get rid of this error.
However, in the RPI case, no virtual/libgl should be getting pulled into
the images.

Tomas

