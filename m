Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A984EE00739
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:57:47 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SjHI2-0002bY-Cu; Mon, 25 Jun 2012 22:57:46 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1spJU7av-qysV3kzcT5xbim_o09B6zwYirjRP4MojsBScA@mail.gmail.com>
Date: Mon, 25 Jun 2012 22:57:43 +0100
Message-Id: <E63D1693-2EBC-463D-9ABE-95DA612387EE@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
	<6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
	<CAMKF1soot0iQ-nfZKAbnEEYieW+_H6YPWnrxcFQMSQiz_XPFjg@mail.gmail.com>
	<863CA417-BC2A-4F07-89C2-3E7A57B402D4@keylevel.com>
	<CAMKF1spJU7av-qysV3kzcT5xbim_o09B6zwYirjRP4MojsBScA@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Jun 2012 21:57:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 25 Jun 2012, at 22:52, Khem Raj wrote:

> On Mon, Jun 25, 2012 at 2:48 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> Yes, it's 3.1.9 and it does compile. But the latest commits don't run =
when I build them (system displays a 'failed to execute kernel' error =
screen). Paul Eggleton has failed to get any to work when built using =
4.7.0 (current master), so it does look as if this is compiler-related.
>>=20
>> None of the commits appear to be likely to cause a change from 'good' =
to 'bad'.
>>=20
>=20
> can you tell me which commit is last good ?
> yes there are interaction between kernel and compiler
> sometimes kernel code has wrong expectation of gcc and when it gets
> fixed in gcc things dont work so in such cases kernel is fixed in some
> case kernel may expose real gcc bug too. Cant tell much unless its =
narrowed down


Last one I've got to work is =
https://github.com/raspberrypi/linux/commit/3fc65f9f291fb19cad434968a4a0f6=
6ab749e637.

I've opened an issue at =
https://github.com/raspberrypi/linux/commit/3fc65f9f291fb19cad434968a4a0f6=
6ab749e637 which also shows the firmware version that I know works, but =
that's probably not important here.

I think I've got it building under 4.5.1 (Edison, as that was easier to =
do for a quick test).

Chris Tapp

opensource@keylevel.com
www.keylevel.com




