Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC059E00BAA; Mon, 23 Apr 2018 03:20:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C58E00B66
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 03:20:51 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id h143-v6so10209759ita.4
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 03:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kApRT56Y5jN2gp1Vj2mCMSZdrRnuU3RC4AujztPO2Hc=;
	b=pEanp1aKDGYdzJn7A/xLY9mSR+/lQkirG1Vh/4O7/+jnGaBXjY0faZbC8tFiysduX9
	kxqdLHjcvar1355mhONYQRH0Xh5VRrGHmLZA0lo1tonOU+LyQVvH3Lh8mZndupJyTJ8x
	YeNtYDkhbx32UVMUoWPrPZEw12sznnovjlTV5rRZubfEUCQMR4TnTTe4EBGNRylJPRjM
	iwGyctACvR2Ksx+wfnG1akuqDqj6kLFHDQgdupfl6NhPAJ286mUHWRTJN8F3vqdtfOwy
	by4xnRSRNuLuXGDpwVI3GMQ2fExUm6p8+pwOce8HwGzz6DZENPAe69JGNUE9pdeibWd3
	NbMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kApRT56Y5jN2gp1Vj2mCMSZdrRnuU3RC4AujztPO2Hc=;
	b=EaQIAXvhojHSkcZBlS8oCPhLEu7Yn0zMLIYQUXDTwexdHlbuZzQlWQC3wHe2xxeDDU
	VR3AtRhJ0hR3RxjD+SG+luzzlwMkEOyoOBSyj47K/0uXWv87cW87wx3WZqZP57x+FoTL
	Ddwz72RFuXflkJj1PstZCYGt0KvNp5cAwavQTkFqNIFAdzw+i8wwT8h6sUJ+ULC9Fffn
	n8NJRsj9om4+IS7cpZIgKwpTy5QUmBX8ytw9YBeGAM+1+KaU77XayH7AUGIJ0cxClHVd
	d0rf0WXQDb3PziVVrzWc8HoNHrnOzQyos9wQpO+8evrShdyyj13X0+GOMf6FNZBL1YN2
	jc0g==
X-Gm-Message-State: ALQs6tDyHg1oIS6Y+x+egaEYc8mgqgNQrRjceDZmGcw9qHDifaBrDut4
	U+foWIOQnCR4FN9Ob4MCD1yPMw6JglPKMyD5tFqPNA==
X-Google-Smtp-Source: AB8JxZrlubi6E4Nh0Y5FLMtb+O69tGpIU9Gs5OnSOyHecD0KXugmE/sQHl8WnTeG1AdWmpjvqOiI6B9+h4hKojDBWWI=
X-Received: by 2002:a24:4414:: with SMTP id
	o20-v6mr13514188ita.60.1524478851201; 
	Mon, 23 Apr 2018 03:20:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Mon, 23 Apr 2018 03:20:30 -0700 (PDT)
In-Reply-To: <20180421013036.3425-1-pkj@axis.com>
References: <20180421013036.3425-1-pkj@axis.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Apr 2018 11:20:30 +0100
Message-ID: <CAJTo0LZQ6Oputf0xXy9acNBwzcAvVzFA8T49fdFYOCmVsDLcYA@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][sumo][rocko][PATCH] bash: Provide /bin/{sh, bash} when usrmerge is used
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
X-List-Received-Date: Mon, 23 Apr 2018 10:20:52 -0000
Content-Type: text/plain; charset="UTF-8"

Pushed, thanks.

Ross

On 21 April 2018 at 02:30, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> Most shell scripts have '#!/bin/{sh,bash}' on the first line of the
> script, which triggers RPM to automatically add a runtime dependency
> on that path for any package that contains shell scripts.  However,
> when the usrmerge feature is enabled, the path will actually be
> /usr/bin/{sh,bash}.
>
> So, to satisfy the runtime dependencies, add '/bin/{sh,bash}' to what
> the bash package provides.
>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  recipes-extended/bash/bash.inc | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-extended/bash/bash.inc b/recipes-extended/bash/bash.inc
> index a05b987..0f0d679 100644
> --- a/recipes-extended/bash/bash.inc
> +++ b/recipes-extended/bash/bash.inc
> @@ -65,3 +65,5 @@ pkg_postinst_${PN} () {
>  pkg_postrm_${PN} () {
>         printf "$(grep -v "^${base_bindir}/bash$" $D${sysconfdir}/shells)\n" > $D${sysconfdir}/shells
>  }
> +
> +RPROVIDES_${PN} += "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', '/bin/sh /bin/bash', '', d)}"
> --
> 2.12.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

