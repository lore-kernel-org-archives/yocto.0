Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 768C0E01208
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2011 09:33:33 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0839D1660AFA; Sat, 10 Sep 2011 10:33:33 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F21F81660AE5;
	Sat, 10 Sep 2011 10:32:51 -0600 (MDT)
Message-ID: <4E6B9133.6010202@mlbassoc.com>
Date: Sat, 10 Sep 2011 10:32:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6B6284.2020701@mlbassoc.com> <4E6B806E.3020202@mlbassoc.com>
	<1315672125.1986.30.camel@ted>
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
X-List-Received-Date: Sat, 10 Sep 2011 16:33:33 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2011-09-10 10:28, Richard Purdie wrote:
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

To be clear, I updated master to 98c2da694ca4c72b3e222a593b8baddea102bde5 and rebuilt
my image (yesterday).  This image now crashes as reported.

What can I look at to help?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

