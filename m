Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD04CE00DFC; Mon,  9 Jul 2018 11:16:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45520E00DF8
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 11:16:03 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id v8-v6so37650466oie.5
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 11:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sb/XUUG+uuFRGsgGmsYI1PIR9yNIcMyfQMvgNKLq3RM=;
	b=Yvicpw3McBXyHItIS/b1dNntET7a+NJ+HbdzwBPUPPpqZoCZ9YGxMijekzHBEqGy+X
	YmLCqoCbo86gQXCJW4ArIGeSunCvRywVuCjlFH24AHNI4voJSNB7TCYjqJl00ltdNrmR
	DzdAs5LqIDeZo/yFUhsA4ULxk3ttKfcapsF8Mmcg3gDGLhnjZdX9zu4mnUt1kOffHuy/
	y2sWCUpGegTwrjK4U9wBUZjTgxfEBxA5BY5oFIWx2d1fKGEr0k6bgpoH9G2GuBCmM33m
	HeLX9BLAxxpKyF60xAxzr2YXCJuQGgzO4jdZJni6OZ+FEq0fBdGfHQg79Unzr/4UpxG6
	4MHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sb/XUUG+uuFRGsgGmsYI1PIR9yNIcMyfQMvgNKLq3RM=;
	b=lUg7uDJCg93v6UGn6d0s7PfeeXXDEi+WwomMWxHW4UTMja5andq4PGBMFuTfzY25GL
	ln5HlK6W708gQnpcHzfBLCV98tSI6cXLbAGcTQ0MZ5fTx/VQ0YRq2M+ftZvqX9xPWuUi
	2hlfpnIOHlBV5zzl/CxSRB1+VhYim7Ut9xKtoncFRTvOZXqM1rzYXOu4QyBa0LaHJNag
	lFu5Q4pMYSsZMoWJWXEGbVgtf801U2s3I14COkyfMjr7YK9vINA/lT8YioE3CsOSFQcv
	ALm7braUt56VQng42T57e+h/jM8DbBalQ4sliSOyaCTS9QQyNMZeyhCR4sAwCHCQuAcI
	v6xg==
X-Gm-Message-State: APt69E3oHbBYOiCqtNYKwOnKAAhkJ3NJN9KXGa3NWq9oP+zkON3aPOtM
	+u8im5i6OLEq6cCrQ2vZN+uSPHCBJJ5RgPsJOTl88w==
X-Google-Smtp-Source: AAOMgpdy4c1uxorLshP0dEGryjFOrhu6ar89woXl6Phy8t6JQ4vA6rmVr8OIMr2nOsAHnq+s8x3o6CtKXMmZkSO9eCw=
X-Received: by 2002:aca:5754:: with SMTP id
	l81-v6mr25886376oib.100.1531160162652; 
	Mon, 09 Jul 2018 11:16:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 11:16:02 -0700 (PDT)
In-Reply-To: <MWHPR19MB11839AC75D87A6A0C38FE263C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
	<MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZsUwJYTyC5dtk_aO0S3nEVhdcHboxnGTfYmi7JMenfZA@mail.gmail.com>
	<MWHPR19MB118360BDB9585099B356D139C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CANNYZj-_YFCV7D+aY8kswVzs1Z0-Wjej7LDQiL0qvEiF9mnnSQ@mail.gmail.com>
	<MWHPR19MB11839AC75D87A6A0C38FE263C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jul 2018 20:16:02 +0200
Message-ID: <CANNYZj-FRfjjX8N=wRO+J0U4v98yidwXKSoLvLCaaaunXaNBxg@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Mon, 09 Jul 2018 18:16:04 -0000
Content-Type: text/plain; charset="UTF-8"

The error message you've provided is caused by an openssl header
referring to another header file that doesn't exist. It does not come
from application code, but is due to openssl being incorrectly
configured.

Alex

2018-07-09 20:08 GMT+02:00 Raymond Yeung <rksyeung@hotmail.com>:
> You may have missed one of my emails (still included here below) w.r.t.
> where the issue came from.  It's coming from application code outside of
> Yocto that is built as 32-bit apps, while Poky/BSP are built in 64-bit.
>
>
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Monday, July 9, 2018 7:31 AM
> To: Raymond Yeung
> Cc: Burton, Ross; yocto@yoctoproject.org
> Subject: Re: [yocto] How to remove openssl from sysroots
>
> Just fix the build issue. Look into how opensslconf.h gets created and where
> the -32 suffix comes from and why the included file is absent.
>
> Seriously - that is less effort than trying to make Yocto do what it really
> was not designed for, and certainly takes less than one week to resolve.
>
> Also, you do not have to use core-image-minimal or -sato, or any of the
> standard images, if they pull in things that you do not want. Write your own
> image recipe, and specify there precisely what you want.
>
> Alex
>
> 2018-07-09 2:32 GMT+02:00 Raymond Yeung <rksyeung@hotmail.com>:
>
>
> + yocto mailing list.
>
> ________________________________
> From: Raymond Yeung <rksyeung@hotmail.com>
> Sent: Sunday, July 8, 2018 5:31 PM
> To: Burton, Ross
> Subject: Re: [yocto] How to remove openssl from sysroots
>
>
> We're not going to integrate everything into one homogeneous package.  Poky
> and BSP would be together.  Then, we've application codes that we'd build in
> the same old way with SCONs the way we do before.  The two parts would link
> together.
>
>
> And we do have a number of 3rd party vendor packages beside openssl.
> Currently, the issue with openssl is that, we run into build issue with the
> version we got in 2016 release.  See this:
>
>
>
>
> In file included from
> /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/include/openssl/evp.h:66:0,
>
>                  from src/infra/utils/obf/cv_obfuscate.c:20:
>
> /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/include/openssl/opensslconf.h:41:36:
> fatal error: openssl/opensslconf-32.h: No such file or directory
>
>
> We plan to use 64-bit kernel, and 32-bit applications.  Perhaps that
> explains the issue above.  We don't want to spend a lot of effort doing
> porting simply because we adopt Yocto.  So ideally, if we could remove
> what's in Yocto, we could integrate our apps with our own openssl; no
> changes, including upgrade, would be needed.  We'd upgrade when we're ready.
>
> Another question from my team is why the "minimal" package includes
> connectivity, which includes openssl?
>
> Raymond
>
>
>

