Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B190DE013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 14:42:06 -0700 (PDT)
Received: from [109.224.129.17] (port=10502
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SfHnp-00009b-Rq
	for yocto@yoctoproject.org; Thu, 14 Jun 2012 22:42:05 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <BBB9AD1B-8D46-472C-AE84-5AC18F15B44E@keylevel.com>
Date: Thu, 14 Jun 2012 22:42:03 +0100
Message-Id: <3AD32D08-64C8-4F37-BF50-9D08560D0194@keylevel.com>
References: <BBB9AD1B-8D46-472C-AE84-5AC18F15B44E@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 14 Jun 2012 21:42:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 14 Jun 2012, at 21:44, Chris Tapp wrote:

> The log for do_rootfs is showing:
> < snip >
> error: Failed dependencies:
> 	libGL.so.1 is needed by libglut3-7.11-r13.2.armv6
> 	libGL.so.1 is needed by column-wallboard-1.0-r1.armv6
> 	libGL.so.1 is needed by libglu1-7.11-r13.2.armv6
>=20
> libGL is showing in the work area, so I think I just need to add a =
dependency. But what and where?

Ah, there was an ERROR right at the start of the build saying there were =
multiple providers for virtual/libgl (mesa-xlib, mesa-dri). How can I =
track down the cause of this? Building virtual/libgl doesn't get this =
error - it only shows when I build the full image.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




