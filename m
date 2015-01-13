Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D334E004F2; Tue, 13 Jan 2015 09:48:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC8DE002F9
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 09:47:48 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3D1C3F811E4; Tue, 13 Jan 2015 10:47:46 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 98DE0F811DE;
	Tue, 13 Jan 2015 10:47:45 -0700 (MST)
Message-ID: <54B55A43.1090701@mlbassoc.com>
Date: Tue, 13 Jan 2015 10:47:47 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BY1PR0301MB0903960DEDEACE9D2470CC5DFC400@BY1PR0301MB0903.namprd03.prod.outlook.com>
In-Reply-To: <BY1PR0301MB0903960DEDEACE9D2470CC5DFC400@BY1PR0301MB0903.namprd03.prod.outlook.com>
Subject: Re: [BBB] RTL8188EE not mounting
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
X-List-Received-Date: Tue, 13 Jan 2015 17:48:08 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-01-13 10:00, Cameron B Skinner wrote:
> Let me start by apologizing if the outcome is very obvious to everyone but me. I’m VERY new to Linux and newer to Yocto.
>
> I have an RTL8188EE wifi board that I’m connecting to a Beaglebone Black via USB. If I do an ‘lsusb’ I can see that there is a Realtek device out there somewhere. Even though the
> driver for this exact device appears in the kernel drivers, the device doesn’t mount. I’m running the dizzy version and have tried building the Sato, Full Command Line and Basic
> versions hoping that one of them would include whatever it is that I need to recognize this device.
>
> For the non-Sato versions I did copy the uImage and Modules to the SD card thinking they might help.
>
> Any help would be great.

For this device to work you need both a kernel driver and
firmware.  The kernel driver is probably being built, but
the firmware is probably not installed.

Make sure your image includes the appropriate firmware for
the device.  In your case I think this would be linux-firmware-rtl8192ce

Does the appropriate driver get loaded into the kernel?  What
does 'lsmod' show?

If you still have trouble, send the output of 'lsmod' and 'dmesg'
after you plug in the device.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

