Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A906CE00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 14:22:39 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SqskY-0004wC-AH; Mon, 16 Jul 2012 22:22:38 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <2B3B77214A4B4B52B5556E9ED70FA3F7@intel.com>
Date: Mon, 16 Jul 2012 22:22:36 +0100
Message-Id: <16798BF1-7405-452A-BC64-986616BF0B5A@keylevel.com>
References: <4C00373C-A571-4194-A3CF-28B349430E53@keylevel.com>
	<2B3B77214A4B4B52B5556E9ED70FA3F7@intel.com>
To: Ross Burton <ross.burton@intel.com>
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
X-List-Received-Date: Mon, 16 Jul 2012 21:22:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 16 Jul 2012, at 22:02, Ross Burton wrote:

> On Monday, 16 July 2012 at 21:25, Chris Tapp wrote:
>> I've built the 'atom-pc' kernel as follows:
>>=20
>> 1) git clone git://git.yoctoproject.org/poky.git =
(http://git.yoctoproject.org/poky.git)
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
> How are you actually booting the kernel?  I frequently boot the =
generated hddimg when written to a USB stick on my Zotac box, but it's =
well known that PC hardware is a nightmare to boot reliably...=20


I've got a USB stick with Extlinux on it. The profile I use is always =
the same - I just change the 'KERNEL' stanza to point to a different =
kernel image.

opensource@keylevel.com
www.keylevel.com




