Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC012E00BAA; Mon, 22 Feb 2016 10:40:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 465ECE00AAB
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:40:13 -0800 (PST)
Received: by mail-qg0-f51.google.com with SMTP id y9so119705791qgd.3
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vHRehxm0JBlyoieeTipvk1wzy1D4NEy0Y2Tpj+NpPcI=;
	b=M7jn6HVEE69LFylu2dZs7EdDQmXHJNlk4o1IWkRvjS7cn5xra+e2QEdi8Pyu/seQaT
	MH2CrIrkq2GYde7XQaRh4Vlo035pd1hE/vqgLT/8TpCKnpWnC+x+RKTKESNFEZurXvHN
	H3Fbcd5SCm1feSVfDByuy+IXLTB5AiqByTY63tH1DBrKv9MPe1OKUfGQjohn4hwYrmeb
	j3+dMvXGwkb28HCA4ie88QrYAtbCjkr03qPskru8P68IL6Q3bTYgMSXngACHMJoQzbpV
	w4aA0dfIMMhGRYoXuHJU5EHa+X73aKCnts44TUoeewS1fF5lV9bii7Yegp+KrS5rMRju
	fa+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vHRehxm0JBlyoieeTipvk1wzy1D4NEy0Y2Tpj+NpPcI=;
	b=SXz9IOsXrSd/AKvhCmIHiXqOKnJW097k6PqFzSRHOMo6oEB9ucBvQk0OylU5YxE3C6
	8/m4qeN+A3YPFvwldOKpcsdBlDpotcXfiSGl8zJD69PttzYB/LkLvXNLGRWLEi0vJ0QT
	N7fpZUuPesYtjsw5MaumsStVzhI0P9Qss9EA0ebasVI1uIk0kEsrDYaf9oeKsfp18uy3
	t5+fB7bSH+hI9ZG20RIBoLkuJ9m4febKT2G84OyhLkF6NSJpy55VBH/A5ERDQJVVKVYQ
	HeYDWXBEqR0SE4v9K565csxEcWfb4nXblk42KO01Of3loxTIEKq2S7HCeNXDCOTd3YiF
	Gnsg==
X-Gm-Message-State: AG10YOSx+pG3c0lKifyVljHqFSmdBay23Oat4TEtCt3AafgCXEpacvYyQAQlesH9LVGCUSEq2GLyZ1hvleinZw==
X-Received: by 10.140.254.9 with SMTP id z9mr38163719qhc.5.1456166413112; Mon,
	22 Feb 2016 10:40:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 22 Feb 2016 10:39:43 -0800 (PST)
In-Reply-To: <1456132597.1329.24.camel@settopsurvey.com>
References: <1456132597.1329.24.camel@settopsurvey.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Feb 2016 10:39:43 -0800
Message-ID: <CAMKF1sq7ckpqkyK+AJJrXs5T4POeVMyAtV9M=S0OMEbxVXBz_g@mail.gmail.com>
To: simo <sazzalin@settopsurvey.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake does not apply changes and sometimes it removes the kernel-source directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Feb 2016 18:40:16 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 22, 2016 at 1:16 AM, simo <sazzalin@settopsurvey.com> wrote:
> Hi all,
>
> I am using a 'poky fido 13.0.1' Yocto distribution and I am experiencing
> some problem after modifying the Linux kernel code and recompiling it.
>
> Bitbake is not applying the changes and sometimes deletes the source
> folder (but I have a backup, of course).
>
> From yocto environment shell, I execute:
>
> ~$ bitbake linux-gumstix -c compile -f
>
> and then to create an image and having a kernel file compiled available:
>
> ~$ bitbake core-image-base
>
> What is the best way to recompile an edited source with bitbake from
> shell ? And why it removes the kernel-source directory ?

you can use devtool to setup an component sandbox and make changes
there that would
be preferred approach.

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-devtool-in-your-workflow

second option is to use quilt based workflow where you use quilt in
the workdir to generate the patch
and then ship it into metadata and apply it as a patch via SRC_URI

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-a-quilt-workflow

>
> Thank you in advance for your help.
>
> Regards,
> Simon
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

