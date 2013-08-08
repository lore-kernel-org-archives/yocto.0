Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E10E003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 15:14:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1A96DF81213; Thu,  8 Aug 2013 16:14:25 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id EBBD2F8120E;
	Thu,  8 Aug 2013 16:14:24 -0600 (MDT)
Message-ID: <52041846.8010201@mlbassoc.com>
Date: Thu, 08 Aug 2013 16:14:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
	<5203D594.8090400@reliableembeddedsystems.com>
	<5203DAD9.9080101@mlbassoc.com>
	<52040611.8020106@reliableembeddedsystems.com>
In-Reply-To: <52040611.8020106@reliableembeddedsystems.com>
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Thu, 08 Aug 2013 22:14:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-08 14:56, Robert Berger wrote:
> Hi,
>
> On 08/08/2013 08:52 PM, Gary Thomas wrote:
>>
>> I'm trying this now with my Ubuntu 12.04 laptop and the same NFS server.
>> Looks like it's working just fine, it's already made it through the first
>> phase of a fresh build (building all the necessary 'native' tools), so I
>> think it will work as expected (it's way past where you had problems).
>> I'll let it complete and report back if there were any problems.
>>
>> n.b. building this way is glacially slow :-(
>>
>
> So let's assume it's the nfs server. Can you please tell me what's the
> file system on your nfs server and how you export it?
>
> A possible problem is, that with nfs symbolic links are not followed by
> default.
>
> My problem might be that I use a FreeBSD based nfs server.
>
> Maybe with something like ext3, ext4 it might work.

My NFS server is on a Fedora 16 system.  The exported disk is EXT3 file
system, using these exports:
   /shared *(sync,insecure,rw,no_root_squash)

>
> Also do you use dylan-9.0.1 or something more recent?

I always work from master, but I've been doing this (and running similar
scenarios) since at least "pinky"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

