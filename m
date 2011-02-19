Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52ED64C8007E
	for <yocto@yoctoproject.org>; Sat, 19 Feb 2011 15:39:41 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:55068
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1PquWh-0005hm-PK; Sat, 19 Feb 2011 21:39:39 +0000
Message-Id: <9225E28B-8D75-4A25-8BF4-E4328CF4C964@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D5FECDA.5020403@mlbassoc.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sat, 19 Feb 2011 21:39:37 +0000
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
	<4D5FECDA.5020403@mlbassoc.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sat, 19 Feb 2011 21:39:41 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 19 Feb 2011, at 16:16, Gary Thomas wrote:

> On 02/19/2011 07:58 AM, Chris Tapp wrote:
>> I want to make some changes to /etc/interfaces.
>>
>> It looks to me as if this this comes from 'netbase', but what do I  
>> need to rebuild to get my changes in to the rootfs? i.e. is there  
>> something I can
>>
>> bitbake -c clean ???; bitbake ???
>>
>> to get my changes in to the rootfs image?
>>
>> I tried cleaning 'netbase', but that made no difference when I then  
>> 'bitbake poky-image-minimal'.
>
> Did you clean the shared state (sstate-cache) info that I told you  
> about yesterday?

I have now, and it may have made a difference. I say 'may' because the  
build failed else where in a way I couldn't fix without deleting tmp/  
and rebuilding. I'll try again later ;-)

It seems as if this sstate-cache trick is worth using by default.

I'm having a problem with libSDL linking against libdirectfb-1.2, not  
the 1.4 that's in the build. I had previously done a 'cleanall'  
rebuild of libSDL to see if anything showed up, but there was nothing  
to see.

However, doing the same and deleting the sstate-cache items as well  
means that I can now see warnings to say that it uses /usr/include  
and /usr/lib (which is where it gets the 1.2 from).

Is this behaviour 'by design' (i.e. something that should always be  
done), or is it an issue with bitbake? I can't see anything in the  
Yocto bugzilla if it is.

Chris


