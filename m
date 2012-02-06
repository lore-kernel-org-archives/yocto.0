Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D66BE0044D
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 11:39:24 -0800 (PST)
Received: by pbcc11 with SMTP id c11so6654015pbc.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 11:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=nNErVwo/5P02E9uUMWJiIKntHQMxSDsaEC2X1XvTE6g=;
	b=vojMjtAZmssT7oek1bAEN47ffTNBVzognqPX6dlbMuGOorWeRtNtuqHL0Ubxffnh7M
	bPdJ9RkyQb1MnllAw9V5au9ThFWBgE5LMwyDflLQNNp+x7IG15kkEbnD5rb1XTxGctNO
	pgQWqZDd58mBPYagU5jMDtT7BzaqOOgRy5dk8=
MIME-Version: 1.0
Received: by 10.68.73.234 with SMTP id o10mr50600939pbv.90.1328557164108; Mon,
	06 Feb 2012 11:39:24 -0800 (PST)
Received: by 10.142.139.16 with HTTP; Mon, 6 Feb 2012 11:39:23 -0800 (PST)
In-Reply-To: <CADzUK1+sAGYAPY=Pm6xsEFnqpj4T+8R6kDmrSrySiSgS00v-EQ@mail.gmail.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
	<CADzUK1+sAGYAPY=Pm6xsEFnqpj4T+8R6kDmrSrySiSgS00v-EQ@mail.gmail.com>
Date: Mon, 6 Feb 2012 14:39:23 -0500
Message-ID: <CADkTA4OYwvuyoU_07B7havm85tvpU7KxSnkNzzkW+23=aUyhiA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: autif khan <autif.mlist@gmail.com>
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
X-List-Received-Date: Mon, 06 Feb 2012 19:39:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 6, 2012 at 2:35 PM, autif khan <autif.mlist@gmail.com> wrote:
>>>> I could not find a way to patch the kernel source before its is built.
>>>>
>>>> I promise to update the Yocto wiki's How do I section when I have a
>>>> working solution for the following :-)
>>>
>>> This should be covered in the existing documentation and also the
>>> more general bitbake/oe-core docs.
>>>
>>>>
>>>> Here is what I am trying to do:
>>>>
>>>> 1) Patch the kernel (add VID/PID to hid_ignore_list in
>>>> drivers/hid/hid-core.c and also to add the VID/PID to .h file)
>>>> 2) Build the kernel - no change here - standard kernel build
>>>> 3) Build a kernel module
>>>>
>>>> I have a meta layer where I am keeping my changes. I am guessing that =
I need to:
>>>>
>>>> a) write a bbappend file to accomplish #1
>>>> b) write a recipe to accomplish #3
>>>>
>>>> I have written recipes before, but just for libraries and autotools
>>>> based applications. Not for a kernel module. If there is a recipe out
>>>> there for some other module, I would be happy to steal from it.
>>>>
>>>> Please advise how I can go about patching the kernel and if there is a
>>>
>>> It's just like any other package. If your changes are simple, then
>>> generating patches and putting them on the SRC_URI via a bbappend in
>>> your layer is all you need. If you have complex changes, there are opti=
ons
>>> to manage them via git or via feature descriptions.
>
> I tried this - attached at the end of this email are my bbappend file
> and my patches, when the recipe is bitbaked, it does not actually
> apply the patch.
>
> On a similar note - there seems to be a file in
> meta/recipes-kernel/linux/linux-yocto called
> tools-perf-no-scripting.patch
>
> However, it does not seem to be used anywhere - is this just crud or I
> am missing something? I was hoping to cheat off of the recipe that
> uses it.

cruft.

But again, there's no cheating that should be required. This is done
all day every day and it typically just works. What branch are you using ?

I can run a test with your patch, but can you resent it non-inlined, since =
I
have to cut and past it from the inline'd email, which means I need to
reformat it, and chances are it won't apply.

Cheers,

Bruce

>
>>>> recipe for a kernel module - please point me to it.
>>>
>>> Darren validated and updated the kernel module example, so he'd probabl=
y
>>> got this closer at hand than I do.
>>
>> See the hello-mod example under meta/recipes-kernel/hello-mod
>
> Thank you for this recipe - it seems like this is exactly what I was
> looking for. I will cheat off of this as soon as I can patch my
> kernel.
>
>
> R E C I P E
>
> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$ cat
> linux-yocto_3.0.bbappend
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"
> SRC_URI +=3D " file://linux/drivers/hid/hid-core.c.diff \
> =A0 =A0 =A0 =A0 =A0 =A0 file://linux/drivers/hid/hid-ids.h.diff "
> PR =3D "r3"
> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$
>
> P A T C H
>
> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dri=
vers/hid$
> cat hid-core.c.diff
> --- linux.orig/drivers/hid/hid-core.c =A0 2012-01-31 16:44:44.152001877 -=
0500
> +++ linux/drivers/hid/hid-core.c =A0 =A0 =A0 =A02012-01-31 16:46:34.60800=
1870 -0500
> @@ -1839,6 +1839,8 @@
> =A0 =A0 =A0 =A0{ HID_USB_DEVICE(USB_VENDOR_ID_WISEGROUP, USB_DEVICE_ID_1_=
PHIDGETSERVO_20) },
> =A0 =A0 =A0 =A0{ HID_USB_DEVICE(USB_VENDOR_ID_WISEGROUP, USB_DEVICE_ID_8_=
8_4_IF_KIT) },
> =A0 =A0 =A0 =A0{ HID_USB_DEVICE(USB_VENDOR_ID_YEALINK, USB_DEVICE_ID_YEAL=
INK_P1K_P4K_B2K) },
> + =A0 =A0 =A0 { HID_USB_DEVICE(USB_VENDOR_ID_PIXCIR, USB_DEVICE_ID_PIXCIR=
) },
> =A0 =A0 =A0 =A0{ }
> =A0};
> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dri=
vers/hid$
> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dri=
vers/hid$
> cat hid-ids.h.diff--- linux.orig/drivers/hid/hid-ids.h =A02012-01-31
> 16:44:55.432001877 -0500
> +++ linux/drivers/hid/hid-ids.h 2012-01-31 16:47:36.624001858 -0500
> @@ -671,4 +671,7 @@
> =A0#define USB_VENDOR_ID_ZYDACRON 0x13EC
> =A0#define USB_DEVICE_ID_ZYDACRON_REMOTE_CONTROL =A00x0006
>
> +#define USB_VENDOR_ID_PIXCIR =A0 0x040b
> +#define USB_DEVICE_ID_PIXCIR =A0 0x2000
> +
> =A0#endif
> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/dri=
vers/hid$
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

