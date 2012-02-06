Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B40BE0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 12:18:07 -0800 (PST)
Received: by dadp13 with SMTP id p13so6284988dad.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 12:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=uJXkEsYwp35m6hcl/EQkTE8gx3mLY6l7m/oul4y08k8=;
	b=RMWSPs9KV6kqwHwl5+rq0nDOC374lH40qPL13u4EdLPzNe+QHVDNScn73TjY3z9LBF
	dSCGXOmO/9Zdec94gp2W8Ee3siDn9VJblN0RLNaZy34hpTJqFmPkwq14OWykpQN8qB/C
	K4pnpTmKhjLydreYPh73Mfpimck0ypCwS8EUc=
MIME-Version: 1.0
Received: by 10.68.232.202 with SMTP id tq10mr50591060pbc.68.1328559486681;
	Mon, 06 Feb 2012 12:18:06 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Mon, 6 Feb 2012 12:18:06 -0800 (PST)
In-Reply-To: <CADkTA4NuLPg3+vA-6QkxkVqkthc_bXcN1Cye5Yzhz65tOmUzHw@mail.gmail.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
	<CADzUK1+sAGYAPY=Pm6xsEFnqpj4T+8R6kDmrSrySiSgS00v-EQ@mail.gmail.com>
	<CADkTA4NuLPg3+vA-6QkxkVqkthc_bXcN1Cye5Yzhz65tOmUzHw@mail.gmail.com>
Date: Mon, 6 Feb 2012 15:18:06 -0500
Message-ID: <CADzUK1LO0gUd36X-N1hXQ49Bx7Lu+xW5u8VQT-waAtn1jM=6CQ@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Mon, 06 Feb 2012 20:18:07 -0000
X-Groupsio-MsgNum: 4704
Content-Type: multipart/mixed; boundary=047d7b33d6e84443a204b8515ccc

--047d7b33d6e84443a204b8515ccc
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>>>>> I could not find a way to patch the kernel source before its is built=
.
>>>>>
>>>>> I promise to update the Yocto wiki's How do I section when I have a
>>>>> working solution for the following :-)
>>>>
>>>> This should be covered in the existing documentation and also the
>>>> more general bitbake/oe-core docs.
>>>>
>>>>>
>>>>> Here is what I am trying to do:
>>>>>
>>>>> 1) Patch the kernel (add VID/PID to hid_ignore_list in
>>>>> drivers/hid/hid-core.c and also to add the VID/PID to .h file)
>>>>> 2) Build the kernel - no change here - standard kernel build
>>>>> 3) Build a kernel module
>>>>>
>>>>> I have a meta layer where I am keeping my changes. I am guessing that=
 I need to:
>>>>>
>>>>> a) write a bbappend file to accomplish #1
>>>>> b) write a recipe to accomplish #3
>>>>>
>>>>> I have written recipes before, but just for libraries and autotools
>>>>> based applications. Not for a kernel module. If there is a recipe out
>>>>> there for some other module, I would be happy to steal from it.
>>>>>
>>>>> Please advise how I can go about patching the kernel and if there is =
a
>>>>
>>>> It's just like any other package. If your changes are simple, then
>>>> generating patches and putting them on the SRC_URI via a bbappend in
>>>> your layer is all you need. If you have complex changes, there are opt=
ions
>>>> to manage them via git or via feature descriptions.
>>
>> I tried this - attached at the end of this email are my bbappend file
>> and my patches, when the recipe is bitbaked, it does not actually
>> apply the patch.
>>
>> On a similar note - there seems to be a file in
>> meta/recipes-kernel/linux/linux-yocto called
>> tools-perf-no-scripting.patch
>>
>> However, it does not seem to be used anywhere - is this just crud or I
>> am missing something? I was hoping to cheat off of the recipe that
>> uses it.
>>
>>>>> recipe for a kernel module - please point me to it.
>>>>
>>>> Darren validated and updated the kernel module example, so he'd probab=
ly
>>>> got this closer at hand than I do.
>>>
>>> See the hello-mod example under meta/recipes-kernel/hello-mod
>>
>> Thank you for this recipe - it seems like this is exactly what I was
>> looking for. I will cheat off of this as soon as I can patch my
>> kernel.
>>
>>
>> R E C I P E
>>
>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$ cat
>> linux-yocto_3.0.bbappend
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"
>> SRC_URI +=3D " file://linux/drivers/hid/hid-core.c.diff \
>> =A0 =A0 =A0 =A0 =A0 =A0 file://linux/drivers/hid/hid-ids.h.diff "
>> PR =3D "r3"
>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$
>>
>> P A T C H
>>
>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dr=
ivers/hid$
>
> Taking a look at this (while I was cutting and pasting), this should
> be in in the
> a 'linux-yocto' subdirectory if you want bitbake to pickup the patch and =
make it
> available to the linux-yocto recipe.
>
> i.e. ~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux-yocto/dri=
vers/hid
>
> And don't use 'linux-yocto' in your file:// reference on the SRC_URI,
> that part is
> automatic.

I tried this just now - here is what happens:

Case - patch is in linux/linux-yocto/drivers/hid, SRC_URI ref is
file://drivers/hid/file.diff
Result: Fetcher failure for URL: 'file://drivers/hid/hid-core.c.diff

