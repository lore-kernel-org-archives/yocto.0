Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAB6BE00BE3; Thu,  5 Jun 2014 07:41:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26BEEE00A44
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 07:41:52 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 328D8F811EA; Thu,  5 Jun 2014 08:41:52 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 18DDCF811DF;
	Thu,  5 Jun 2014 08:41:51 -0600 (MDT)
Message-ID: <539081B5.6020905@mlbassoc.com>
Date: Thu, 05 Jun 2014 08:41:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <53906B96.300@mlbassoc.com>
	<4993560.6EjrQmr5SY@peggleto-mobl5.ger.corp.intel.com>
	<1461672.ni0uDSAuWr@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1461672.ni0uDSAuWr@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: Live images?
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
X-List-Received-Date: Thu, 05 Jun 2014 14:41:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-06-05 08:32, Paul Eggleton wrote:
> On Thursday 05 June 2014 15:26:28 Paul Eggleton wrote:
>> Hi Gary,
>>
>> On Thursday 05 June 2014 07:07:34 Gary Thomas wrote:
>>> Looking through the Poky/Yocto sources, there seems to be
>>> some support for Live CD/USB images.  However, I can't find
>>> any examples nor documentation for how to use this.
>>>
>>> Can anyone provide some pointers?
>>
>> You're right, we seem to be missing that in our documentation; I'm not sure
>> where the best place to document it would be though.
>>
>> FYI, you should just need to ensure "live" is in IMAGE_FSTYPES; then you
>> should get a .directdisk image that you can just dd to a USB stick.
>
> Of course I meant to say .hddimg, not .directdisk.

Thanks, I'll give that a try.

What if I needed to boot from an actual CD?  I have an old
box here I'd like to try, but it doesn't boot from USB.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

