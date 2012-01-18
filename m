Return-Path: <josefahmad1@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02ED1E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 04:38:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaaa14 with SMTP id a14so1831804eaa.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 04:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=coMUB+pXTb0p6gOV5sY+/pbgKGJQVhZbU2NA58zv5tw=;
	b=LwbiH9mzHFkpVYU2peJOS/oGO358pMnvn3CwDSklz+TcleqowMqzYMQU0PUIT+GOcr
	CnAQJc+cdZIlSz3Y3mBRC0iUXjBm4ZgwgTRfwYBIPvLO/tJMo1wtfXaE1Gput/nXLGGx
	vQkEfTU7Jw3auTsjZs4RNf3kcM2FiznZa4w8A=
MIME-Version: 1.0
Received: by 10.213.25.69 with SMTP id y5mr4428645ebb.1.1326890318757; Wed, 18
	Jan 2012 04:38:38 -0800 (PST)
Sender: josefahmad1@gmail.com
Received: by 10.213.108.139 with HTTP; Wed, 18 Jan 2012 04:38:38 -0800 (PST)
In-Reply-To: <4F0F2627.3010004@linux.intel.com>
References: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
	<4F0F2627.3010004@linux.intel.com>
Date: Wed, 18 Jan 2012 12:38:38 +0000
X-Google-Sender-Auth: humHVinVy9tedMxRCO8Xpbw69tI
Message-ID: <CACJvPv0-uDCYrVuGKZsKPWqD38MTvO-E+OiMYbW6Egj8ochapw@mail.gmail.com>
From: Josef Ahmad <josef.ahmad@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: qemu EFI build failure
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
X-List-Received-Date: Wed, 18 Jan 2012 12:38:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Darren,

Sorry for the delay in getting around to this.
I picked QEMU as a generic machine to build Grub for the only purpose
of testing build + boot.

Thanks for the hint for locally appending configuration variables.
Also, I've applying Nitin's automake patch and I confirm grub-efi
correctly builds and runs on Qemu (with TianoCore EFI BIOS).

Thanks

- Josef

On 12 January 2012 18:27, Darren Hart <dvhart@linux.intel.com> wrote:
>
>
> On 01/12/2012 08:19 AM, Josef Ahmad wrote:
>> I tried to build a qemux86 EFI image, by setting:
>> - in my local.conf: IMAGE_FSTYPES +=3D "live"
>> - in poly/meta/conf/machine/qemux86.conf: MACHINE_FEATURES +=3D "efi"
>>
>
> I haven't tried live images with QEMU. For one thing, they aren't really
> necessary as you can specify all the boot parameters on the qemu command
> line. Is there are reason you want to use the live image specifically?
>
> Also, in order to properly test EFI in QEMU, you will need to use an EFI
> BIOS - I believe you're aware of this already - but this isn't currently
> supported by the runqemu scripts that ship with yocto.
>
>> The build gave me the following error:
>
>
> I'll do some test builds - it isn't clear to me what is going on here.
>
> <snip>
>
>>
>>
>> Has anyone encountered the same error? =A0I'm not sure I set up the
>> correct configuration. Also, is there another way to append "efi" to
>> MACHINE_FEATURES rather than by modifying qemux86.conf?
>
> You should be able to do something like:
> MACHINE_FEATURES_append_qemux86 =3D "efi"
>
> Note that you will also need to enable the efi support in the kernel,
> which is done with the KERNEL_FEATURES variable, something like:
> KERNEL_FEATURES_append_qemux86 =3D "conf/efi-ext.scc"
>
> Either of these can be set in your local.conf.
>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

