Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3471DE00320
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 01:48:02 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:35810
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qtb1y-0000u2-ML
	for yocto@yoctoproject.org; Wed, 17 Aug 2011 08:59:18 +0100
Message-Id: <84AA8A6F-7556-4965-93ED-BDD4322047B3@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E45D1F2.6040902@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 17 Aug 2011 08:59:16 +0100
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
	<4E45D1F2.6040902@windriver.com>
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
X-List-Received-Date: Wed, 17 Aug 2011 08:48:04 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 13 Aug 2011, at 02:22, Bruce Ashfield wrote:

> What's your yocto release / base kernel ? IF you happen to
> be using linux-yocto there are several ways to avoid using
> defconfigs at all, and share your common base of kernel
> configuration items.

Plan is to move to linux-yocto (currently using wrs). How do I  
configure it without using a defconfig?

Also, is it possible to use a .config rather than a defconfig? I've  
got a lot of stuff turned off to reduce the size of the kernel, but a  
defconfig doesn't quite do. For example, if I have

# CONFIG_USB_SERIAL is not set

in a defconfig, then this gets in to the .config at build time.  
However, this doesn't disable any dependencies that are enabled in  
linux-wrs. This means that modules for the likes of the ftdi and  
pl2303 USB serial devices are still included in the kernel image.

The use of a complete .config would stop this.


Chris Tapp

opensource@keylevel.com
www.keylevel.com




