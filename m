Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 586D4E01211
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 13:42:20 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:59166
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QtmwX-0006ZH-DL
	for yocto@yoctoproject.org; Wed, 17 Aug 2011 21:42:29 +0100
Message-Id: <8BE62F3C-20FF-4D5C-AD60-5C31DB910E17@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E4C2399.1040505@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 17 Aug 2011 21:42:26 +0100
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>	<4E45D1F2.6040902@windriver.com>	<84AA8A6F-7556-4965-93ED-BDD4322047B3@keylevel.com>	<4E4BDBAE.1060402@windriver.com>	<8232FE7C-6344-44C9-A87C-24C5AABF2E06@keylevel.com>	<4E4C1347.4050100@windriver.com>
	<15790C7C-DBA3-4DF8-9147-806203D05544@keylevel.com>
	<4E4C2399.1040505@windriver.com>
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
X-List-Received-Date: Wed, 17 Aug 2011 20:42:20 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 17 Aug 2011, at 21:24, Bruce Ashfield wrote:

> I have to head out for the day, but I'll loop around on this.
> Technically I'm out of the office for the next 2 days, but can
> sneak this in. I just need to double check a couple things in
> the 2.6.34 support to see if inheriting from 'standard' directly
> will work for you .. and if it won't, I can give you patch
> to carry locally for a bit.

Thanks, but please don't speed too much time on it if 'standard' isn't  
going to work. This is only a research project at the moment and I can  
patch my defconf easily enough for now (especially as it seems I need  
to re-enable USB_SERIAL with USB_SERIAL_GENERIC to get the CM119 usb  
audio on the SoC to work, which means a defconf will now do what I  
want).

It would be nice to have a proper (generic) solution going forward,  
but I plan to switch to linux-yocto-stable in the pending release.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




