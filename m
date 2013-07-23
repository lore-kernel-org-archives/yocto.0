Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1459E0145C
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 03:27:45 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id cy12so199510veb.5
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 03:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=EJBOq8jci/kvAJbCAneuHlaxSqucXtzOIw/xS5XJEgo=;
	b=hdYwd2wrSHJLT5/URWaPdyQbymO4nQ+bx/ULHO2EMnzphVqZfjKgYtQbNjoy85i11Q
	twCPvn3luk+4eF3Xu9bjsRf4yVtuWEG7kZpuEDlRut5FjBPwreg5kRTLXlot5NkZy/W7
	L+rvTjwysU5pNEoJ2UaXQtyScl3KxuX0ylR5gTSTjF6Xiu5iRRkGfbA9cNqNX2yV/eix
	nO8PbyOlQJK0PtUGixaeAGEQBNzZyx+0cOiYueh7AK1EPKNIm9LozzuhqeAgKGfzfGvG
	h4b5xfsJKZkCJRQqxLaU3rQFtsXXDfaHH1jNl4DJbJQCuD6cN2m9OjCd/xJQs8OLgPvK
	ff7g==
X-Received: by 10.52.66.242 with SMTP id i18mr9018667vdt.3.1374575264694; Tue,
	23 Jul 2013 03:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Tue, 23 Jul 2013 03:27:24 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E6AB4AB@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<6D31A433FC4A6747B1AD836EB116AA2C02BF6508BC@AUSX7MCPC110.AMER.DELL.COM>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101B2@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<687289320.4zlV4NqfiV@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E6AB4AB@BLRINMSMBX01.bglrodc.lntinfotech.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Jul 2013 11:27:24 +0100
Message-ID: <CAJTo0LYspNzMxA6okfmyyM30H_6CJ=Zr+BJZkkoO1kaFp6=F8Q@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
X-Gm-Message-State: ALoCoQmoGQ+KK4lH7vWXRU1AUUzu3mzzdVfrMtH2QRsMVS+5X6mBq7NmBZ/HPfT6567wLcCEY9Z4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Regarding offline build
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
X-List-Received-Date: Tue, 23 Jul 2013 10:27:46 -0000
Content-Type: text/plain; charset=UTF-8

On 23 July 2013 11:00, Amit Kumar <Amit.Kumar@lntinfotech.com> wrote:
>         Please find the error log in text format.

It's trying to download quilt, autoconf, etc, so it appears that you
either failed to download all the sources when you were connected, or
your build configuration isn't finding the files you'd downloaded.
Did you run bitbake [some target] -c fetchall?

Ross

