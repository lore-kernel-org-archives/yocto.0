Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF6B8E00B8B
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 07:41:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D9967F811E5; Tue, 15 Apr 2014 08:41:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F07D7F811E4;
	Tue, 15 Apr 2014 08:41:22 -0600 (MDT)
Message-ID: <534D4519.9080600@mlbassoc.com>
Date: Tue, 15 Apr 2014 08:41:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <534C0415.20701@mlbassoc.com>
	<20140414160038.GB3370@denix.org>	<534C0719.5050908@mlbassoc.com>
	<20140414160838.GC3370@denix.org>	<534C40D9.40509@mlbassoc.com>
	<20140414224409.GF3370@denix.org>	<1397521203.15843.62.camel@ted>
	<20140415013846.GG3370@denix.org>	<1397537044.15843.66.camel@ted>
	<20140415050728.GA11339@denix.org>	<20140415051726.GB11339@denix.org>
	<1397552645.2977.0.camel@firebird.rb.intel.com>
In-Reply-To: <1397552645.2977.0.camel@firebird.rb.intel.com>
X-Enigmail-Version: 1.5.2
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Tue, 15 Apr 2014 14:41:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-04-15 03:03, Stanacar, StefanX wrote:
> 
> 
> 
> On Tue, 2014-04-15 at 01:17 -0400, Denys Dmytriyenko wrote:
>> On Tue, Apr 15, 2014 at 01:07:28AM -0400, Denys Dmytriyenko wrote:
>>> On Tue, Apr 15, 2014 at 05:44:04AM +0100, Richard Purdie wrote:
>>>> On Mon, 2014-04-14 at 21:38 -0400, Denys Dmytriyenko wrote:
>>>>> On Tue, Apr 15, 2014 at 01:20:03AM +0100, Richard Purdie wrote:
>>>>>> On Mon, 2014-04-14 at 18:44 -0400, Denys Dmytriyenko wrote:
>>>>>>> On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas wrote:
>>>>>>>> Very interesting results!  These are the results from the build hosts I have:
>>>>>>>>   Fedora 13 (i686) - fails
>>>>>>>>   Fedora 17 (i686) - fails
>>>>>>>>   Ubuntu 12.04 (x86_64) - boots
>>>>>>>
>>>>>>> Interesting indeed. I have no idea what's so special about Fedora host - this 
>>>>>>> is the first time I hear about issues with it. I may try experimenting with 
>>>>>>> different VMs once I have more time...
>>>>>>
>>>>>> I've been having a look at this. The biggest differences I can find
>>>>>> between working and non working builds is the path length to the build
>>>>>> directory for the kernel. This is from comparing vmlinux files from
>>>>>> working and non working builds.
>>>>>>
>>>>>> Works:
>>>>>> /home/paul/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
>>>>>>
>>>>>> Doesn't Work:
>>>>>> /media/data1/build1/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
>>>>>>
>>>>>> I also have been wondering if the version strings may be making a
>>>>>> difference.
>>>>>>
>>>>>> http://dan.rpsys.net/uImage-rp2 is a uImage from a broken build where I
>>>>>> truncated the path length to a "working" build path length and patched
>>>>>> in the same version strings:
>>>>>>
>>>>>> const char linux_banner[] = 
>>>>>>        "Linux version 3.14.0-yocto-standard (paul@ubuntu-build01) (gcc
>>>>>> version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST 2014\n";
>>>>>>
>>>>>> const char linux_proc_banner[] = "%s version %s (paul@ubuntu-build01)
>>>>>> (gcc version 4.8.2 (GCC) ) %s\n";
>>>>>>
>>>>>> to init/version.c.
>>>>>>
>>>>>> I don't have hardware and would be interested to know if the kernel
>>>>>> linked to above works or not. If it doesn't, it rules out these path and
>>>>>> string lengths, if it does work, it points to a problem there.
>>>>>
>>>>> Richard,
>>>>>
>>>>> Good catch! It boots:
>>>>
>>>> Thanks Denys, this helps narrow down the issue. I've shared
>>>> http://dan.rpsys.net/uImage-rp3 which is the same as the last one but
>>>> with my changes to version.c reverted. The one should tell us if its the
>>>> paths or the strings.
>>>
>>> This one also boots for me:
>>>
>>> Linux version 3.14.0-yocto-standard (richard@ted) (gcc version 4.8.2 (GCC) ) #2 PREEMPT Tue Apr 15 05:40:19 IST 2014
>>>
>>>
>>>> I'm guessing the path problem is more likely but anything is possible.
>>>> This is starting to look like some kind of compiler or linker issue. If
>>>> it is that, it would help to have more data points about what works and
>>>> what doesn't. With that in mind could people who have good or bad builds
>>>> please share the paths they built the kernels in so we can see if we can
>>>> spot some kind of pattern.
>>
>> BTW, my path is /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi and it 
>> works.
>>
> 
> I can confirm:
>  build dir in /home/stefans/b1  works,
> but /home/stefans/yocto/poky/build doesn't.

My paths:
  /local/bbb_yocto_2014-04-14 - works
  /home/local/bbb_yocto_2014-04-14 - fails
  /raid/work/tmp/bbb_yocto_2014-04-14 - fails
  /tmp/bbb_yocto_2014-04-15 - works
  /tmp/work/bbb_yocto_2014-04-15 - fails
  /tmp/w2/bbb_yocto_2014-04-15 - fails
  /tmp/w/bbb_yocto_2014-04-15 - works
Note: the last 5 were all built on the same host

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