Case - patch is in linux/linux-yocto/drivers/hid, SRC_URI ref is
file://linux-yocto/drivers/hid/file.diff
Result - my diff files are copied in a directory called linux-yocto in
tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398=
ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3

These patches are not applied in
tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398=
ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3/linux

Here is what the work directory looks like

autif@fpbm:~/ssd/minimal/tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git=
1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb135=
3dba22f873-r3$
ls
git  license-destdir  linux  linux-crownbay-standard-build  linux-yocto  te=
mp
autif@fpbm:~/ssd/minimal/tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git=
1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb135=
3dba22f873-r3$


I have attached the original set of files as a tar gzip.

> (and yes, I see 'edison' was the branch now)

Yes, I am using Yocto 1.0 - very soon I will migrate to M2 - pending
tasks at hand :-)

> Cheers,
>
> Bruce
>
>> cat hid-core.c.diff
>> --- linux.orig/drivers/hid/hid-core.c =A0 2012-01-31 16:44:44.152001877 =
-0500
>> +++ linux/drivers/hid/hid-core.c =A0 =A0 =A0 =A02012-01-31 16:46:34.6080=
01870 -0500
>> @@ -1839,6 +1839,8 @@
>> =A0 =A0 =A0 =A0{ HID_USB_DEVICE(USB_VENDOR_ID_WISEGROUP, USB_DEVICE_ID_1=
_PHIDGETSERVO_20) },
>> =A0 =A0 =A0 =A0{ HID_USB_DEVICE(USB_VENDOR_ID_WISEGROUP, USB_DEVICE_ID_8=
_8_4_IF_KIT) },
>> =A0 =A0 =A0 =A0{ HID_USB_DEVICE(USB_VENDOR_ID_YEALINK, USB_DEVICE_ID_YEA=
LINK_P1K_P4K_B2K) },
>> + =A0 =A0 =A0 { HID_USB_DEVICE(USB_VENDOR_ID_PIXCIR, USB_DEVICE_ID_PIXCI=
R) },
>> =A0 =A0 =A0 =A0{ }
>> =A0};
>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dr=
ivers/hid$
>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dr=
ivers/hid$
>> cat hid-ids.h.diff--- linux.orig/drivers/hid/hid-ids.h =A02012-01-31
>> 16:44:55.432001877 -0500
>> +++ linux/drivers/hid/hid-ids.h 2012-01-31 16:47:36.624001858 -0500
>> @@ -671,4 +671,7 @@
>> =A0#define USB_VENDOR_ID_ZYDACRON 0x13EC
>> =A0#define USB_DEVICE_ID_ZYDACRON_REMOTE_CONTROL =A00x0006
>>
>> +#define USB_VENDOR_ID_PIXCIR =A0 0x040b
>> +#define USB_DEVICE_ID_PIXCIR =A0 0x2000
>> +
>> =A0#endif
>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dr=
ivers/hid$
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"

--047d7b33d6e84443a204b8515ccc
Content-Type: application/x-gzip; name="linux.tar.gz"
Content-Disposition: attachment; filename="linux.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gybxx9cg0

H4sIAIk0ME8AA+2X/U/aQBjH+dX+FRe2H1xKy70fY1kCQpUGR0lbnS5LLiplNjFiqi4uhv99d0UG
MgUWkL3dB9oj9/Jcw/e+d08v0svbu3LhRYEKwZgukWBwuhxTQEggCgmGWBQgQhjRAmAv+1gjbq9v
TjIACie3N2l/Tr9F7X8pF7n++d35Nji7GUjiQvf09OTqKrnsrWcOLTCn9Fn9MSVj/dVd688YFwUA
1zP9fP5z/Xf9fS/yjuKw3q3HrUheZYkWHlTfg+Lr+7jlR00/HFaLVhQ25EHoA1s1gH56kVTLo2VT
7mXp1yS7Lp+nPX05Z4Mscc/cXtrvg88WmGbuuLR37Z6PhhWtbgjURBkpWtbv/ov+aab8/2KnwLL7
P8Yccab2CYQJJ2b/3wTT+o8Nue45ltYfcsi5qtcngdF/Izylv96Q1znHL+V/MNefcZP/bYTn9J85
yFeaY1H+Jwif5H8CKf0FUcvF5H8bwHEckKvvDrL0yzNLYAurI9mByCEIIF6lVH1dxJRZUUUI4EAG
oWXbNpi3jmaD8CqhLoeVPAh8CFKrAQdVyNsSB3ZeVkCtZoGte9Dym/Ig2pFN79BveNv656HXaQah
VA0f/cjbC4ODbglM+ugGJLtq4J4XR154GEgM34BhaYV4FfWh0t+VbT9eLtSxV9/3O+3ZQA/VsovU
RdtyB7fzePaieF3/qOGHs+FGtT+eaGiB4TsLLJE6z/P/JCFfbY0t8j/D9MH/mEGq93/1FkiN/zfB
Av/nS+Bn+zPmUrKs/Z+MIaqEuxxTHYNVptzPBSpRYOtC5N5/1Uv66WUCHtvg03Gz3giDzha8Q8Rr
PO428cW4mwy9D0HsyUbQicNgX43Sa1I5xH46/MhPuhuFp487zZpOddJZi2WrZ1BvzmnfvLAaDAaD
wWAwGAwGg8FgMBgMhj+C7y5lTwoAKAAA

--047d7b33d6e84443a204b8515ccc--
