Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD54CE01271
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 05:10:22 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:61263
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1QzoSg-0003zr-9K; Sat, 03 Sep 2011 12:32:34 +0100
Message-Id: <41FBF1EF-619F-46D8-846F-58AF0A4123F9@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
In-Reply-To: <CAEsOVNd2i3Mn4zPdW5c1jRjKVwURUv9fYD3c_ghy+9gqsNgnsQ@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sat, 3 Sep 2011 12:32:31 +0100
References: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
	<CAEsOVNd2i3Mn4zPdW5c1jRjKVwURUv9fYD3c_ghy+9gqsNgnsQ@mail.gmail.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: Splitting processor and target in BSPs
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
X-List-Received-Date: Sat, 03 Sep 2011 12:10:23 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 2 Sep 2011, at 16:49, McClintock Matthew-B29882 wrote:

> On Fri, Sep 2, 2011 at 2:26 AM, Chris Tapp <opensource@keylevel.com>  
> wrote:
>> However, kernel configuration becomes a little bit more complicated  
>> as this
>> is done by machine name. A kernel recipe will be needed for each  
>> machine
>> (e.g. for the different sound drivers), but I can't work out how to  
>> do this
>> using a base configuration for the SoCs that are shared and then  
>> adding
>> machine specific parts. I can do it using (for example)  
>> a .defconfig for
>> each machine, but that would require updates to multiple files to  
>> change the
>> SoC configuration.
>>
>> I guess what I'm really asking is, is it possible to have a base CPU
>> configuration and add a machine configuration to this ?
>>
>> I've recently seen discussion of .cfg kernel fragment files. Are  
>> these what
>> I should be looking at? Are these available in the releases or only  
>> in the
>> development branch?
>
> I think this is a good solution for you. It's a little confusing to
> find were this work is but you can look in the linux-yocto kernel tree
> - then the actual cfg fragment stuff on different branches.
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/
>
> meta branch contains meta/ which contains a lot of the cfg fragments,
> and patches, etc.

Thanks, I can see what they look like now ;-)

What are 'the rules' for cfg files? I.e.:

1) Does adding #CONFIG_this_bit not set
disable a node and its dependencies? For example, if I turn off usb  
serial support do the usb serial drivers get disabled as well or do I  
have to do this manually?

2) Similarly, if a node is enabled what happens to the dependent  
nodes? Do they all need to be covered, or only the ones that need to  
be enabled?

I've also noticed that there are scc files. These seem to pull  
features in to sets? How do these work?

meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg contains

CONFIG_ATH5K
CONFIG_ATH_COMMON
...
CONFIG_SERIAL_8250_CONSOLE

It seems as if this file does something else, as these don't look like  
valid kernel configuration options.

> There is also a document in the git repo as well which is worth a  
> look.

I couldn't see one, but there's a lot in there ;-)

Sorry for all the questions, but there's a lot to understand for  
someone new :-)


Chris Tapp

opensource@keylevel.com
www.keylevel.com




