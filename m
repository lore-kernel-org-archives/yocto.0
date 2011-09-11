Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B4DE01209
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2011 19:20:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8B2K1QH000980
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 10 Sep 2011 19:20:01 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.64) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 10 Sep 2011 19:20:01 -0700
Message-ID: <4E6C1ACF.1020501@windriver.com>
Date: Sat, 10 Sep 2011 22:19:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.21) Gecko/20110830 Thunderbird/3.1.13
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>	<4E6B6284.2020701@mlbassoc.com>
	<4E6B806E.3020202@mlbassoc.com> <1315672125.1986.30.camel@ted>
In-Reply-To: <1315672125.1986.30.camel@ted>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
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
X-List-Received-Date: Sun, 11 Sep 2011 02:20:08 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11-09-10 12:28 PM, Richard Purdie wrote:
> On Sat, 2011-09-10 at 09:21 -0600, Gary Thomas wrote:
>> On 2011-09-10 07:13, Gary Thomas wrote:
>>> On 2011-09-09 17:09, Zhang, Jessica wrote:
>>>> Hi,
>>>>
>>>> Has anybody ran into kernel panic when boot up core-image-sato-sdk for qemux86. I’ve been having this issue with several clean build for two days. And my latest build tree is a
>>>> freshly cloned tree against poky-master with commit:
>>>>
>>>> commit 20dbf0024385eaef61a04d8773fd7640e3c8cc6d
>>>>
>>>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>>>
>>>> Date: Fri Sep 9 19:07:40 2011 +0100
>>>>
>>>> The qemu kernel panic messages are:
>>>>
>>>> INIT: version 2.88 booting
>>>>
>>>> Init[1]: segfault at 38 ip 495076c7 sp bfd9b60c error 4 in libc-2.13.so[49492000+15f000]
>>>>
>>>> Init[1]: segfault at 16 ip 0804b3c7 sp bfd9b280 error 4 in init.sysvinit[8048000+7000]
>>>>
>>>> Kernel panic – not syncing: Attempted to kill init!
>>>>
>>>> Pid: 1, comm: init Not tainted 3.0.4-yocto-standard+ #1
>>>
>>> Verified - fails for me here as well. A Bruce said, a build from just a few days
>>> ago did work. Note: I only tried core-image-sato
>>>
>>> As far as I can tell, the only packages that were rebuilt since my last go on
>>> Aug 31 were virtual/kernel&  perf
>>>
>>> Looks like it's something to do with kernel changes.
>>>
>>
>> Actually, I forgot that qemux86 also uses i586 packages, so there were quite a
>> few other packages changed since Aug 31.  You can see the lists at
>>     http://www.mlbassoc.com/poky/qemux86-rpms
>>
>
> I've just tested qemux86 and qemuarm images and both of these were fine
> (apart from pango issues which I locally reverted the change in question
> for). I'm a little puzzled why things are therefore failing for people
> but I would like to get to the bottom of it...

As would I! I just audited the kernel changes, and there's nothing that
should cause anything so severe. My build and boot of course worked as
well.

The grand total of changes since the 3.0.4 update are:

   3c9ebee meta: re-enable utrace feature for linux-yocto
   82140b9 meta: re-enable systemtap feature for linux-yocto
   258af0b meta: update kver to v3.0.4

And both of those were merged and boot tested a while ago.

And the reports of different results from the autobuilder to local machines.
Really makes me wonder about what's really being built and if
something strange is being fetched.

Jessica/Gary: if you explicitly disable utrace, I wonder if that
makes a difference, since it's the only change that should even
have a chance to cause runtime issues. (to disable it, just toss
a config frag with "# CONFIG_UTRACE is not set" and build, or just
confirm that it is off via menuconfig).

Cheers,

Bruce


>
> Cheers,
>
> Richard
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


