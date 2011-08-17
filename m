Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63262E01211
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 12:07:08 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:57325
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QtlSP-0003vl-Vy
	for yocto@yoctoproject.org; Wed, 17 Aug 2011 20:07:18 +0100
Message-Id: <8232FE7C-6344-44C9-A87C-24C5AABF2E06@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E4BDBAE.1060402@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 17 Aug 2011 20:07:15 +0100
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>	<4E45D1F2.6040902@windriver.com>
	<84AA8A6F-7556-4965-93ED-BDD4322047B3@keylevel.com>
	<4E4BDBAE.1060402@windriver.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: Configuring a layer to support multiple targets
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
X-List-Received-Date: Wed, 17 Aug 2011 19:07:09 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 17 Aug 2011, at 16:18, Bruce Ashfield wrote:

> In this sense, the defconfig is simply a name to trigger
> specific processing. Just capture and call your .config
> 'defconfig' and you'll get a translation of those settings
> into the build.


That's what I've done. I used 'make xconfig' to modify the .config  
file (resulting from bitbake -c compile virtual/kernel). However,  
turning off CONFIG_USB_SERIAL and saving the result as a defconfig  
isn't quite what's needed.

Consider the .config fragment:

CONFIG_USB_SERIAL=y
CONFIG_USB_SERIAL_FTDI_SIO=y

The corresponding defconfig fragment produced when usb serial is  
disabled in xconfig results is simply:

# CONFIG_USB_SERIAL is not set

When the defconfig is merged with the .config I get:

# CONFIG_USB_SERIAL is not set
CONFIG_USB_SERIAL_FTDI_SIO=y

This means the FTDI module is still present in the kernel.

I can get rid of these by manually adding 'not set' entries in the  
defconfig, but it would be easier if I could replace the .config  
rather than patch it.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




