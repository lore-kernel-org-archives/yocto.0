Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE154E004AB
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:18:07 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-116-70.range81-153.btcentralplus.com
	[81.153.116.70]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 1C4089ADE
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 10:18:06 +0100 (BST)
Message-ID: <5040814D.8030106@r-finger.com>
Date: Fri, 31 Aug 2012 10:18:05 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
	<50407DDE.8070208@r-finger.com>
	<50407F73.5060308@communistcode.co.uk>
In-Reply-To: <50407F73.5060308@communistcode.co.uk>
Subject: Re: meta-raspberry pi libav bbappend
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
X-List-Received-Date: Fri, 31 Aug 2012 09:18:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/08/12 10:10, Jack Mitchell wrote:
> Thanks for the suggestion but unfortunately no dice. It was working
> about a week ago with this BBMASK...The only big change I can see is
> that omxplayer now depends in libav, but I have tried just masking the
> whole recipes-multimedia path with the same result, so I don't it's that.


I think the poky-raspberrypi.conf is overriding your BBMASK and it no
longer masks out libav, see
https://github.com/djwillis/meta-raspberrypi/commit/3e0cf999e8fe547a52cb8af28eefdf0f8482daba

Tomas

> 
>>
>>>
>>>
>>>
>>> Does this BBMASK not cover:
>>>
>>>   
>>> /home/jack/Projects/poky-rasp/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend
>>>
>>>
>>>
>>>
>>> Cheers,
>>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 


