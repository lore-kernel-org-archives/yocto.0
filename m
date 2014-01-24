Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE7BE00840
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 08:28:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0OGS7Wq025714
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 08:28:07 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Fri, 24 Jan 2014 08:28:07 -0800
Message-ID: <52E29496.3050501@windriver.com>
Date: Fri, 24 Jan 2014 10:28:06 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <c861263105a79f5049e029ab9fd79e56@webmail.1blu.de>
	<CAJTo0LZs6rkCsAxKuHkKoRFOY12TYs3WcVU5dmxSv5V+YFZJxA@mail.gmail.com>
In-Reply-To: <CAJTo0LZs6rkCsAxKuHkKoRFOY12TYs3WcVU5dmxSv5V+YFZJxA@mail.gmail.com>
Subject: Re: Smart - "Illegal instruction"
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
X-List-Received-Date: Fri, 24 Jan 2014 16:28:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/24/14, 4:26 AM, Burton, Ross wrote:
> On 24 January 2014 10:21,  <yoctolist@progserv.de> wrote:
>> Do I have to define a new BSP?
>>
>> Did anyone have a similar problem and could give me some advice?
>
> IIRC, genericx86 targets Atom and higher (the README lists the target
> hardware) so it's quite possible that the compiler is emitting
> instructions that your CPU doesn't actually have.  You could create a
> new BSP, or edit the tune flags from your distro or local
> configuration to target your CPU.

I believe that this AMD Sempron processor is using an older instruction set.  So 
as Ross indicated, the best approach is to define a correct tune and BSP for 
your part.

Looking at what I found online, it appears the Sempron 2100 supports:

MMX, 3DNow!, SSE, SSE2, SSE3, AMD64 and EVP

The atom tune is compatible with the core2 tune.  The core2 supports

MMX, SSE, SSE2, SSE3, SSE4.1, and Supplemental SSE3

So my guess is that last two items is the issue.  If you copy the genericx86 BSP 
and modify the configuration to use the tune-x86_64.inc instead, that may fix 
your issue.

--Mark

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


