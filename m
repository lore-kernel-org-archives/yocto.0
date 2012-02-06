Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F33D5E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 14:10:14 -0800 (PST)
Received: by pbcc11 with SMTP id c11so6795233pbc.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 14:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=U21cbiNSpV0ghjY/acbQ67I7b4FbVFiiV0xObtZG1t4=;
	b=MMlIgquQyqqFQ00TRzCjzwgxzj+/oDekQ1eojFoA6CbLtgtPxkSAJqEw6Fc5ZqvAl3
	qAMobUy6jFy5izO/3ef4hCF8hYuLjZfkkE5on5WAYhOVp+FlpVMaA5zuuZm8IlO2RYxx
	AdJXqRRHrG4znjwC+tVzEGcSkdrCy2geLtmDA=
MIME-Version: 1.0
Received: by 10.68.232.202 with SMTP id tq10mr51427688pbc.68.1328566214811;
	Mon, 06 Feb 2012 14:10:14 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Mon, 6 Feb 2012 14:10:14 -0800 (PST)
In-Reply-To: <4F304D1C.6090802@windriver.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
	<CADzUK1+sAGYAPY=Pm6xsEFnqpj4T+8R6kDmrSrySiSgS00v-EQ@mail.gmail.com>
	<CADkTA4NuLPg3+vA-6QkxkVqkthc_bXcN1Cye5Yzhz65tOmUzHw@mail.gmail.com>
	<CADzUK1LO0gUd36X-N1hXQ49Bx7Lu+xW5u8VQT-waAtn1jM=6CQ@mail.gmail.com>
	<4F303708.1080501@windriver.com>
	<CADzUK1JdxZKK9XW86Lq_4K3p8ya+_jf07NK7VwDp2uMWh_6=hg@mail.gmail.com>
	<4F304D1C.6090802@windriver.com>
Date: Mon, 6 Feb 2012 17:10:14 -0500
Message-ID: <CADzUK1Lv4Ke9GN=R5Tjm0SVQcxpiHg3-ZwKDpNXYtFEcdH5mPQ@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Mon, 06 Feb 2012 22:10:15 -0000
X-Groupsio-MsgNum: 4711
Content-Type: multipart/mixed; boundary=047d7b33d6e84b60bd04b852edb2

--047d7b33d6e84b60bd04b852edb2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

\>>>>>>>>> I could not find a way to patch the kernel source before its is
>>>>>>>>> built.
>>>>>>>>>
>>>>>>>>> I promise to update the Yocto wiki's How do I section when I have=
 a
>>>>>>>>> working solution for the following :-)
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> This should be covered in the existing documentation and also the
>>>>>>>> more general bitbake/oe-core docs.
>>>>>>>>
>>>>>>>>>
>>>>>>>>> Here is what I am trying to do:
>>>>>>>>>
>>>>>>>>> 1) Patch the kernel (add VID/PID to hid_ignore_list in
>>>>>>>>> drivers/hid/hid-core.c and also to add the VID/PID to .h file)
>>>>>>>>> 2) Build the kernel - no change here - standard kernel build
>>>>>>>>> 3) Build a kernel module
>>>>>>>>>
>>>>>>>>> I have a meta layer where I am keeping my changes. I am guessing
>>>>>>>>> that
>>>>>>>>> I need to:
>>>>>>>>>
>>>>>>>>> a) write a bbappend file to accomplish #1
>>>>>>>>> b) write a recipe to accomplish #3
>>>>>>>>>
>>>>>>>>> I have written recipes before, but just for libraries and autotoo=
ls
>>>>>>>>> based applications. Not for a kernel module. If there is a recipe
>>>>>>>>> out
>>>>>>>>> there for some other module, I would be happy to steal from it.
>>>>>>>>>
>>>>>>>>> Please advise how I can go about patching the kernel and if there
>>>>>>>>> is
>>>>>>>>> a
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> It's just like any other package. If your changes are simple, then
>>>>>>>> generating patches and putting them on the SRC_URI via a bbappend =
in
>>>>>>>> your layer is all you need. If you have complex changes, there are
>>>>>>>> options
>>>>>>>> to manage them via git or via feature descriptions.
>>>>>>
>>>>>>
>>>>>>
>>>>>> I tried this - attached at the end of this email are my bbappend fil=
e
>>>>>> and my patches, when the recipe is bitbaked, it does not actually
>>>>>> apply the patch.
>>>>>>
>>>>>> On a similar note - there seems to be a file in
>>>>>> meta/recipes-kernel/linux/linux-yocto called
>>>>>> tools-perf-no-scripting.patch
>>>>>>
>>>>>> However, it does not seem to be used anywhere - is this just crud or=
 I
