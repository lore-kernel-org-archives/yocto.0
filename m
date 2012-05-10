Return-Path: <manuel.bessler@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A9DE01415
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 19:29:01 -0700 (PDT)
Received: by werc1 with SMTP id c1so816824wer.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 19:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=PPo02HrHXLMGGlcxTMmIQKOpLkOF+1nXxa3GZ/j0RdY=;
	b=duAYpsrGBUx2zeKvUR80eX9GMLQhYNEWQtQHh5rd6osKzb4mvO3iWHkJQJKMj7cIIb
	OtDG8myb90WFk0M3NtplYRJh1u3LZ7azCz8HWIO21155+rZ9lGZOPQJ8+4+yjyPCoUkj
	4QMzrTcHar0jO7w4fugtGljzXi60C9VYNPuwSFY3uk9m6O9jv5aw7n1Ot+/qxjnvXMMM
	bq2Vdbr8JjN62KX0AzsJLDoCmrWZyDFWaa60K3cNE08/FVdLoOmZph5IEmMVNJsWNMWe
	BIZ6G8eQJiSdnOe73j1Guyg7cOgQn2q7rc8AfOk4qKqEmiNNBC3+88LXLO4j3KA5A+ix
	DGYg==
MIME-Version: 1.0
Received: by 10.180.98.137 with SMTP id ei9mr5384931wib.0.1336616940247; Wed,
	09 May 2012 19:29:00 -0700 (PDT)
Received: by 10.223.154.144 with HTTP; Wed, 9 May 2012 19:29:00 -0700 (PDT)
In-Reply-To: <CAAQYJAvgQTj2H_bkJf+eLK2mNT7sR4R4hwE8ngM9NS1HWdNWLg@mail.gmail.com>
References: <CAKSdS8LS3dX_zJpg8cZ5NqdN3DyHbRXdtK01oPukLfNmmfVFDQ@mail.gmail.com>
	<4FAAB4EB.8040502@linux.intel.com>
	<CAAQYJAtdpbszqBwPGvnB96PsA7t3py94mZGwsmbAsoZ9p=XWrg@mail.gmail.com>
	<CAAQYJAvgQTj2H_bkJf+eLK2mNT7sR4R4hwE8ngM9NS1HWdNWLg@mail.gmail.com>
Date: Wed, 9 May 2012 22:29:00 -0400
Message-ID: <CAKSdS8LzLwXiareHZk+-Wgr7sMBHGgkWQNFi64nRUzfsU3DL5w@mail.gmail.com>
From: Manuel Bessler <manuel.bessler@gmail.com>
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
X-List-Received-Date: Thu, 10 May 2012 02:29:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Andrea,

thanks for the link, I will try that out.

Manuel

On Wed, May 9, 2012 at 2:45 PM, Andrea Adami <andrea.adami@gmail.com> wrote=
:
> On Wed, May 9, 2012 at 8:44 PM, Andrea Adami <andrea.adami@gmail.com> wro=
te:
>> On Wed, May 9, 2012 at 8:18 PM, Darren Hart <dvhart@linux.intel.com> wro=
te:
>>>
>>>
>>> On 05/08/2012 06:54 PM, Manuel Bessler wrote:
>>>> Hi,
>>>>
>>>> I'm trying to figure out how to build an image of type initramfs, ie.
>>>> kernel with built-in rootfs.
>>>> I've got a rootfs.cpio.gz in build/tmp/deploy/images. But how do I
>>>> tell the kernel to actually use it
>>>> and "swallow in" the rootfs.
>>>
>>> This isn't currently supported. The problem is the kernel would have to
>>> wait for the image to be completed, and the image currently waits for
>>> the kernel to be completed. In practice, this is often done in two
>>> stages, the kernel is built, the rootfs is built, then the kernel is
>>> rebuilt. This workflow has not been configured for OE/Yocto yet. If thi=
s
>>> is an important feature for you, please consider opening a feature requ=
est.
>>>
>>> Regards,
>>>
>>> Darren Hart
>>>
>>>>
>>>> I've found a few variable that have to do with initramfs', but there
>>>> are no simple examples,
>>>> and for some variables I've not found any examples nor documentation a=
t all.
>>>>
>>>> in =A0.../images/myimage-initramfs.bb I have:
>>>> require myimage.bb
>>>> INITRAMFS_FSTYPES =3D "cpio.gz"
>>>> IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
>>>>
>>>> In the same file I tried to set INITRAMFS_IMAGE to:
>>>> INITRAMFS_IMAGE =3D "myimage "
>>>>
>>>>
>>>> Do I need to set CONFIG_INITRAMFS_SOURCE in my kernel config manually,
>>>> and if yes, to what?
>>>> My kernel recipe is (for now) a simple kernel build, ie "inherit
>>>> kernel"-based only.
>>>>
>>>> Am I using INITRAMFS_IMAGE the right way? What about INITRAMFS_TASK ?
>>>> I could not find any information on this variable....
>>>>
>>>> I'm using yocto 1.2.
>>>>
>>>>
>>>> Does anyone have a simple example on how to build a kernel with
>>>> initramfs built in?
>>>>
>>>> I'd appreciate any help.
>>>> Thanks,
>>>> Manuel
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> --
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Linux Kernel
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> I think I've answered a similar question last week.
>>
>> Pls. see =A0this thread:
>> https://lists.yoctoproject.org/pipermail/yocto/2012-May/008625.htmlsimil=
ar
>> question was answ
>>
>> Regards
>>
>> Andrea
>
> Bad copy&paste :/ sry
>
> =A0https://lists.yoctoproject.org/pipermail/yocto/2012-May/008625.html

