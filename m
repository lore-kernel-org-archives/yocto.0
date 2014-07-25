Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E485CE0079B; Fri, 25 Jul 2014 00:19:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F76AE00798
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 00:19:00 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id y20so3355210ier.13
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 00:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=j7xWNXLoqgAgrOdXLJQe+WfGs7J98CCGlQrQY09EmfQ=;
	b=jsvq0dRGQQYD1GIx5hn6mNosn7rYRHMfetrdglsVhFaYC4YuQAhNKaKQhezebhlLva
	PSHDZpTMq2vqhLRbaa3IVkKzoNVbIudAW6qlLyk0PHt+ZQ1U0EYvax+vgwXW0Oi2k/yv
	hy4fxLRwb+Ovnvb/JxMgfbBcBE9bgQOwhGHarSBkGSCWM8GJF2D324vg8Y3o5Gh71zJ9
	+8goDdJObjNkZK+PXf6ubJOKtZtt6N51qHSIGoQPYGb+H9m0uKXni4KytvNpLcZ0s9t5
	gFvTZorvRkf63mpVT3eaylXF0rWEa2mhsI2/XJcQhkR2gypdHPzkybmlC0oE6mU8WwFu
	aWZg==
X-Received: by 10.42.82.6 with SMTP id b6mr15330717icl.51.1406272739366; Fri,
	25 Jul 2014 00:18:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 25 Jul 2014 00:18:29 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F0721341564E485@NDA-HCLT-MBS05.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>
	<0f67aa20f48a45739d0815dc0b6c1d5b@EPBYMINSA0001.epam.com>
	<E4938C0D959B3445943720B88F0721341564DEC5@NDA-HCLT-MBS05.hclt.corp.hcl.in>
	<8fb545b8e4fb4b7790d7fb5036bafd74@EPBYMINSA0001.epam.com>
	<E4938C0D959B3445943720B88F0721341564E485@NDA-HCLT-MBS05.hclt.corp.hcl.in>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Jul 2014 00:18:29 -0700
Message-ID: <CAMKF1spj1hb0ck8uqH05AhDV_rtj_mYryNQLOBYDCPYJ39irsg@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding prebuilt binaries/libraries to /usr/bin or/usr/lib on rootfs
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
X-List-Received-Date: Fri, 25 Jul 2014 07:19:12 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 24, 2014 at 11:08 PM, Meenakumari Shedole
<meenakumari.s@hcl.com> wrote:
> The steps shared by you is telling about customizing the image on existing recipes.
> But I query is how to add prebuild libraries directly to rootfs.
>
> Thanks in Advance.

even though its a bad idea to package binaries but sometimes you have
no choice. You can
write a recipe where do_configure and do_compile do nothing and in
do_install you would install
the binaries into ${D}${bindir} and ${D}${libdir} as appropriate and
then create PACKAGES and use FILE_<package> to bean the files into
respective output packages.

