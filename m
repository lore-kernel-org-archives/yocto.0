Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB6D6E01402
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 06:12:46 -0700 (PDT)
Received: by dadz8 with SMTP id z8so4180404dad.35
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 06:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=wcHnNQi0qIFiX9X1mv/O1EWyDvbf/tF5wuKSy1N7MR8=;
	b=XFgmJG1AvqLI759VEU8vw1+wAj5SL87mYLPEFkxyjT6U7ikuugLtnlAL7eT76OVuTY
	dwCy77bBe4pKNSMnlVTZ/T1iOU1QQ/pYsXJbvoJAD6jmnLq5cuvo6eLLmK97QulTVjIL
	RzYTMAae/l2jzSYNBa++Q1fiMistsM+9fu8tpDfKtMl9AND4SWhzrK5O7h1wC2CzPaFN
	erKZ7MoRW/eR8wXVzpsLmsaqhQzFwS7k8e87mvvlx9AvcY8yFCS6RYYRy3qbfWpoqqpa
	XjTOdgseCN9mYzgh9H07GXjDuT3c9u/5B18Ca95A+bzgOD/ABwQ0QQvVGiQBE3hYdIW2
	zJHQ==
MIME-Version: 1.0
Received: by 10.68.136.69 with SMTP id py5mr31346842pbb.115.1336741966612;
	Fri, 11 May 2012 06:12:46 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Fri, 11 May 2012 06:12:46 -0700 (PDT)
In-Reply-To: <4FAD0E47.3050604@windriver.com>
References: <CACW_hTYnH_ccSf7844bwwKeKH+otHopbbz7h2igrCMhUddN1tQ@mail.gmail.com>
	<4FAD0855.4080209@windriver.com>
	<CACW_hTarP91KOUOYRHTgPJhF5Q8jYgY4XY8xZCrUEciwNCniMQ@mail.gmail.com>
	<4FAD0E47.3050604@windriver.com>
Date: Fri, 11 May 2012 15:12:46 +0200
Message-ID: <CACW_hTbbp=Oo=iLwiTAH9eda=aJ_Rts1-YDRRtTeONa3qeB73Q@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Fri, 11 May 2012 13:12:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/11 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 12-05-11 08:51 AM, Frans Meulenbroeks wrote:
>>
>> 2012/5/11 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>
>>> On 12-05-11 03:07 AM, Frans Meulenbroeks wrote:
>>>>
>>>>
>>>> Hi,
>>>>
>>>> I'm wondering how to do a kernel rebuild after doing changing the
>>>> .config
>>>> using
>>>> bitbake -c menuconfig virtual/kernel
>>>> I've tried forcing a recompile using:
>>>> bitbake -ccompile -f virtual/kernel
>>>> that indeed rebuilds the kernel
>>>> However if I then do a bitbake virtual/kernel this does not result in
>>>> an image in my deploy dir.
>>>>
>>>> system info
>>>> host: ubuntu 12.04
>>>> denzil 7.0 software (from tarball)
>>>> target: ppc (actually for my own board but I did not do weird things
>>>> in my bsp, like adding extra tasks.
>>>>
>>>> It seems the vmlinux.bin.gz is still generated but the uImage is not
>>>> (which can also be seen from the log below where do_install is not
>>>> ran.
>>>> Additional proof:
>>>> f5ad9f2b30047a8d3493a1a2880a-r1.40$ ls -l ./image/kernel/uImage
>>>> ./linux-syrcxx-standard-build/vmlinux.bin.gz
>>>> -rw-r--r-- 1 frans frans 1609509 2012-05-10 10:19 ./image/kernel/uImag=
e
>>>> -rwxr-xr-x 1 frans frans 1611499 2012-05-11 08:52
>>>> ./linux-syrcxx-standard-build/vmlinux.bin.gz
>>>> This si from after I ran the bitbake commands below.
>>>>
>>>> What is going wrong here?
>>>
>>>
>>>
>>> You are likely hitting this bug:
>>>
>>> =A0https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2256
>>>
>>> It's a known issue that is being worked on for 1.3, but the bugzilla ha=
s
>>> workarounds that youl can use in the meantime.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>> Bruce,
>>
>> Thanks for the reference.
>> I am indeed seeing that bug.
>>
>> What I did was the solution of Darren that was listed in comment5, but
>> that did not work for me.
>> I was unaware of the cleansstate task.
>>
>> Actually thinking of it, if in the flow:
>> $ bitbake virtual/kernel -c cleansstate
>> $ bitbake virtual/kernel -c menuconfig
>> $ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel
>> the first two steps can be exchanged (so first menuconfig then
>> cleansstate, then menuconfig could force the cleansstate to run
>>
>> (or menuconfig could run cleanstate befure doing the actual menuconfig
>> work)
>
>
> Hopefully we'll end up with a flag that can just indicate that sstate
> shouldn't be used for a particular package after a certain trigger has
> been hit .. or something like that :)
>
> But indeed, we could automatically trigger some sstate cleaning as well
> as an option.
>
> Glad to hear that you are around the issue now,
>
> Bruce

Well the problem is not as well solved as I'd hoped for as cleansstate
does imply a -clean and so blows away any other change

I've added this to bug 2256:

Unfortunately this does not only apply to menuconfig.

The following scenario also does not work
bitbake virtual/kernel
modify a kernel source file
bitbake -ccompile -f virtual/kernel
bitbake virtual/kernel
The latter does not run do_install

This is on ppc

I tried the cleansstate solution, as suggested by Darren in comment 7
but unfortunately cleansstate implies clean so it removes the whole
tree (including the modified file).

Best regards, Frans
(ps: for me it is nice to have do_install being run as I combine
device tree and kernel image into a single file using mkimage in
do_install_append.; will try next time to do a -c compile -f followed
by a -c install f)

