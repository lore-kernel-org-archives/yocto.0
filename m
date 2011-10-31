Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A853E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 14:24:13 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:30622
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RKzKz-0001Uy-5Y
	for yocto@yoctoproject.org; Mon, 31 Oct 2011 21:24:09 +0000
Message-Id: <E94B5475-8068-4190-9FB4-6C3ED607AEFD@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <201110311016.00534.paul.eggleton@linux.intel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Mon, 31 Oct 2011 21:24:06 +0000
References: <6722EDB4-6AD2-4E51-A826-B00D3AABC6A0@keylevel.com>
	<201110311016.00534.paul.eggleton@linux.intel.com>
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
Subject: Re: Which filesystem for target?
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
X-List-Received-Date: Mon, 31 Oct 2011 21:24:14 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 31 Oct 2011, at 10:16, Paul Eggleton wrote:

> On Friday 28 October 2011 23:11:22 Chris Tapp wrote:
>> Which is the 'best' filesystem to use for an embedded device that's
>> using a CF card?
>>
>> ...
>
> Arnd Bergmann gave a talk at ELCE on flash drive performance  
> (something he has
> done quite a lot of research on); I did not attend but Darren and I  
> spoke to
> him later on, and if I recall correctly in his tests btrfs performed  
> the best.
> Hopefully the talk video will be available soon thanks to the folks  
> at Free
> Electrons; in the mean time there's an earlier article by Arnd on  
> this topic
> here:
>
> http://lwn.net/Articles/428584/

Thanks, that's a very good article that may explain some issues I've  
been seeing.

Chris


