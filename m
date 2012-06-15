Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F08E0044A
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 13:09:40 -0700 (PDT)
Received: from [109.224.129.17] (port=5996
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1Sfcpu-0007KQ-LI; Fri, 15 Jun 2012 21:09:38 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4FDACFD5.4020808@r-finger.com>
Date: Fri, 15 Jun 2012 21:09:36 +0100
Message-Id: <68AE55D0-CAC7-41DB-B40C-DB5383E7FC54@keylevel.com>
References: <BBB9AD1B-8D46-472C-AE84-5AC18F15B44E@keylevel.com>
	<3AD32D08-64C8-4F37-BF50-9D08560D0194@keylevel.com>
	<4FDACFD5.4020808@r-finger.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 15 Jun 2012 20:09:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 15 Jun 2012, at 07:01, Tomas Frydrych wrote:

> Hi,
>=20
> On 14/06/12 22:42, Chris Tapp wrote:
>> On 14 Jun 2012, at 21:44, Chris Tapp wrote:
>>=20
>>> The log for do_rootfs is showing: < snip > error: Failed
>>> dependencies: libGL.so.1 is needed by libglut3-7.11-r13.2.armv6=20
>>> libGL.so.1 is needed by column-wallboard-1.0-r1.armv6 libGL.so.1 is
>>> needed by libglu1-7.11-r13.2.armv6
>>>=20
>>> libGL is showing in the work area, so I think I just need to add a
>>> dependency. But what and where?
>=20
> There should be no GL on RPI at all, the HW drivers only support =
GLES/2,
> so the short answer is you can't pull in packages that require GL (in
> theory you could build mesa with the software rasterizer, but you will
> get unacceptable performance, and in the presence of GLES2 that makes =
no
> sense anyway).

No, it works just fine. I had somehow got two conflicting versions =
pulled in at the same time (sorted by hiding the one I didn't expect and =
seeing what complained when I tried to build). Performance isn't great, =
but using Xfbdev works as fast (by 'eye') as it does on the =
unaccelerated hardware that the build was originally designed for. I've =
no plans to rewrite to use GLES (at this time) as the development =
version uses SDL with DirectFB (which is supposed to be getting ported =
to the RPi). The SDL version already works acceptably without DirectFB.

> Incidentally, the GLES libs are not currently packaged by
> meta-raspberrypi, I submitted a pull request for this yesterday.

Thanks, that will be nice. I want to look at GLES for other things. May =
even update what I already have if it shows significant performance =
advantages (which it should). Looks like DirectFB has some sort of GLES =
support, so I also need to look at that.

>> Ah, there was an ERROR right at the start of the build saying there
>> were multiple providers for virtual/libgl (mesa-xlib, mesa-dri). How
>> can I track down the cause of this? Building virtual/libgl doesn't
>> get this error - it only shows when I build the full image.
>=20
> In general, mesa-xlib provides a software GLX emulation, mesa-dri
> provides glx based on the GLX extension and each machine conf needs to
> choose a preferred provider for virtual/libgl to get rid of this =
error.
> However, in the RPI case, no virtual/libgl should be getting pulled =
into
> the images.


It gets pulled in because that's what I've asked for in my image ;-) I =
did have a preferred provider, but, as I said above, I found an error =
that meant it wasn't working as expected.

Chris Tapp

opensource@keylevel.com
www.keylevel.com


