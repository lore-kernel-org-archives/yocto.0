Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF68E014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 11:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=HBAWZtc4/7NQTR4m+dAA2p4vgNpdKtGk6Ff306UHYXY=; 
	b=eewKEcgdGZZmRRKyc997LQRDWjnTozpo64C65xo36KHSbphHYyRIf/G74zRQ2hI795vqEHuDZf7y57BvKuZoF80KHoLdTsLJqQYAEKnxgLTVmOfpbmBT9UmCw2S0e5krdph6/r2pqSj8wpnC5XFnHj7XO3a0Tt04IgyiOskjmDE=;
Received: from [109.224.129.17] (port=62120
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1V4xxV-002TnZ-0R; Thu, 01 Aug 2013 19:50:45 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <3556481.TFZYk16CGl@helios>
Date: Thu, 1 Aug 2013 19:50:43 +0100
Message-Id: <9C627D93-BF0B-446F-BEED-BE6C149B36C6@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<FDB39166-46D6-451C-9681-89E214958BF3@keylevel.com>
	<3556481.TFZYk16CGl@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: Network booting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Aug 2013 18:50:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 1 Aug 2013, at 09:35, Paul Eggleton wrote:

> Hi Chris,
>=20
> On Wednesday 31 July 2013 22:25:42 Chris Tapp wrote:
>> On 31 Jul 2013, at 21:30, Chris Tapp wrote:
>>> Is there an easy way to have a system boot and load the rootfs from =
a
>>> network server?
>>>=20
>>> I'm using an x86 system and can have the kernel and an initrd on it. =
I
>>> would use bootp, but a lot of end users either don't have this or =
will
>>> not allow it to be used. I think it needs to go something like:
>>>=20
>>> 1) Kernel loads the initrd and bring the network up (static or =
DHCP);
>>> 2) The rootfs image can then be download;
>>> 3) Some magic then makes this run...
>>>=20
>>> This would allow easy update of the rootfs and makes it non-volatile
>>> (which is good for this project).
>>>=20
>>> Does this make sense, or is there a better / easier way to do it?
>>=20
>> Looks like http://ipxe.org/ could be what's needed.
>=20
> FWIW, a couple of years ago I did write a recipe for ipxe which I =
successfully
> used for over-the-network booting with atom-pc. I never found a proper =
home
> for it though so it's still sitting in one of my poky-contrib =
branches:
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/tree/meta/recipes-b=
sp/ipxe?h=3Dpaule/ipxe
>=20
> Feel free to make use of it if it helps you. (I can't promise it =
hasn't
> bitrotted in the time since I wrote it, so it may need tweaking; I =
notice
> I didn't even specify a SRCREV which really should be specified, and
> I'm not sure if it's cross-compiling properly either).


I'm running on Cedartrail, so this will probably work nearly as-is. =
Thanks.

I need to use http rather then tftp, but that looks simple enough to do.

I think I need to add a new image so that a SYSLINUX (or EXTLINUX) USB =
boot disk image gets created at the same time as the kernel / rootfs. I =
can do this manually, but it'll probably be worth adding it as another =
build option (note to self: make it usable as in installer as well). =
Just need to find a recipe that installs syslinux to see how to do it...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




