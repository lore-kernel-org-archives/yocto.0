Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F24F9E00B85; Thu,  5 Jun 2014 11:11:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75AA3E00A44
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 11:11:24 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id n15so11078891wiw.3
	for <yocto@yoctoproject.org>; Thu, 05 Jun 2014 11:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9qhT+GydoobuuyCqJdtBj0bDBUozFxZiEkJN4YcFCLA=;
	b=N+n+uedR7De/YSP3Z9F1nCBTb+cVV1yU0GhWMGz7ixRrvtzqvBNwYTfLdb/IR4c0w7
	JSCRovKXhiYvOrLvZI9AoF4zUx1GBDIJrd91cycCgQdHs3HNsGZPFelEmiBjJp8VONJu
	fINyyYH+RTBS/XwSmw+dP+WNzbTupQG92d3AZBBn9EPgVhx4YdYxqxj05ApFNSg1XEfR
	yrY8bPGPqR2y6+48/zfl7NkcreVq1JNGAyzVTiFKDKkHCvHwsbMJdZUM0BsAT+MFqM83
	77nQF3Nq2kS3SCCIwCI8uooaIj2juB/QeyDPn9LiSE2LAae2D8m6IAZ1pBG8Qj+o5wbK
	/qyA==
X-Received: by 10.180.186.8 with SMTP id fg8mr18234067wic.39.1401991883831;
	Thu, 05 Jun 2014 11:11:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.89.5 with HTTP; Thu, 5 Jun 2014 11:11:03 -0700 (PDT)
In-Reply-To: <CACzyEJ_tfEmYhR6+p_M8xPUj+n_UYvaG+Sj1ErfAJXCXjyFZEw@mail.gmail.com>
References: <CACzyEJ-WoUrc+Cvib3XHasdZPO1gk7rcyepTE1Xj5G2ndxaB+Q@mail.gmail.com>
	<CA+gsK-pQz1TeXzfbP0tMMfwdWQcHoCme4PdUM3s+vRbe3oT4EA@mail.gmail.com>
	<CACzyEJ_tfEmYhR6+p_M8xPUj+n_UYvaG+Sj1ErfAJXCXjyFZEw@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 5 Jun 2014 11:11:03 -0700
Message-ID: <CACzyEJ_sD+Uwuacrf6SuM2h8+4oCkxg_OY0wTu48Op9-nfcx8Q@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: how to specify if multiple bb files are existing
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
X-List-Received-Date: Thu, 05 Jun 2014 18:11:29 -0000
Content-Type: text/plain; charset=UTF-8

Hi Rudi,


I looked more and found out that the reason why 2013.01.01.bb, which
is the latest, was not picked was due to "DEFAULT_PREFERENCE = -1" in
that file.

I was using this file from here :
http://git.freescale.com/git/cgit.cgi/ppc/sdk/poky.git/tree/meta/recipes-bsp/u-boot/u-boot-fw-utils_2013.01.01.bb?h=dylan

Thank you.

ISS

On Wed, Jun 4, 2014 at 7:27 PM, Insop Song <insop.song@gmail.com> wrote:
> Hi Rudi,
>
> Thank you very much for your help.
> I've added PREFERRED_VERSION and started build.
>
> Regards,
>
> Insop
>
> On Wed, Jun 4, 2014 at 6:37 PM, Rudolf Streif
> <rstreif@linuxfoundation.org> wrote:
>> Hi Insop,
>>
>> Technically u-boot-fw-utils_2013.01.01 should be used because it's the newer
>> version. However, you can explicitly specify
>>
>> PREFERRED_VERSION_u-boot-fw-utils = "2013.01.01"
>>
>> Cheers,
>> Rudi
>>

