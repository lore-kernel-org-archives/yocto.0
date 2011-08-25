Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3758EE00320
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 12:43:24 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:57926
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1Qwfpj-0007RJ-80; Thu, 25 Aug 2011 20:43:23 +0100
Message-Id: <DA02772B-1B73-4F86-AADA-FBEA9D1E1240@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E56A452.1070802@mlbassoc.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 25 Aug 2011 20:43:20 +0100
References: <AAFBB6E0-E03A-4045-8C57-C522EAF735B3@keylevel.com>
	<4E569F39.3000500@mlbassoc.com>
	<A615BA66-D76B-4749-91D4-2C3121FDC78E@keylevel.com>
	<4E56A452.1070802@mlbassoc.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: Adding X to image
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
X-List-Received-Date: Thu, 25 Aug 2011 19:43:24 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 25 Aug 2011, at 20:36, Gary Thomas wrote:

> On 2011-08-25 13:33, Chris Tapp wrote:
>> On 25 Aug 2011, at 20:15, Gary Thomas wrote:
>>
>>> On 2011-08-25 13:07, Chris Tapp wrote:
>>>> What do I need to add where to get 'X' in to my image?
>>>>
>>>> I've built poky-image-base (under 4.0.1) and things like xinit  
>>>> have been built and are in the tmp/work tree.
>>>>
>>>> What do I need to add so that xinit (and dependencies) are added  
>>>> to the image? Should I be building a different image?
>>>
>>> Try core-image-sato - it has a full-up X [matchbox based] X desktop
>>
>> Thanks Gary,
>>
>> I can't find that one, bit I'm trying task-poky-x11-sato...
>
> If you're not using the bleeding-edge-master, it might be named poky- 
> image-sato
>
> task-poky-x11-sato is just a collection of packages needed for X.   
> It won't
> build a final root file system.

Sure. I should have mentioned that I will add this to my project  
image ;-)

However, poky-image-sato sounds like it's worth a try first. Building...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




