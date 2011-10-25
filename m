Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B1E7E00559
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 05:32:42 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:59082
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RIgBL-0007QI-IA
	for yocto@yoctoproject.org; Tue, 25 Oct 2011 13:32:39 +0100
Message-Id: <CFF0349A-EB9D-4382-ACD1-0FF36AE55DED@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4EA67729.3090109@mlbassoc.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Tue, 25 Oct 2011 13:32:36 +0100
References: <0E674E98-F46F-467D-B7F2-8066AA03A454@keylevel.com>
	<4EA67729.3090109@mlbassoc.com>
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
Subject: Re: How do I tell when a USB disk is ready?
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
X-List-Received-Date: Tue, 25 Oct 2011 12:32:43 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 25 Oct 2011, at 09:45, Gary Thomas wrote:

> On 2011-10-24 18:10, Chris Tapp wrote:
>> I've got a minimal root file system that will be used to install a  
>> poky image from a USB stick.
>>
>> The init script this uses mounts sda1 (from where it's just  
>> booted), but sda1 isn't ready when it tries to do this - I can see  
>> the bus enumeration messages on the console after the
>> mount fails.
>>
>> How can my script test to see when the device is ready?
>
> You could try looking for /dev/sda1 in /proc/partitions like in
> attached script.

Thanks Gary, that's just what's needed :-)

Chris


