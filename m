Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37B79E00746
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 00:58:53 -0700 (PDT)
Received: from [109.224.129.17] (port=60738
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SdzWW-0002Dl-3T; Mon, 11 Jun 2012 08:58:52 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4FD59E5D.4080008@r-finger.com>
Date: Mon, 11 Jun 2012 08:58:50 +0100
Message-Id: <629096E8-4870-4898-BF45-2B159715A279@keylevel.com>
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<4FD59E5D.4080008@r-finger.com>
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
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Mon, 11 Jun 2012 07:58:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 11 Jun 2012, at 08:29, Tomas Frydrych wrote:

> Hi,
>=20
> On 10/06/12 12:30, Chris Tapp wrote:
>> I've been building the 3.1.9 Raspberry Pi kernel under Denzil using
>> the meta layer at https://github.com/djwillis/meta-raspberrypi. This
>> uses a kernel recipe based on the git repository at
>> https://github.com/raspberrypi/linux/commits/rpi-patches.
>>=20
>> Some of the kernel commit IDs (e.g.
>> 94fbbc4e3988075abad0d3b32842b82c590324fc) seem to build ok, but they
>> don't always run. As in, if I -c clean and build then sometimes I end
>> up with a bootable image, sometimes I don't. I'm not changing
>> anything else in the build environment.
>>=20
>> Any ideas what can cause this?
>=20
> I find that -c clean does not work very well, afterward the package =
gets
> recompiled but instead of the actual package packages being rebuilt, =
an
> earlier version of the packages gets pulled out of sstate into the
> image. I definitely saw this behaviour with Yocto kernels, but I think
> happens with other packages as well; I always do -c cleansstate now to
> avoid this.


Yes, I've seen that in the past as well. I should probably have =
mentioned that I've also tried cleanstate and/or deleting any residual =
sstate-cache/sstate- files for linux-raspberrypi, etc.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




