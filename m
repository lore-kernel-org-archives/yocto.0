Return-Path: <linux@rkirkpat.net>
Received: from saratoga.rkirkpat.net (saratoga.rkirkpat.net [206.196.156.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C67E011C5
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 12:52:22 -0700 (PDT)
Received: from magellan.rkirkpat.net (magellan.rkirkpat.net [192.168.7.5])
	by saratoga.rkirkpat.net (Postfix) with ESMTP
	id 0E6597175D; Wed,  9 Oct 2013 13:52:21 -0600 (MDT)
Date: Wed, 9 Oct 2013 13:52:21 -0600 (MDT)
From: Ryan Kirkpatrick <linux@rkirkpat.net>
X-X-Sender: rkirkpat@magellan.rkirkpat.net
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <6281089.irBXZr162j@helios>
Message-ID: <alpine.DEB.2.00.1310091328540.27991@magellan.rkirkpat.net>
References: <alpine.DEB.2.00.1309201728360.21975@magellan.rkirkpat.net>
	<alpine.DEB.2.00.1309261742510.27991@magellan.rkirkpat.net>
	<6281089.irBXZr162j@helios>
User-Agent: Alpine 2.00 (DEB 1167 2008-08-23)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Mono 2.10.8.1 (meta-mono) Corelib not in sync with runtime...
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
X-List-Received-Date: Wed, 09 Oct 2013 19:52:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 8 Oct 2013, Paul Eggleton wrote:

> Have you sent these fixes to the layer maintainer - Autif Khan 
> (autif.mlist@gmail.com) ? It would be good to get those integrated.

Yes, I did shortly after my post to the list, but I have not heard any 
response. 

Since then I have run into some issues with Mono v2.10 itself and my 
company's existing (proprietary) code base. It is an odd issue around 
events and a complex class hierarchy that I had encountered in the past 
with Mono v2.4 (but not v2.2). I traced it down to a single change in Mono 
and backed out that change for the previous product (an embedded server). 
I did report it to the Mono list at that time, but there was no simple 
test case I could share.

Anyway, I did a quick test with Mono v3.2 (from their web site on OS X) 
and the issues were no longer present. Hence, for the new product that I 
plan to use Yocto to develop, I am going to use Mono v3.2. Of course the 
current Mono layer has a lot more than we need (which is only the runtime 
and corelib, no X, xsp, etc...) but only includes support through v2.11. I 
am currently considering whether updating the existing meta-mono layer for 
v3.2 or just writing a quick recipe for just want we need from Mono.

This is complicated by a quick attempt to build the existing Mono layer 
for ARM failing. The failure was on the ARM objcopy not knowing what to do 
with mcs.exe.so as it is .NET assembly wrapped as an i386 shared object. 
This was during the generation of the debug package files, so looks like 
that process needs to be tweaked to understand this special case. 

I would welcome any advice on how to proceed with Mono v3.2 recipes and 
for building on ARM. Thanks!

---------------------------------------------------------------------------
| Ryan Kirkpatrick | Boulder, CO | rkirkpat.net | twitter.com/rkirkpatnet |
---------------------------------------------------------------------------

