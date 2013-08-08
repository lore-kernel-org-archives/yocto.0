Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB71CE01480
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 10:52:22 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7F53DF811FE; Thu,  8 Aug 2013 11:52:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 97828F811E8;
	Thu,  8 Aug 2013 11:52:20 -0600 (MDT)
Message-ID: <5203DAD9.9080101@mlbassoc.com>
Date: Thu, 08 Aug 2013 11:52:25 -0600
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
In-Reply-To: <5203D594.8090400@reliableembeddedsystems.com>
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
X-List-Received-Date: Thu, 08 Aug 2013 17:52:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-08 11:29, Robert Berger wrote:
> Hi,
>
> On 08/08/2013 06:23 PM, Gary Thomas wrote:
>>>
>>> How you do this?
>>>
>>> Do you use some magic build setting for this or a symlink to the nfs?
>>
>>
>> I used the standard setup script, like this:
>>    % . /local/poky/oe-init-build-env /MY_NFS_VOLUME/build_dir
>>
>> This will create a build tree on MY_NFS_VOLUME named 'build_dir'.  Then
>> I adjusted /MY_NFS_VOLUME/build_dir/conf/local.conf as needed and ran
>> bitbake...
>>
>> Note: I NEVER build inside of my Poky/Yocto tree - always in a separate
>> build directory and quite often on a separate file system.
>>
>
> I just tried this and with Ubuntu 12.04.2 LTS it does __NOT__ work (as
> expected). I'm really surprised that you can have
> /MY_NFS_VOLUME/build_dir due to the fact that there are hard links
> required between the /MY_NFS_VOLUME/build_dir and where your host Linux
> rootfs resides.
>
> So either we have a different NFS setup or cp -al behaves differently.
>
> Do you happen to have an Ubuntu build machine to test? I'm currently on
> the road so it's a bit tricky for me to try with Fedora.

I'm trying this now with my Ubuntu 12.04 laptop and the same NFS server.
Looks like it's working just fine, it's already made it through the first
phase of a fresh build (building all the necessary 'native' tools), so I
think it will work as expected (it's way past where you had problems).
I'll let it complete and report back if there were any problems.

n.b. building this way is glacially slow :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

