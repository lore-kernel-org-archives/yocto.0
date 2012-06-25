Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A0EE006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:37:37 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SjGyW-0002As-SN; Mon, 25 Jun 2012 22:37:36 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
Date: Mon, 25 Jun 2012 22:37:33 +0100
Message-Id: <6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Jun 2012 21:37:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 25 Jun 2012, at 22:29, Khem Raj wrote:

> On Mon, Jun 25, 2012 at 2:24 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>>=20
>> On 25 Jun 2012, at 22:16, Khem Raj wrote:
>>=20
>>> On Mon, Jun 25, 2012 at 12:56 PM, Chris Tapp =
<opensource@keylevel.com> wrote:
>>>> I'm having some issues building a working kernel for the RPi under =
Denzil, which is using gcc 4.6.3. The 'official' kernel uses gcc 4.5.1.
>>>=20
>>> Do you have issues building it with 4.6.3 ?
>>=20
>>=20
>> Not sure. All I know is some of the kernel SRVREVs run with 4.6.3, =
some don't. The ones that don't will run if I build them will run using =
the download of the corresponding kernel image from the repository - =
these were built from the same source under 4.5.1. I thought it would be =
worth trying with another version.
>>=20
>> 4.5.1 would be the best bet, but that's not in Denzil. The BSP =
doesn't work with Edison, which does have 4.5.1. Not sure if the best =
bet is to modify the BSP or migrate 4.5.1 to Denzil (unfortunately not =
as easy as just copying the files).
>=20
> well either way you have work to do. I think making kernel work with
> 4.6+ is forward looking and will be beneficial in future too. It would
> be nice to know
> whats the gcc 4.5 dependency, which version of kernel are we talking =
about ?


It's the rpi-patches branch at https://github.com/raspberrypi/linux.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




