Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A423BE004AB
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 23:07:33 -0800 (PST)
Received: by mail-ie0-f181.google.com with SMTP id 17so1613274iea.40
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 23:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=6n4q4HzFd2PrjYrLS0JvsJ2GWer7aH4wOCB3PizyGnY=;
	b=XC0/zjS0iWoKPE1ZTnjMZY4ov3avgUN9eVMd0UtxO3pGH66U5TNO89ghI2TKhzWQ2b
	LSSL/X83xAzottjmKmy35lkg732y2qsfjQakbVLVsL7nIUJ4tWtXZzFPsssQGO7QYfjG
	kSIun6Xbq+TZhzQ5sgpeXu0rh2USXjg3UlJ46UGN1osEEyQ28ArFuoinxWnBawlISXMP
	fse/ymc9Efan/Mpfv6EVKMWbnDVAJRVQu9N5CQLL+8CdW7OJTF28o0PtUsYP5laCZJrN
	7ShMAfPanFigQLcDZuYk3LJwnTKiIqS3JshXgM2LFRNt3vPQA/tY9AK5LxrN9tEAO801
	gdGg==
X-Received: by 10.50.12.193 with SMTP id a1mr17112452igc.24.1362726452981;
	Thu, 07 Mar 2013 23:07:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.163 with HTTP; Thu, 7 Mar 2013 23:07:02 -0800 (PST)
In-Reply-To: <61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
	<CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
	<61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Mar 2013 23:07:02 -0800
Message-ID: <CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Fri, 08 Mar 2013 07:07:33 -0000
Content-Type: text/plain; charset=UTF-8

Elvis

On Thu, Mar 7, 2013 at 8:20 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>                   Any plans on moving to gcc-4.7.3 or 4.8.0 anytime soon?

Neither of those has been released yet so no plans as of now.

>
> Nearly all the microblaze gcc patches are for gcc-4.8.0 on the trunk, several of them in fact.
>

OK may be you should wait until fall release of yocto

> I've re-applied and ported all the existing patches that you've created for gcc-4.7.2 to gcc-4.7.3 (not yet tested).

4.7.3 is probably a snapshot you are talking about. We have moved away
from snapshots for gcc since git repo for gcc is in terabytes and
using svn did not go well with gcc recipe. If 4.7.3
is release in few days I will be happy to consider but as such we are
staying with 4.7.2

>
> So, I was wondering if you'd like me to try to get gcc-4.7.3 or gcc-4.8.0 built against the current poky master branch?

You could try and may be even keep recipes in a layer and we can then
progress them
into OE-Core once the time comes.

>
> I can test ARM Cortex A9, ARM Cortex A8 and Microblaze at my end.
>
> Do let me know!
>
> Best regards,
>
> Elvis Dowson

