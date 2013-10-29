Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB86E0179C
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 21:02:39 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id tp5so13358308ieb.30
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 21:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xH/CRXWvCvx8A0c1yUQ9w4QahsJK4rtgXJUO+rFFRic=;
	b=HVw9SOYBQvhI3TR2us2X+613xvrstDN9P26rFZmfpWIVYeHXBIdI0EDYGJK31tT7TO
	Kcda37YY9sMJUVuWD/I373WmtPmr4q0U/3DRk0HUkHeGz16q8dgQz0cI+hNnHPqqG5rR
	zP2U60M9wFAyTMBi/xgtzgJ3BRTXaKYapLMV0VKDkuY9YmppGb9WhOmNl49hAn8HP7kx
	fA2IwTCXnuBUb8y4HN0hNaRGEI083Q4hx2uP4Pha4bQcZZsyYdm3AJ3C8JBcS9MI+jr8
	Ba3vkhq5l+bmFmvwGtQV86IllnzuGiiQSR9FxJrPeRMswHMfUizsEuks9rihKY8T1tSw
	bOsA==
X-Received: by 10.42.208.211 with SMTP id gd19mr15557440icb.15.1383019359177; 
	Mon, 28 Oct 2013 21:02:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Mon, 28 Oct 2013 21:02:09 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7FBA7B68@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<229904476.ZkVfXfKkUW@helios>
	<17797116383D4341B029FDF34C22BF6A5D7F9676DD@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<5732112.ULB9IMbfHf@helios>
	<17797116383D4341B029FDF34C22BF6A5D7FBA7B68@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Oct 2013 21:02:09 -0700
Message-ID: <CAMKF1spGfu11zQ+8NvA_WHm=Q7mhDZVbGJAvm1+s0SqsZr_1JQ@mail.gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto toolchain compilation Issues
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
X-List-Received-Date: Tue, 29 Oct 2013 04:02:45 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 23, 2013 at 2:01 AM, Rohit2 Jindal
<rohit2.jindal@aricent.com> wrote:
> Hi ,
>
> Actually I am trying to compile our own toolchain by applying our board specific patches to it in yocto . But getting error (attached error log) while running gcc-cross-initial for 4.6.3 toolchain .
>
> I have removed some patches to make it compatible for my own required toolchain patch versions.
>

what are you trying to achieve ? and what version of yocto are you
using. There has been changes in build sequence and it depends on
which version of compiler. So you cant retrofit any version of
compiler with any version of Yocto project with out
major rework

>
> I have changed SRC_URI to download toolchain 4.6.3 tar and removed some patches applicable for 4.7.2 version of toolchain and added my own board specific
> Toolchain patch. Its applying properly but at the compilation time gcc-cross-initial fails I am not able to understand the reason.
>
> I have downloaded binutils 2.22 version for specific to our toolchain patch of binutils_222.patch and removed some patches compatible to 2.23.1 version of binutils .
> Bitbake binutils-cross works fine removing some patches
>
>
> But when I compile bitbake gcc-cross-initial do_compile failed .
>
>
> 1 I am not getting if I want to compile and install my own board specific toolchain I have to run only
>
> Bitbake gcc-cross-initial
> Bitbake gcc-runtime
> Bitbake gcc-cross
>
> 2Please tell whether the above three bitbake commands all are mandatory to compile and install my specific toolchain or which command can be skipped.
>
> 3Please tell its dependency on newlib eglibc uclibc etc I am confused on all these things
>
> 4And please tell the mandatory changes to made for elf toolchain and linux toolchain respectively.
>
> Thanks in advance!!
>
>
> Regards,
> Rohit Jindal
>
>
>
>
>
> ===============================================================================
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
> ===============================================================================
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

