Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A0CE00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 12:40:11 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so56369laa.35
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 12:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WAYC2IloPJ8wQJOb2QLp90gInZ5hFw46f8pvWVAVFEY=;
	b=baDCoKdJLaEBbGeg5BOe/xXjOj2GKT66JQONsjRqSmVZ6tLFbUXlhOobyZRH+CbBmS
	9tlar0qPDLTWaqdMOvLHxmwkuDBMLwsHeBcli7DLmhzWm8S8mlzg5lMU0acGE7/jpClF
	cPI8JcL2JkZnrYwtAKUpFP3s100zWNwVbD4po=
Received: by 10.152.130.232 with SMTP id oh8mr5975184lab.6.1323808810310; Tue,
	13 Dec 2011 12:40:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Tue, 13 Dec 2011 12:39:39 -0800 (PST)
In-Reply-To: <4EE7B752.7050802@linux.intel.com>
References: <4EE7B44D.7000301@linux.intel.com>
	<4EE7B752.7050802@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 13 Dec 2011 12:39:39 -0800
Message-ID: <CAMKF1srLz=mRMTb7r6ZMY4tM+7PLux47gU4Dc2MLrwBdTPwD0g@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: The role of "distro" and "image"
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
X-List-Received-Date: Tue, 13 Dec 2011 20:40:12 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 13, 2011 at 12:36 PM, Joshua Lock <josh@linux.intel.com> wrote:
>
>> As for images, I might be able to reuse core-image-minimal - but it
>> oddly contains "${POKY_EXTRA_INSTALL}" in the IMAGE_INSTALL. Since
>> core-image-minimal.bb is defined in oe-core and POKY is a distro notion
>> of meta-yocto, this contributes to my confusion over distro vs. image.
>>
>> I'd appreciate some discussion to help me clarify where these lines
>> should be.
>
> That's just a stray variable that has yet to be properly renamed by the
> looks of it.

yes there was a patch to rename that to IMAGE_EXTRA_INSTALL or
COREIMAGE_EXTRA_INSTALL

