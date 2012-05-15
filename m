Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B1AE006DA
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 09:33:59 -0700 (PDT)
Received: from [109.224.129.17] (port=50877
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SUKhA-0004eO-57; Tue, 15 May 2012 17:33:56 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4FB279CC.1080503@windriver.com>
Date: Tue, 15 May 2012 17:33:52 +0100
Message-Id: <A439F26B-AF34-465E-B399-EA151E0E9E2F@keylevel.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com> <4FB279CC.1080503@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
Subject: Re: Raspberry Pi [was Re: Kernel modules fail to compile for ARM]
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
X-List-Received-Date: Tue, 15 May 2012 16:33:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 15 May 2012, at 16:44, Bruce Ashfield wrote:

> On 12-05-15 05:15 AM, Tomas Frydrych wrote:
>> On 14/05/12 19:52, Chris Tapp wrote:
>>> I'm trying to put a BSP together for an ARM system (Raspberry Pi, =
ARM1176JZF-S CPU).
>>=20
>> I got the feeling that there might be multiple OE/RPI efforts going =
on
>> at the same time unaware of each other, e.g., I noticed this
>> meta-raspberrypi layer on github that seems to be well on the way,
>> https://github.com/djwillis/meta-raspberrypi ... perhaps getting =
various
>> folk interested in this together would be beneficial.
>=20
> I'll jump in and ask my obvious question, if we want to pull in some
> extra BSP/kernel developers, is there a fundamental reason why a
> different kernel/kernel version than one of the linux-yocto ones is
> being used ?

That's certainly the way I'm trying to go. I would like to see a =
full-feature BSP as the 'default' for the board that can easily be =
customized to reduce the size / boot times for 'full embedded' use. If =
only I could work out how to get it to work ;-)

It also needs some extra 'stuff' to pull the image together - there's a =
Broadcom-provided binary that has to be used as the first stage when =
booting, but the first step (as I see it) is to get a working kernel =
image based on linux-yocto 3.0/3.2.

> If you line up with one of those, there's a chance to pickup fixes,
> features and have someone like me help maintain things where it
> makes sense.

That would be really nice.

> Collecting kernels and BSPs in trees all over the place is one of the
> things that I'd like to try and help with going forward in 2012.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




