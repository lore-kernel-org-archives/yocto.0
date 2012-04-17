Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFEFE0044A
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 23:49:05 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1199828wgb.11
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 23:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1Cayl//pylfpAcPgYFHUOqX6fBsFrQoJg2LqDsahVNM=;
	b=f7r/YT0Qcfgio+87CUMKJgxoiU8sXhiPPXNYw3oTXWme0fuyixk/DSuFsSbeRiil0X
	ACe1KlG5E2F+e6jY+JbxAPwNZjo8bbJFQ4+lAqTCUltKTgxTSmY9ELoZb7xhHA2s24m/
	BQ9gFfYGcE9Apu1KL2jJY5Z6VlzPgIHVoqOypj2QUciSY2VPadtFoeS4/Irsazh9HB0t
	s9hZf4yBzpAPQpKqOuJgcpRfzYjKzbWMbDXYROhId5OIlHR6F3yG1CE+JRMDUxtbRkUI
	pF9leC4p4LtfCs0/gWp77ovDEjY9iEZd/bdcBQ12hnkKyeQ/qlEl3Gn/9KPS5cZaFY8O
	XBfg==
MIME-Version: 1.0
Received: by 10.216.132.40 with SMTP id n40mr8513269wei.68.1334645345056; Mon,
	16 Apr 2012 23:49:05 -0700 (PDT)
Received: by 10.223.14.149 with HTTP; Mon, 16 Apr 2012 23:49:05 -0700 (PDT)
In-Reply-To: <CAGiJk9fWzFjW5_T03JFNX9XE2n=XaR_EE2dT_3AtkQ9gjnqAQQ@mail.gmail.com>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<CAGiJk9fWzFjW5_T03JFNX9XE2n=XaR_EE2dT_3AtkQ9gjnqAQQ@mail.gmail.com>
Date: Tue, 17 Apr 2012 08:49:05 +0200
Message-ID: <CAGiJk9c=09gaqHhPNV201sVMGnLgF=xUTCwPkxiJoSRai7qgpg@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Tue, 17 Apr 2012 06:49:06 -0000
Content-Type: text/plain; charset=UTF-8

2012/4/17 Samuel Stirtzel <s.stirtzel@googlemail.com>:
> 2012/4/17 Xu, Dongxiao <dongxiao.xu@intel.com>:
>> Hi,
>>
>> I am testing beagleboard with RPM, and there is a question I am confused
>> with that PACKAGE_ARCH is renamed for certain packages. For example the
>> "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", however
>> in RPM file, the arch is renamed to "armv7a", see
>> "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
>> "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
>>
>> Could anybody give hint on this?
>
> Hi,
> if applications need to be machine / hardware specific they can
> indicate so by setting PACKAGE_ARCH.
>
> For example I use it for recipes that build different when other
> machine dependent packages are used by them:
> kde-workspace can use the OpenGL ES driver which is machine dependent
> so if it is used I set PACKAGE_ARCH = "${MACHINE_ARCH}".
>
> AFAIK the vfp-neon arch indicates that the package uses hard float (or
> "vector floating point") libraries instead of soft float.
> See mfloat-abi at http://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html
>
>>
>> Thanks,
>> Dongxiao
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> Regards
> Samuel

Ah sorry i misread your post,
don't know about the renaming details.

Sending mails before the first coffee is bad :(,
sorry for the noise.

-- 
Regards
Samuel

