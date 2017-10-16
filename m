Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A59DCE00D1B; Mon, 16 Oct 2017 00:41:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 998BBE00D12
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 00:41:02 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id p186so8903426ioe.12
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 00:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iPRMIiCisF4bOWfzvUjXiD9l2QlvC+COzOXwnKXz1xI=;
	b=o0OBZjpxzaQU0oV1TF8TZEmo6fO2R5pNUqF2Cef/vRjXHyaROSu110IuJXdyxk41Va
	3uM3uiPc3ZYFBa3cg4iPAps+iRQrQLu20Ydr4caIHrF7j6jVKeUVPhzZ/242p/kd50tw
	qdaVbLAsdAfLx/+lcmCcIBsATWLLZdESbcJn3vZje32mUEEqdvIj+EJJfSB13nA9X8s2
	mbPiFTHjJjdLUlhsenZNb/qSYPyI4a96ojwfLqrOpzXiLsyDKVWBCFOXlUoznqpKx9jD
	7oBhjzHc4jxxDHayGfjiX7BC14elbFRHKTDSb725jThy1V+mkpCnCNUzOk4ohq2Gscfb
	ruWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iPRMIiCisF4bOWfzvUjXiD9l2QlvC+COzOXwnKXz1xI=;
	b=KIv0/fr7roRrc4KZvcdsxSyrFAADuDJpX73Bh1+fD0EU0YH2ACcxEH7EnDGmh7bKxH
	lgDy3u8ZL6HG+v/8f5EPai+Hjcnwdy4swS9IzJ0xWPiaIL9isgPzN9rnrhNEca1BMjzW
	/07sLuOAt2uypdgd4dcJX4WbQnuSp1uzaN2DN5PDlH+2oitylj23Wc/HndYOQNfcDeiP
	5HwDUzAwhbvpP3Iy/oDDgv4WepenvZAyUT8HEDM10Gf0PrieIrUmU7PleF2c4XCP4b2f
	NCOCjcaoHQQ+DBJJq/bfJL3XxWJdZiuUv+O5mVZFARjLYQynZXwuYM1jEbDVerT/0TSl
	t3uA==
X-Gm-Message-State: AMCzsaXLu6WKAlD9qOb0x8G3nCMh4SV+fyB4SeZ86Zl1snxuuzeRDeMC
	18ruPfeaAo2+DvNE/u3VHOq0cP4DYoqDHaUfXLE=
X-Google-Smtp-Source: ABhQp+Sbin5234bk2+t/M862gdplWzyeKP4zHPaNXdaFwWQkKPIafJjMiUn+/2Y1dlIR/RYq0Jbzi0fOB3RiFQTtmpY=
X-Received: by 10.107.48.76 with SMTP id w73mr11552174iow.301.1508139661569;
	Mon, 16 Oct 2017 00:41:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.167.15 with HTTP; Mon, 16 Oct 2017 00:40:40 -0700 (PDT)
In-Reply-To: <HK2PR04MB0995E6C41F4CE558BD3B0DE0E64E0@HK2PR04MB0995.apcprd04.prod.outlook.com>
References: <HK2PR04MB09958FA97340182BB1D3D0E9E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
	<CAB2nKc80fwSyRcuNMDrxkuWWjTq7cUpzohTJ7xcc4jWMyCEGEw@mail.gmail.com>
	<HK2PR04MB0995E6C41F4CE558BD3B0DE0E64E0@HK2PR04MB0995.apcprd04.prod.outlook.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Mon, 16 Oct 2017 09:40:40 +0200
Message-ID: <CAB2nKc9ZsUi_SVB9xBpq6YeUUezxjrO+VzVS-mP+4DeVksVNVA@mail.gmail.com>
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Procedure for adding driver in Yocto
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
X-List-Received-Date: Mon, 16 Oct 2017 07:41:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

You have to create your own layer, then create a recipe to add your driver.

I'd suggest you to read
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#managing-layers
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#incorporating-out-of-tree-modules

Good luck,
Vincent

2017-10-15 16:13 GMT+02:00 Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>:
> Hi
>
> I am using wandboard, .bb file in the following path
>
> /yoctoimx-fsl-bsp/sources/meta-freescale-3rdparty/recipes-kernel/kernel-modules
>
> Contains kernel-module-mcc_2.1.01.bb
>
> But how do I edit it to add a new driver.
>
> Please suggest.
>
> Thanks
> Umamahesh
>
> -----Original Message-----
> From: Vincent Prince [mailto:vincent.prince.fr@gmail.com]
> Sent: 11 October 2017 12:54
> To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Procedure for adding driver in Yocto
>
> Hi,
>
> If you want to create a kernel module, you can use that kind of recipe
>
> meta-x-bsp/recipes-kernel/kernel-module/kernel-module-modulename.bb:
>
> SUMMARY = "Kernel loadable module"
> DESCRIPTION = "This package includes loadable module"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=a04ba2d94725e7270af091f1f1cb6580"
>
> PV .= "+git${SRCPV}"
>
> SRCREV = "e26baba25fa792730d09c6e5334814b3037e7bc7"
> SRC_URI = "git://url/modulename.git"
>
> S = "${WORKDIR}/git"
>
> inherit module
>
> KERNEL_MODULE_AUTOLOAD = "modulename"
>
> If it ok for you ?
> Best Regards,
> Vincent
>
> 2017-10-11 7:40 GMT+02:00 Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>:
>> Hi
>>
>>
>>
>> I am looking for a procedure how to add an new driver in Yocto Kernel.
>> I tried adding an sample char driver by updating Kconfig and makefile
>> of respective directory and by default marked as built in by default.
>>
>>
>>
>> But I do not see the driver is coming up while kernel is booted.
>>
>>
>>
>> Please suggest the procedure.
>>
>>
>>
>> Thanks
>>
>> Umamahesh
>>
>>
>>
>> ::DISCLAIMER::
>> ----------------------------------------------------------------------
>> ----------------------------------------------------------------------
>> --------
>>
>> The contents of this e-mail and any attachment(s) are confidential and
>> intended for the named recipient(s) only.
>> E-mail transmission is not guaranteed to be secure or error-free as
>> information could be intercepted, corrupted, lost, destroyed, arrive
>> late or incomplete, or may contain viruses in transmission. The e mail
>> and its contents (with or without referred errors) shall therefore not
>> attach any liability on the originator or HCL or its affiliates.
>> Views or opinions, if any, presented in this email are solely those of
>> the author and may not necessarily reflect the views or opinions of
>> HCL or its affiliates. Any form of reproduction, dissemination,
>> copying, disclosure, modification, distribution and / or publication
>> of this message without the prior written consent of authorized
>> representative of HCL is strictly prohibited. If you have received
>> this email in error please delete it and notify the sender
>> immediately.
>> Before opening any email and/or attachments, please check them for
>> viruses and other defects.
>>
>> ----------------------------------------------------------------------
>> ----------------------------------------------------------------------
>> --------
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

