Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE4ABE0027F
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 06:44:38 -0700 (PDT)
Received: from [192.168.1.3] (c-68-46-169-75.hsd1.nj.comcast.net
	[68.46.169.75])
	by smtp.webfaction.com (Postfix) with ESMTP id 8705C21349D0;
	Wed,  8 Aug 2012 08:44:37 -0500 (CDT)
Message-ID: <50226D44.3070503@mindchasers.com>
Date: Wed, 08 Aug 2012 09:44:36 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
In-Reply-To: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Wed, 08 Aug 2012 13:44:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/31/2012 01:27 PM, Elvis Dowson wrote:
> Is serial console login prompt broken on yocto for targets other than
> Intel? Does it work on ARM or PowerPC at the moment, with the latest
> yocto updates as of today?

Hi Elvis,

For my Freescale QorIQ e500v2 target, the use of getty inside init / 
inittab has been broken for awhile.  I used to get the hangs you're 
reporting, but now I also see the following at the conclusion of init:

serial8250: too much work for irq42


I'm glad you're working this issue, and I'll try to jump in this week.


My workaround has been a hack to inittab to replace getty with /bin/sh - 
most of my work is done across the network via ssh to the target, so I 
didn't mind ignoring the problem.


Bob



