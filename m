Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03E8FE0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 13:20:37 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:14783
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SFt7b-0006n7-Fl; Thu, 05 Apr 2012 21:17:31 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F7DFC36.5040108@mlbassoc.com>
Date: Thu, 5 Apr 2012 21:17:28 +0100
Message-Id: <8E003040-BCBA-43ED-82B3-9C7BF771AB44@keylevel.com>
References: <30B122B8-C6E4-46CE-87A9-AF7F61A06643@keylevel.com>
	<4F7DFC36.5040108@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1257)
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
Subject: Re: kernel26 'machine feature'
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
X-List-Received-Date: Thu, 05 Apr 2012 20:20:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 5 Apr 2012, at 21:10, Gary Thomas wrote:

> On 2012-04-05 14:02, Chris Tapp wrote:
>> Quite a few machine conf files specify the kernel26 machine feature. =
e.g., crownbay.conf has:
>>=20
>> MACHINE_FEATURES =3D "kernel26 screen keyboard pci usbhost ext2 ext3 =
x86 \
>>                     acpi serial usbgadget"
>>=20
>> What does this do? It's not listed at =
http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.ht=
ml#ref-features-machine and seems to be at odds with:
>>=20
>> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>> PREFERRED_VERSION_linux-yocto =3D "3.0%"
>=20
> I don't think it does anything any more.  I'm pretty sure it used
> to be used to select which style of kernel module utilities to
> install (there was a change in kernel module format between 2.4
> and 2.6), but it seems that's gone now.  At least in the Poky/Yocto
> tree (oe-core + meta-yocto), there is no active use of this feature.

Thanks, I was hoping it was something as simple as that.

Another (possibly related) question - when the kernel built I noticed =
that linux_libc_headers_yocto-2.6.37 was 'mentioned' in the log output. =
Why was this used and not the headers for 3.0.18 ? The host is 2.6.32, =
so it doesn't look like is was for the tool chain.

Chris Tapp

opensource@keylevel.com
www.keylevel.com

