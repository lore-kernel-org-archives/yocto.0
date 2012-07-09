Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FB1AE0027B
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 12:21:36 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SoJWY-0001ad-Nk; Mon, 09 Jul 2012 20:21:34 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
Date: Mon, 9 Jul 2012 20:21:32 +0100
Message-Id: <BFDF841C-B14F-4690-B53B-996F47C9CC74@keylevel.com>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<CAMKF1soaqxAO5+m6D+fYv6e=WPw4PmuwLR-FSTfz6N657+=11w@mail.gmail.com>
	<CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
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
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi mailing list?
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
X-List-Received-Date: Mon, 09 Jul 2012 19:21:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi John,

On 9 Jul 2012, at 18:02, r10kindsofpeople wrote:

> On Mon, Jul 9, 2012 at 10:56 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>>=20
>> On Monday, July 9, 2012, r10kindsofpeople =
<r10kindsofpeople@gmail.com>
>> wrote:
>>> There was some discussion of setting up a mailing list for Raspberry
>>> PI back in May...did anything come of this?
>>>=20
>>> Or is this [Yocto] the best place to post build questions regarding
>>> meta-raspberrypi ?
>>=20
>> Build related makes sense for yocto to ml I think
>>=20
>=20
> I suspect they're more tightly related to the meta-raspberrypi than
> general Yocto, but here goes with an example.  (Apologies in advance
> if I have terminology wrong, I'm still getting up to speed with
> Yocto).
>=20
> To begin, I did a git clone of the Yocto master, then a git-clone of
> meta-raspberrypi from github djwillis, then (after setting MACHINE and
> DISTRO per readme) bitbake rpi-hwup-image.

First thing, I've been running with 'Denzil', so master may give =
different results. I've also not updated my meta-raspberrypi for a =
while.

> Is this a silly thing to do?  Should I be using an earlier release of
> Yocto?  Or...?
>=20
> The first sign of trouble was an error message saying there were no
> recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappend).
> Noting that meta was at netbase-5.0 and that the .bbappend at a glance
> did not look to be version specific, I renamed the meta-raspberrypi
> recipe and directory to netbase-5.0, and the build was off and
> running.

Sounds reasonable. 4.7 is the version that's in 'Denzil'.

> Now I'm getting fetch failures for a variety of libraries, and, I
> think kernel-3.1.9.
>=20
> I can probably sort out some of these using the same process, but the
> larger question is whether I'm on the right track.

Yes, you're on the right track. Does

bitbake virtual/kernel

run ok? That should give you a useable kernel image. Running

bitbake bcm2835-bootfiles

will give you a complete set of files that can be used to boot the =
board. This won't give you a running system as there will be no root =
file system, but if this builds and runs then you're well on the way. =
I've seen some issues with the firmware (provided as binary files) that =
mean some kernel builds fail to run if kernel compression is used (you =
get a screen that shows four coloured 'boxes'). If that happens, then =
changing:

KERNEL_IMAGETYPE =3D "zImage"
to
KERNEL_IMAGETYPE =3D "Image"

in meta-raspberrypi/conf/machine/raspberrypi.conf will disable =
compression and should get you going.


> John
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