>>>>>> am missing something? I was hoping to cheat off of the recipe that
>>>>>> uses it.
>>>>>>
>>>>>>>>> recipe for a kernel module - please point me to it.
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> Darren validated and updated the kernel module example, so he'd
>>>>>>>> probably
>>>>>>>> got this closer at hand than I do.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> See the hello-mod example under meta/recipes-kernel/hello-mod
>>>>>>
>>>>>>
>>>>>>
>>>>>> Thank you for this recipe - it seems like this is exactly what I was
>>>>>> looking for. I will cheat off of this as soon as I can patch my
>>>>>> kernel.
>>>>>>
>>>>>>
>>>>>> R E C I P E
>>>>>>
>>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$ cat
>>>>>> linux-yocto_3.0.bbappend
>>>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"
>>>>>> SRC_URI +=3D " file://linux/drivers/hid/hid-core.c.diff \
>>>>>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://linux/drivers/hid/h=
id-ids.h.diff "
>>>>>> PR =3D "r3"
>>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$
>>>>>>
>>>>>> P A T C H
>>>>>>
>>>>>>
>>>>>>
>>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linu=
x/drivers/hid$
>>>>>
>>>>>
>>>>>
>>>>> Taking a look at this (while I was cutting and pasting), this should
>>>>> be in in the
>>>>> a 'linux-yocto' subdirectory if you want bitbake to pickup the patch
>>>>> and
>>>>> make it
>>>>> available to the linux-yocto recipe.
>>>>>
>>>>> i.e.
>>>>>
>>>>> ~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux-yocto/driv=
ers/hid
>>>>>
>>>>> And don't use 'linux-yocto' in your file:// reference on the SRC_URI,
>>>>> that part is
>>>>> automatic.
>>>>
>>>>
>>>>
>>>> I tried this just now - here is what happens:
>>>>
>>>> Case - patch is in linux/linux-yocto/drivers/hid, SRC_URI ref is
>>>> file://drivers/hid/file.diff
>>>> Result: Fetcher failure for URL: 'file://drivers/hid/hid-core.c.diff
>>>
>>>
>>>
>>> If you get a fetcher failire, you have it in the wrong place.
>>>
>>> Note: this has nothing to do with the kernel and is a general
>>> bitbake/oe-core question.
>>>
>>>
>>>>
>>>> Case - patch is in linux/linux-yocto/drivers/hid, SRC_URI ref is
>>>> file://linux-yocto/drivers/hid/file.diff
>>>
>>>
>>>
>>> Interesting. I've never had to specify linux-yocto in my SRC_URIs,
>>> so something strange it going on here.
>>>
>>> Does anyone else have ideas here ?
>>>
>>>
>>>
>>>> Result - my diff files are copied in a directory called linux-yocto in
>>>>
>>>>
>>>> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b71=
37398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3
>>>>
>>>> These patches are not applied in
>>>>
>>>>
>>>> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b71=
37398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3/linux
>>>>
>>>> Here is what the work directory looks like
>>>>
>>>>
>>>>
>>>> autif@fpbm:~/ssd/minimal/tmp/work/crownbay-poky-linux/linux-yocto-3.0.=
4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69=
bb1353dba22f873-r3$
>>>> ls
>>>> git =C2=A0license-destdir =C2=A0linux =C2=A0linux-crownbay-standard-bu=
ild =C2=A0linux-yocto
>>>> =C2=A0temp
>>>>
>>>>
>>>> autif@fpbm:~/ssd/minimal/tmp/work/crownbay-poky-linux/linux-yocto-3.0.=
4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69=
bb1353dba22f873-r3$
>>>>
>>>>
>>>> I have attached the original set of files as a tar gzip.
>>>
>>>
>>>
>>> I'll take them for a spin.
>>>
>>>
>>>>
>>>>> (and yes, I see 'edison' was the branch now)
>>>>
>>>>
>>>>
>>>> Yes, I am using Yocto 1.0 - very soon I will migrate to M2 - pending
>>>> tasks at hand :-)
>>>
>>>
>>>
>>> I'll have to dig up a 1.0 tree, since I don't have anything of that
>>> vintage available to me.
>>>
>>> But I know that patched worked then, and am absolutely sure that it
>>> works in 1.1 and master.
>>
>>
>> OK, I switched to M2 release and now, I have a different error:
>>
>> Case - diff files are in recipes/linux/linux-yocto, SRC_URI is
>> file://drivers/hid/hid-core.c.diff
>> Result - ERROR: Function 'Fetcher failure for URL:
>> 'file://drivers/hid/hid-core.c.diff'. Unable to fetch URL
>> file://drivers/hid/hid-core.c.diff from any source.' failed
>>
>>
>> Did, I misunderstood you when you said that I should rename the files
>> dir to linux-yocto - the name of the recipe and remove it from the
>> SRC_URI?
>
>
> Every build that I do with my meta-kernel-dev has some out of tree
> patches. It's a form of continual regression testing that I do out
> of habit.
>
> My bbappend looks like this:
>
> SRC_URI =3D
> "git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;branch=3D${KBRA=
NCH},meta;name=3Dmachine,meta
> \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://make.patch \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://subdir/make2.patch \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://subdir/make3.patch"
>
>
>> pwd
> /home/bruce/yocto/poky-extras/meta-kernel-dev/recipes-kernel/linux
>> tree linux-yocto
> linux-yocto
> =E2=94=9C=E2=94=80=E2=94=80 make.patch
> =E2=94=94=E2=94=80=E2=94=80 subdir
> =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 make2.patch
> =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 make3.patch
>
> These are always applied to my build.
>
> Cheers,
>
> Bruce
>

I will try that next. However, it seems like something is wrong with
my setup may be.

I was reading the log.do_patch file and it seems like bitbake is
mixing my build and recipes directory.

The recipe and logs are attached in this email. Once again, I have
switched to M2 now. This is no longer with Yocto 1.0.

--047d7b33d6e84b60bd04b852edb2
Content-Type: application/x-gzip; name="cant_patch_kernel.tar.gz"
Content-Disposition: attachment; filename="cant_patch_kernel.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gyc1znk00

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

--047d7b33d6e84b60bd04b852edb2--
