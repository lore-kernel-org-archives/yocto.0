Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43F1CE00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 14:53:35 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SqtET-0005aP-Az; Mon, 16 Jul 2012 22:53:33 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <50047C52.7020701@gmail.com>
Date: Mon, 16 Jul 2012 22:53:30 +0100
Message-Id: <BB262912-EA6D-4B12-A667-CB9B1706271C@keylevel.com>
References: <4C00373C-A571-4194-A3CF-28B349430E53@keylevel.com>
	<50047C52.7020701@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
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
Subject: Re: Is it just me? Can't get 'Atom-PC' to boot.
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
X-List-Received-Date: Mon, 16 Jul 2012 21:53:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 16 Jul 2012, at 21:40, Jim Abernathy wrote:

> On 07/16/2012 04:25 PM, Chris Tapp wrote:
>> I've built the 'atom-pc' kernel as follows:
>>=20
>> 1) git clone git://git.yoctoproject.org/poky.git
>> 2) git checkout denzil
>> 3) source poky/oe-init-build-env work-area
>> 4) Edit local.conf so that threads/parallel make are both 16 and =
MACHINE is 'atom-pc'
>> 8) bitbake virtual/kernel.
>>=20
>> However, the kernel that gets produced fails to boot. All I get is a =
screen full of random characters and nothing comes out of the serial =
port (configured for kernel messages). I don't get any 'Loading...' or =
'Uncompressing...' messages either. Using a kernel image from else where =
(e.g. Voyage Linux) works as expected.
>>=20
>> What do I need to do differently to get the above to build a bootable =
image? I'm assuming that 'atom-pc' works for others?
> When I build for Atom PCs, I'm usually targeting a specific BSP like =
CrownBay, n450, Cedartrail. All of those require the meta-intel layer. =
So you need to edit the local.conf with a machine like n450, crownbay, =
cedartrail, etc. and you need to edit bblayer.conf to add the meta-intel =
layer and the meta-intel/meta/crownbay, etc.

I've just tried 'n450' and that gives the same result - I.e. screen full =
of random stuff.

> I always bitbake core-image minimal or core-image-sato.

I generally build a full image as well, but I'm just after a kernel that =
I can boot at the moment so virtual/kernel is enough for now ;-)

The 2.6.? kernel for my BSP that I build under Poky-4 runs, but I've not =
managed to get 3.0 or 3.2 to work from Poky-7 (for my BSP). So I thought =
I would go for a 'known good' kernel and modify it for my needs. =
However, I've not managed to get the 'known good' start point yet ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




