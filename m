Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (mail.geekisp.com [216.168.135.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B55E00321
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 10:11:48 -0700 (PDT)
Received: (qmail 3125 invoked by uid 1003); 23 Aug 2011 17:11:44 -0000
Received: from unknown (HELO ?192.168.1.148?) (philip@opensdr.com@157.22.28.13)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	23 Aug 2011 17:11:44 -0000
Message-ID: <4E53DF4C.7080801@balister.org>
Date: Tue, 23 Aug 2011 10:11:40 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110621 Fedora/3.1.11-1.fc14 Thunderbird/3.1.11
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1313792192.git.dvhart@linux.intel.com>	<0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
	<CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
In-Reply-To: <CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Tue, 23 Aug 2011 17:11:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2011 05:38 AM, Koen Kooi wrote:
>
> Op 20 aug. 2011, om 00:23 heeft Darren Hart het volgende geschreven:
>
>> Fixes [YOCTO #1203]
>>
>> Using the hard floating point abi is incompatible with some binary libaries and
>> 3D support for the Beagleboard. As we do not provide these in poky and
>> meta-yocto, we can take advantage of the hard floating point abi.
>
> What advantage are you talking about? So far everyone has been unable to provide real-world numbers[1] that show hardfp making a difference compared to a properly configured softfp. The numbers debian and meego are showing are comparing it against completely vfpless builds, which borders on fraud.
>
> Yocto is of course free to do what it pleases, but switching to hardfp isn't going to make beagle support better, only worse. But if that's your goal, go for it, meta-ti is still there to provide the absolute best beagle support.
>
> [1] povray is the only outlier, but I don't think people will build beagle based renderfarms in the near future.

The big win for hard float ABI (emphasis mine) is functions that return 
floating point values. I personally care about this, but we also know 
returning floats is "bad" so we sort of avoid it.

I agree with Phil Blundell that this is not a beagle specific thing.

Long term I expect hard float to become normal, but I see no need to 
rush there (no matter what other distros are claiming).

Philip

