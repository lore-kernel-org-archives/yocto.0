Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEF2DE01402
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 00:20:07 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SjQ4E-0006jx-3p; Tue, 26 Jun 2012 08:20:06 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1sqh4vsKs1Nc8FoZAKA47Un8t2wsQ0nm6nknGXXO4QTNkw@mail.gmail.com>
Date: Tue, 26 Jun 2012 08:20:04 +0100
Message-Id: <6E205126-6830-4042-ADA1-F4FFD1300035@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
	<6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
	<CAMKF1soot0iQ-nfZKAbnEEYieW+_H6YPWnrxcFQMSQiz_XPFjg@mail.gmail.com>
	<863CA417-BC2A-4F07-89C2-3E7A57B402D4@keylevel.com>
	<CAMKF1spJU7av-qysV3kzcT5xbim_o09B6zwYirjRP4MojsBScA@mail.gmail.com>
	<E63D1693-2EBC-463D-9ABE-95DA612387EE@keylevel.com>
	<CAMKF1srVRN4DfrbLb9xQ-h3EyUY_R6QR6cKaDPMBboRxG3aKeA@mail.gmail.com>
	<11425553-8DCD-4BAF-BAB1-1A2B35AFA225@keylevel.com>
	<CAMKF1sqh4vsKs1Nc8FoZAKA47Un8t2wsQ0nm6nknGXXO4QTNkw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Selecting gcc version
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
X-List-Received-Date: Tue, 26 Jun 2012 07:20:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 26 Jun 2012, at 02:36, Khem Raj wrote:

> On Mon, Jun 25, 2012 at 3:46 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>>=20
>>=20
>> Well, that proves it's not the compiler. Still fails to boot, even =
though the toolchain that's supposed to work is 4.5.1. Does 32-bit / =
64-bit host make a difference?
>=20
> host should not matter although from my compiler experience I have
> seen few cases where hosts injects bugs into cross compiler which
> showed up on the target in compiled code but those cases were rare.

Yes, I've not really seen any issues in this area before.

> You should make sure that the compiler if the guys (who claim it works
> ) doesnt carry patches that are special.


The tree that holds the tools (https://github.com/raspberrypi/tools) =
doesn't seem to have any source, so I'm assuming it's unmodified. =
However, I've asked the question just incase...

One thing I have noticed is the kernel images I build are less than half =
the size of the 'official' ones.

Thanks for all the help you've given me on this :-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




