Return-Path: <dean@ripperd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C409E007A0; Wed, 13 Aug 2014 05:40:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [76.96.59.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Aug 2014 05:40:19 PDT
Received: from qmta15.westchester.pa.mail.comcast.net
	(qmta15.westchester.pa.mail.comcast.net [76.96.59.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FB5AE00796
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 05:40:19 -0700 (PDT)
Received: from omta22.westchester.pa.mail.comcast.net ([76.96.62.73])
	by qmta15.westchester.pa.mail.comcast.net with comcast
	id eCaW1o0051ap0As5FCfEaJ; Wed, 13 Aug 2014 12:39:14 +0000
Received: from mail.ripperd.com ([24.118.104.28])
	by omta22.westchester.pa.mail.comcast.net with comcast
	id eCfD1o00t0cmX743iCfEaF; Wed, 13 Aug 2014 12:39:14 +0000
Received: by mail.ripperd.com (Postfix, from userid 65534)
	id BEB1D663B0; Wed, 13 Aug 2014 07:39:13 -0500 (CDT)
Received: from [10.0.1.6] (unknown [10.0.1.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.ripperd.com (Postfix) with ESMTPSA id 4214F66398;
	Wed, 13 Aug 2014 07:39:12 -0500 (CDT)
Message-ID: <53EB5C70.6080004@ripperd.com>
Date: Wed, 13 Aug 2014 07:39:12 -0500
From: Dean <dean@ripperd.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
 yocto@yoctoproject.org
References: <53ABE6A1.2000007@dynamicdevices.co.uk>
	<53ABEDFC.2010205@dynamicdevices.co.uk>
In-Reply-To: <53ABEDFC.2010205@dynamicdevices.co.uk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20140121; t=1407933554;
	bh=X/01jOC9+yqVrVUdTgY9UtXlIu2Wj1PjzKw/LF+01+s=;
	h=Received:Received:Received:Received:Message-ID:Date:From:
	MIME-Version:To:Subject:Content-Type;
	b=XrcqTWprSwTG5SRPXYFFCjdvir+TPbHCFt3eHn+PIj+bGnTTVdnrGAKqTllJm7zFZ
	tpdCsQWfsMqaJYtf76ea3nEVtN6wHaBEfMENVf23uC86hv0Fxlb+p08cnZs3eiEsLd
	e6L3JwMbvb1IhQ0ERioL14DsC16aGC8MOfEZoUcFLA1kcOJec0Ob8lZIm3ST9FZeZN
	M5/s4FBFgL3ZAQqWkJC9p51/XZ+Uo0aIinzNAyWzTWoMFyYtxKksehsKPNjMCrulPl
	bx/pPuR4Lo3opyMFpnF4oTZPATYXcWlB85IovaIvm5gcHFnTxWv9eJtmYG3paOKEmF
	i07LzFJHoKKxg==
Subject: Re: Problem with DNS resolution using resolvconf (poky/daisy)
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
X-List-Received-Date: Wed, 13 Aug 2014 12:40:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Did you ever figure this out?

The yocto resolvconf package is missing a few things to make it actually 
work like it works on other distributions. I ripped some parts out of 
Debian and have it all working (although not polished).

If you want to see my .bbappend and extra files I can send them to you.

Thanks,
Dean


On 6/26/2014 4:55 AM, Alex J Lennon wrote:
> On 26/06/2014 10:23, Alex J Lennon wrote:
>> Hi,
>>
>> I'm looking at resolvconf as I want to be able to pick up dns-nameserver
>> changes in /etc/network/interfaces, and I'm reading that this is the way
>> to do it.
>>
>> Having added the resolvconf package the eth0 interface is now not
>> correctly picking up DNS servers and putting them in /etc/resolv.conf
>>
>> The behaviour is due to /etc/udhcpc.d/S50default which in the absence of
>> resolvconf just creates /etc/resolv.conf (which works) or if the
>> resolvconf binary is present it attempts to use it (which doesn't).
>>
>>
>> resolvconf looks to be using /etc/resolvconf/update.d/libc to create
>> /etc/resolv.conf but is crapping out as /lib/resolvconf/list-records
>> doesn't exist.
>>
>> Is this a bug or could anybody help me to understand if there's some
>> other step I should be taking here?
>>
>> Many thanks,
>>
>> Alex
> To answer my own question, I see it is a bug, and is in the process of
> being addressed post-daisy -
>
> http://article.gmane.org/gmane.comp.handhelds.openembedded.core/52463
>
>


