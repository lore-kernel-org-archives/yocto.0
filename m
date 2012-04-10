Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE69E0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 12:19:12 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:26057
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SHgaq-0004BG-CB; Tue, 10 Apr 2012 20:19:08 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F8469B9.7020408@mlbassoc.com>
Date: Tue, 10 Apr 2012 20:19:05 +0100
Message-Id: <43CD100C-560F-49EF-BCD7-8687A44010F9@keylevel.com>
References: <F0BD60FF-D2C0-401B-A3D3-61742D20D91A@keylevel.com>
	<4F8469B9.7020408@mlbassoc.com>
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
Subject: Re: Help debugging CF support under 3.0.18
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
X-List-Received-Date: Tue, 10 Apr 2012 19:19:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 10 Apr 2012, at 18:11, Gary Thomas wrote:

> On 2012-04-10 11:03, Chris Tapp wrote:
>> I've been trying to get a BSP running under 6.0.1 using kernel 3.0.18 =
for an ALIX 3D3 board. I've done this before under 4.0.1 using 2.6.34.
>>=20
>> It's nearly working, but I can't get partitions on the CF card (which =
works under 2.6.34) to show.
>>=20
>> - The controller (CS5536) is showing as loaded in dmesg.
>> - hda is reported as using UDMA/33, but hda1 is not mentioned.
>> - /proc/partions does not show hda1.
>> - cat'ing /proc/ide/ide0/hda/model reports 'CF 1GB', which is what =
the CF is.
>> - The following kernel options are on : CONFIG_PCI, =
CONFIG_PCI_QUIRKS, CONFIG_BLK_IDEPCI, CONFIG_IDEPCI_PCIBUS_ORDER, =
CONFIG_BLK_DEV_IDEDMA.
>>=20
>> I suspect I've turned 'something' off in the kernel configuration =
that I need, but it's not obvious (to me) what it could be. What's the =
best way of tracking this down? I'll start again using a base .config =
file, but it takes a long time to rebuild the kernel (I need a faster =
machine!) and it'll take a while to work out what I've touched in error.
>>=20
>> On a related note, I use SRCREV_machine_pn-linux-yocto_mybsp ?=3D =
"d7e81e7f975c57c581ce13446adf023f95d9fd9f" in my kernel bbappend (base =
3.0.18 kernel). If I do a 'cleanall' and then build I have to wait for =
the kernel to be downloaded, even though I have a DL_DIR specified. Is =
it possible to stop this happening? If not, is there a better way to =
rebuild the kernel and get a new image in deploy/install?
>=20
> Do you have CONFIG_HOTPLUG=3Dy?

Yes, that's set. However, CONFIG_HOTPLUG_PCI isn't.

Do I need hotplug? The CF card is the boot media (currently booting from =
USB while getting this fixed) and is present when the system starts.

Chris


