Return-Path: <andrea.adami@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E17C7E0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 11:45:44 -0700 (PDT)
Received: by dadz8 with SMTP id z8so878174dad.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 11:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=8bcDQGx4cIPLF2jwETX/Lfj3d485r12PEORPyBbXlJE=;
	b=dlJcl4jFIismDX+Um3JmIMIBZbT/4aT2/szFARGn2ZQTnMsH0sIucsRtGSz/Do6d88
	gZefywzySbG58h64i52PZJXT77uGc6IoN6wvMhK1QGzhKT3wDdtXiZnjzguqUo9RHauh
	FUt7ikOrM4TvGb+z2gfLJx8KSeG7E8e7Weugun2Jc9+fB4S1YAb/2PCF4PFqNuuuHoKS
	Yj7cwkykGqyQfwkBJKRpVYmipABDQmsfQlfDEl0WwMVUFKqNrZXapk/2taX3COvmTPHx
	KCVZmT8/eF+QmNO0HuqDWCFvsmDkCcjNZTLQXL1YhNYkgHo89sAyde8jf6DZO/PG5rRR
	ZzNQ==
MIME-Version: 1.0
Received: by 10.68.222.197 with SMTP id qo5mr941177pbc.72.1336589144522; Wed,
	09 May 2012 11:45:44 -0700 (PDT)
Received: by 10.142.54.11 with HTTP; Wed, 9 May 2012 11:45:44 -0700 (PDT)
In-Reply-To: <CAAQYJAtdpbszqBwPGvnB96PsA7t3py94mZGwsmbAsoZ9p=XWrg@mail.gmail.com>
References: <CAKSdS8LS3dX_zJpg8cZ5NqdN3DyHbRXdtK01oPukLfNmmfVFDQ@mail.gmail.com>
	<4FAAB4EB.8040502@linux.intel.com>
	<CAAQYJAtdpbszqBwPGvnB96PsA7t3py94mZGwsmbAsoZ9p=XWrg@mail.gmail.com>
Date: Wed, 9 May 2012 20:45:44 +0200
Message-ID: <CAAQYJAvgQTj2H_bkJf+eLK2mNT7sR4R4hwE8ngM9NS1HWdNWLg@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: initramfs image
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
X-List-Received-Date: Wed, 09 May 2012 18:45:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, May 9, 2012 at 8:44 PM, Andrea Adami <andrea.adami@gmail.com> wrote=
:
> On Wed, May 9, 2012 at 8:18 PM, Darren Hart <dvhart@linux.intel.com> wrot=
e:
>>
>>
>> On 05/08/2012 06:54 PM, Manuel Bessler wrote:
>>> Hi,
>>>
>>> I'm trying to figure out how to build an image of type initramfs, ie.
>>> kernel with built-in rootfs.
>>> I've got a rootfs.cpio.gz in build/tmp/deploy/images. But how do I
>>> tell the kernel to actually use it
>>> and "swallow in" the rootfs.
>>
>> This isn't currently supported. The problem is the kernel would have to
>> wait for the image to be completed, and the image currently waits for
>> the kernel to be completed. In practice, this is often done in two
>> stages, the kernel is built, the rootfs is built, then the kernel is
>> rebuilt. This workflow has not been configured for OE/Yocto yet. If this
>> is an important feature for you, please consider opening a feature reque=
st.
>>
>> Regards,
>>
>> Darren Hart
>>
>>>
>>> I've found a few variable that have to do with initramfs', but there
>>> are no simple examples,
>>> and for some variables I've not found any examples nor documentation at=
 all.
>>>
>>> in =A0.../images/myimage-initramfs.bb I have:
>>> require myimage.bb
>>> INITRAMFS_FSTYPES =3D "cpio.gz"
>>> IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
>>>
>>> In the same file I tried to set INITRAMFS_IMAGE to:
>>> INITRAMFS_IMAGE =3D "myimage "
>>>
>>>
>>> Do I need to set CONFIG_INITRAMFS_SOURCE in my kernel config manually,
>>> and if yes, to what?
>>> My kernel recipe is (for now) a simple kernel build, ie "inherit
>>> kernel"-based only.
>>>
>>> Am I using INITRAMFS_IMAGE the right way? What about INITRAMFS_TASK ?
>>> I could not find any information on this variable....
>>>
>>> I'm using yocto 1.2.
>>>
>>>
>>> Does anyone have a simple example on how to build a kernel with
>>> initramfs built in?
>>>
>>> I'd appreciate any help.
>>> Thanks,
>>> Manuel
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> I think I've answered a similar question last week.
>
> Pls. see =A0this thread:
> https://lists.yoctoproject.org/pipermail/yocto/2012-May/008625.htmlsimila=
r
> question was answ
>
> Regards
>
> Andrea

Bad copy&paste :/ sry

 https://lists.yoctoproject.org/pipermail/yocto/2012-May/008625.html

