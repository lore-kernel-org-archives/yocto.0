Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC418E013D2
	for <yocto@yoctoproject.org>; Sun, 26 Aug 2012 13:16:18 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1T5jFp-0007xJ-UX
	for yocto@yoctoproject.org; Sun, 26 Aug 2012 21:16:18 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <41A646A9-2589-4D50-A29F-F13C24A15C12@keylevel.com>
Date: Sun, 26 Aug 2012 21:16:15 +0100
Message-Id: <5B9ABCCE-0D0B-47F6-A6A4-14AA5B5113B0@keylevel.com>
References: <2D9B14E8-E576-4279-8537-BFD303B125F5@keylevel.com>
	<41A646A9-2589-4D50-A29F-F13C24A15C12@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
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
Subject: Re: Virtual consoles not working
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
X-List-Received-Date: Sun, 26 Aug 2012 20:16:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 26 Aug 2012, at 21:02, Chris Tapp wrote:

>> How do I get virtual consoles working? I think I may have missed a =
step along the way:
>>=20
>> 1) I've got entries in /etc/inittab of the form:
>>  1:2345:respawn:/sbin/getty 38400 tty1
>>  2:2345:respawn:/sbin/getty 38400 tty2
>> 2) I'm at runlevel 5
>> 3) 'ps' shows that getty is running on tty1
>>=20
>> However, <Alt><right-arrow>, <Alt><F2> and <Ctrl><Alt> variants don't =
switch to another console. In fact, I only get the final state of the =
psplash screen.
>>=20
>> Serial console is working as expected and the caps-lock light on the =
keyboard is changing state.
>>=20
>> Kernel is linux-yocto 3.4 for a custom BSP.
>=20
> That should have been linux-yocto 3.2.


Got it - I needed to enable CONFIG_FRAMEBUFFER_CONSOLE in the kernel.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




