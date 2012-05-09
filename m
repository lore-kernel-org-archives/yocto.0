Return-Path: <andrea.adami@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A5C7E0140F
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 11:44:30 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1114713pbb.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 11:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=dJa8VhiadaRwAwTUJ9VvivJQlMlwGTxkDWxO3/YKwN8=;
	b=Y+Sia9VZqAIewCiIM3eLPD4VvMoqUS7pWr+1EjbBERINmELYFaI2GoF4OoNOOb6jkl
	Ht4CYcv1mHzhnhHTtYp/mKsFfEwRNrEf9PUAB7DfIKWlVN7gZPZ7/4TpUEr3+h1gJoMp
	q9xEVaSwo3m48bWu60eRx7HwRZMp2nUyQtLM0ZgIFK+C16aAz3ox83/p9RqZaGe7hU/W
	WwBOyS+9tpte4j0qUsHRh6pU1UtfISD8BEqly/H6wgSyURfqlt1xaYwKBDCBGF19fNCm
	pE+RRItOEiKx+JY2CxhwkZyu15S/jpidESJ5DKHjLLfAgdI7FKq8vWZA2RIppeiBDJyL
	mIxg==
MIME-Version: 1.0
Received: by 10.68.239.168 with SMTP id vt8mr11392685pbc.123.1336589069871;
	Wed, 09 May 2012 11:44:29 -0700 (PDT)
Received: by 10.142.54.11 with HTTP; Wed, 9 May 2012 11:44:29 -0700 (PDT)
In-Reply-To: <4FAAB4EB.8040502@linux.intel.com>
References: <CAKSdS8LS3dX_zJpg8cZ5NqdN3DyHbRXdtK01oPukLfNmmfVFDQ@mail.gmail.com>
	<4FAAB4EB.8040502@linux.intel.com>
Date: Wed, 9 May 2012 20:44:29 +0200
Message-ID: <CAAQYJAtdpbszqBwPGvnB96PsA7t3py94mZGwsmbAsoZ9p=XWrg@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 May 2012 18:44:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, May 9, 2012 at 8:18 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>
>
> On 05/08/2012 06:54 PM, Manuel Bessler wrote:
>> Hi,
>>
>> I'm trying to figure out how to build an image of type initramfs, ie.
>> kernel with built-in rootfs.
>> I've got a rootfs.cpio.gz in build/tmp/deploy/images. But how do I
>> tell the kernel to actually use it
>> and "swallow in" the rootfs.
>
> This isn't currently supported. The problem is the kernel would have to
> wait for the image to be completed, and the image currently waits for
> the kernel to be completed. In practice, this is often done in two
> stages, the kernel is built, the rootfs is built, then the kernel is
> rebuilt. This workflow has not been configured for OE/Yocto yet. If this
> is an important feature for you, please consider opening a feature reques=
t.
>
> Regards,
>
> Darren Hart
>
>>
>> I've found a few variable that have to do with initramfs', but there
>> are no simple examples,
>> and for some variables I've not found any examples nor documentation at =
all.
>>
>> in =A0.../images/myimage-initramfs.bb I have:
>> require myimage.bb
>> INITRAMFS_FSTYPES =3D "cpio.gz"
>> IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
>>
>> In the same file I tried to set INITRAMFS_IMAGE to:
>> INITRAMFS_IMAGE =3D "myimage "
>>
>>
>> Do I need to set CONFIG_INITRAMFS_SOURCE in my kernel config manually,
>> and if yes, to what?
>> My kernel recipe is (for now) a simple kernel build, ie "inherit
>> kernel"-based only.
>>
>> Am I using INITRAMFS_IMAGE the right way? What about INITRAMFS_TASK ?
>> I could not find any information on this variable....
>>
>> I'm using yocto 1.2.
>>
>>
>> Does anyone have a simple example on how to build a kernel with
>> initramfs built in?
>>
>> I'd appreciate any help.
>> Thanks,
>> Manuel
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


I think I've answered a similar question last week.

Pls. see  this thread:
https://lists.yoctoproject.org/pipermail/yocto/2012-May/008625.htmlsimilar
question was answ

Regards

Andrea

