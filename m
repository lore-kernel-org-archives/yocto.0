Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A511E0048B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 12:48:38 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:50884
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qrxio-0001fh-Ur
	for yocto@yoctoproject.org; Fri, 12 Aug 2011 20:48:47 +0100
Message-Id: <36642C12-5231-4EE6-A267-D469D3E5B98F@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E452396.1070506@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 12 Aug 2011 20:48:44 +0100
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>	<4E446C74.9070807@intel.com>
	<4E4473A4.4060403@windriver.com>
	<B44F0C76-F163-4264-B052-BA9E4CC4CDC3@keylevel.com>
	<4E452396.1070506@windriver.com>
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
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Fri, 12 Aug 2011 19:48:38 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 12 Aug 2011, at 13:59, Bruce Ashfield wrote:

>> NOTE: Unpacking
>> /home/chris/yocto/yocto-downloads/git_git.pokylinux.org.linux-2.6- 
>> windriver.git.tar.gz
>> to
>> /home/chris/yocto/sjs-build/tmp/work/LX800-poky-linux/linux- 
>> wrs 
>> -2.6.34 
>> + 
>> git0 
>> + 
>> b67e060194a38c6331da1532bd06446087a42b3b_0 
>> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
>>
>> NOTE: Unpacking
>> /home/chris/yocto/meta-keylevel-sjs/recipes/linux/linux-wrs/ 
>> defconfig to
>> /home/chris/yocto/sjs-build/tmp/work/LX800-poky-linux/linux- 
>> wrs 
>> -2.6.34 
>> + 
>> git0 
>> + 
>> b67e060194a38c6331da1532bd06446087a42b3b_0 
>> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
>>
>
> That does look right!

What are the rules for naming layers?

I renamed the root for my new layer from 'meta-ebox-3300' to 'meta- 
ebox3300', updated this in bblayers.conf and now my defconf file is  
found as I was expecting...

It seems as if having -<numeric> at the end stops things working.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




