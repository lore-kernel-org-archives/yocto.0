Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90AF1E01408
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 10:36:27 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-61-246.range86-170.btcentralplus.com
	[86.170.61.246]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 9CB8F60E52;
	Tue, 15 May 2012 18:36:26 +0100 (BST)
Message-ID: <4FB29419.7070302@r-finger.com>
Date: Tue, 15 May 2012 18:36:25 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com> <4FB279CC.1080503@windriver.com>
In-Reply-To: <4FB279CC.1080503@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi [was Re: Kernel modules fail to compile for ARM]
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
X-List-Received-Date: Tue, 15 May 2012 17:36:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Bruce,

On 15/05/12 16:44, Bruce Ashfield wrote:
> On 12-05-15 05:15 AM, Tomas Frydrych wrote:
>> On 14/05/12 19:52, Chris Tapp wrote:
>>> I'm trying to put a BSP together for an ARM system (Raspberry Pi,
>>> ARM1176JZF-S CPU).
>>
>> I got the feeling that there might be multiple OE/RPI efforts going on
>> at the same time unaware of each other, e.g., I noticed this
>> meta-raspberrypi layer on github that seems to be well on the way,
>> https://github.com/djwillis/meta-raspberrypi ... perhaps getting various
>> folk interested in this together would be beneficial.
> 
> I'll jump in and ask my obvious question, if we want to pull in some
> extra BSP/kernel developers, is there a fundamental reason why a
> different kernel/kernel version than one of the linux-yocto ones is
> being used ?
> 
> If you line up with one of those, there's a chance to pickup fixes,
> features and have someone like me help maintain things where it
> makes sense.

Let me turn this question back at you then: is Yocto going to be doing
thorough Q&A for all of these HW platforms? Decent Q&A is what really
sets Yocto apart, and what makes it my first port of call, but I got a
feeling that the scope of this is at the moment somewhat restricted as
far as HW is concerned; without Q&A 'fixes' quickly turn into problems
-- I'd rather be pulling kernel from somewhere that deals with the
specific HW that pick up generic fixes without the Q&A.

(Though admittedly working with some silicon vendors specific meta
layers can be real PITA :) ).

Tomas

