Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id A22254C80479
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 14:11:00 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:9660 helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1PrFcR-0004ZY-As; Sun, 20 Feb 2011 20:10:59 +0000
Message-Id: <70209A2D-B4A5-4546-9A55-6218C69C96B3@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D615D21.7010304@mlbassoc.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 20 Feb 2011 20:10:56 +0000
References: <3776E9FA-795C-450E-83EF-FF154CF1B6FF@keylevel.com>	<4D6157A2.8050906@mlbassoc.com>
	<02231D24-6F1D-40B5-BD03-6DAA5A49E038@keylevel.com>
	<4D615D21.7010304@mlbassoc.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: How do I use layers to replacing system configuration files?
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
X-List-Received-Date: Sun, 20 Feb 2011 20:11:01 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 20 Feb 2011, at 18:27, Gary Thomas wrote:

> On 02/20/2011 11:23 AM, Chris Tapp wrote:
>>
>> FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> That would be great (if it works).  My recipes are based on examples
> which were available when the .bbappend and layers were first  
> introduced.

It's working for me ;-)

Chris


