Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55B5DE006EC; Wed,  7 May 2014 03:46:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA84E003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 03:45:58 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 13DB2F81213; Wed,  7 May 2014 04:45:57 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DB981F81212;
	Wed,  7 May 2014 04:45:55 -0600 (MDT)
Message-ID: <536A0EFE.70305@mlbassoc.com>
Date: Wed, 07 May 2014 04:46:22 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <536962D8.1040007@rafresearch.com> <53696616.90502@mlbassoc.com>
	<53699F12.5010400@rafresearch.com>
In-Reply-To: <53699F12.5010400@rafresearch.com>
Subject: Re: A simpler way of creating an using a local kernel repository - BeagleBone example
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
X-List-Received-Date: Wed, 07 May 2014 10:46:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-06 20:48, Bob Feretich wrote:
>
> On 5/6/2014 3:45 PM, Gary Thomas wrote:
>> On 2014-05-06 16:31, Bob Feretich wrote:
>>> I have had problems getting good download performance when accessing the kernels at kernel.org. Since I expect to build the kernel several times, I decided to create a copy of the
>>> kernel repository locally and use that for my builds.
>>>
>>> There are instructions on how to create a local repository in the Yocto manuals, but those are more complex than I needed. (I don't plan on checking anything into the repository.)
>>>
>>> The below is a simpler way of creating and using the repository.
>>> I'm publishing this because my search though the Yocto/OE/Angstrom yielded only the more complicated or incomplete methods.
>>>
>>> // First set up local kernel repository
>>> mkdir ~/ksrc3-8
>>> cd ~/ksrc3-8
>>> git clone --bare git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git stable-work-bare.git
>>>
>>> // Then modify the kernel recipe to use the local repository instead of the the one at kernel.org.
>>> // The beaglebone recipe for the 3.8 kernel is at...
>>> setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
>>>
>>> // Replace the file's SRC_URI with one that points to your local repository.
>>> #SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=linux-3.8.y"
>>> SRC_URI = "git:///home/Bob/ksrc3-8/stable-work-bare.git;branch=linux-3.8.y"
>>
>> IMO a much simpler (and certainly less invasive) way is to just
>> use your own local source mirrors.  Add these lines to your local.conf:
>>   SOURCE_MIRROR_URL = "file:///some-mirror-directory/"
>>   INHERIT += "own-mirrors "
>>   BB_GENERATE_MIRROR_TARBALLS ?= "1"
>>
>> Once the git repository has been downloaded, it will be packed up in a
>> tarball, e.g.
>> git2_git.kernel.org.pub.scm.linux.kernel.git.stable.linux-stable.git.tar.gz
>> If you then put this file into your SOURCE_MIRROR, the next time bitbake will
>> fetch from there [first].  It's even smart enough that if you need a revision
>> which is not in the tarball, it will update the git repository and rebuild the
>> tarball, which you can then move to your mirror.
> Better!
> Questions:
> Is     INHERIT += "own-mirrors "
> coded as you state it, or am I supposed to substitute something for "own-mirrors " ?

This line is used as written.

>
> Where does      BB_GENERATE_MIRROR_TARBALLS ?= "1"
> put the tarball?

In your downloads directory.

>
> Does do_rm_work remove them?

No (since that only touches files in tmp/work/...)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

