Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFECEE00746
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 12:26:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4BJQqf1003841
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 May 2012 12:26:52 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 11 May 2012 12:26:52 -0700
Message-ID: <4FAD67FA.9090401@windriver.com>
Date: Fri, 11 May 2012 15:26:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTYnH_ccSf7844bwwKeKH+otHopbbz7h2igrCMhUddN1tQ@mail.gmail.com>
	<4FAD0855.4080209@windriver.com>
	<CACW_hTarP91KOUOYRHTgPJhF5Q8jYgY4XY8xZCrUEciwNCniMQ@mail.gmail.com>
	<4FAD0E47.3050604@windriver.com>
	<CACW_hTbbp=Oo=iLwiTAH9eda=aJ_Rts1-YDRRtTeONa3qeB73Q@mail.gmail.com>
In-Reply-To: <CACW_hTbbp=Oo=iLwiTAH9eda=aJ_Rts1-YDRRtTeONa3qeB73Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel rebuild and bitbake -c menuconfig
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
X-List-Received-Date: Fri, 11 May 2012 19:26:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-11 09:12 AM, Frans Meulenbroeks wrote:
> 2012/5/11 Bruce Ashfield<bruce.ashfield@windriver.com>:
>> On 12-05-11 08:51 AM, Frans Meulenbroeks wrote:
>>>
>>> 2012/5/11 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>>
>>>> On 12-05-11 03:07 AM, Frans Meulenbroeks wrote:
>>>>>
>>>>>
>>>>> Hi,
>>>>>
>>>>> I'm wondering how to do a kernel rebuild after doing changing the
>>>>> .config
>>>>> using
>>>>> bitbake -c menuconfig virtual/kernel
>>>>> I've tried forcing a recompile using:
>>>>> bitbake -ccompile -f virtual/kernel
>>>>> that indeed rebuilds the kernel
>>>>> However if I then do a bitbake virtual/kernel this does not result in
>>>>> an image in my deploy dir.
>>>>>
>>>>> system info
>>>>> host: ubuntu 12.04
>>>>> denzil 7.0 software (from tarball)
>>>>> target: ppc (actually for my own board but I did not do weird things
>>>>> in my bsp, like adding extra tasks.
>>>>>
>>>>> It seems the vmlinux.bin.gz is still generated but the uImage is not
>>>>> (which can also be seen from the log below where do_install is not
>>>>> ran.
>>>>> Additional proof:
>>>>> f5ad9f2b30047a8d3493a1a2880a-r1.40$ ls -l ./image/kernel/uImage
>>>>> ./linux-syrcxx-standard-build/vmlinux.bin.gz
>>>>> -rw-r--r-- 1 frans frans 1609509 2012-05-10 10:19 ./image/kernel/uImage
>>>>> -rwxr-xr-x 1 frans frans 1611499 2012-05-11 08:52
>>>>> ./linux-syrcxx-standard-build/vmlinux.bin.gz
>>>>> This si from after I ran the bitbake commands below.
>>>>>
>>>>> What is going wrong here?
>>>>
>>>>
>>>>
>>>> You are likely hitting this bug:
>>>>
>>>>   https://bugzilla.yoctoproject.org/show_bug.cgi?id=2256
>>>>
>>>> It's a known issue that is being worked on for 1.3, but the bugzilla has
>>>> workarounds that youl can use in the meantime.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>> Bruce,
>>>
>>> Thanks for the reference.
>>> I am indeed seeing that bug.
>>>
>>> What I did was the solution of Darren that was listed in comment5, but
>>> that did not work for me.
>>> I was unaware of the cleansstate task.
>>>
>>> Actually thinking of it, if in the flow:
>>> $ bitbake virtual/kernel -c cleansstate
>>> $ bitbake virtual/kernel -c menuconfig
>>> $ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel
>>> the first two steps can be exchanged (so first menuconfig then
>>> cleansstate, then menuconfig could force the cleansstate to run
>>>
>>> (or menuconfig could run cleanstate befure doing the actual menuconfig
>>> work)
>>
>>
>> Hopefully we'll end up with a flag that can just indicate that sstate
>> shouldn't be used for a particular package after a certain trigger has
>> been hit .. or something like that :)
>>
>> But indeed, we could automatically trigger some sstate cleaning as well
>> as an option.
>>
>> Glad to hear that you are around the issue now,
>>
>> Bruce
>
> Well the problem is not as well solved as I'd hoped for as cleansstate
> does imply a -clean and so blows away any other change
>
> I've added this to bug 2256:

Good (sort of) .. the bug is definitely the right place to log this.

>
> Unfortunately this does not only apply to menuconfig.
>
> The following scenario also does not work
> bitbake virtual/kernel
> modify a kernel source file
> bitbake -ccompile -f virtual/kernel
> bitbake virtual/kernel
> The latter does not run do_install
>
> This is on ppc
>
> I tried the cleansstate solution, as suggested by Darren in comment 7
> but unfortunately cleansstate implies clean so it removes the whole
> tree (including the modified file).
>
> Best regards, Frans
> (ps: for me it is nice to have do_install being run as I combine
> device tree and kernel image into a single file using mkimage in
> do_install_append.; will try next time to do a -c compile -f followed
> by a -c install f)

So the work around is slightly more complicated for now, with the extra
forced install.

Definitely something we'll fix up during the worklow streamlining being
done as part of 1.3.

Bruce


