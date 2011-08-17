Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0010CE01211
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 12:38:47 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:46110
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qtlx3-0004nc-Pt
	for yocto@yoctoproject.org; Wed, 17 Aug 2011 20:38:57 +0100
Message-Id: <15790C7C-DBA3-4DF8-9147-806203D05544@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E4C1347.4050100@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 17 Aug 2011 20:38:55 +0100
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>	<4E45D1F2.6040902@windriver.com>	<84AA8A6F-7556-4965-93ED-BDD4322047B3@keylevel.com>	<4E4BDBAE.1060402@windriver.com>
	<8232FE7C-6344-44C9-A87C-24C5AABF2E06@keylevel.com>
	<4E4C1347.4050100@windriver.com>
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
X-List-Received-Date: Wed, 17 Aug 2011 19:38:48 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 17 Aug 2011, at 20:15, Bruce Ashfield wrote:

> The model is that you must explicitly chose values to modify
> them, otherwise, they flow through. Last through the gate wins.
> If you don't speak, others parts speak for the configuration.

That's what I was trying to say ;-)

> In this case, you must be inheriting the common-pc kernel  
> configuration.

I am.

> The solutions two this are:
> ...
>  - inherit from a base branch vs common-pc (assuming that I guessed  
> right)

Sounds like a plan. Where can I find a list of the branches in the  
4.0.1 meta data? I'm using the following to select one at the moment:

WRMACHINE_Vortex86DX  = "common_pc" --- I'm guessing I need something  
else here.

SRCREV_machine_pn-linux-wrs_Vortex86DX ?=  
"0431115c9d720fee5bb105f6a7411efb4f851d26"

>  - convince us that the common-pc shouldn't be turning this
>    on and trickle this option out to the leaf BSPs.

No, it seems perfectly reasonable to have this in 'common-pc'.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




