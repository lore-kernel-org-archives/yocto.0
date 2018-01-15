Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B659BE00E14; Mon, 15 Jan 2018 12:01:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF956E00E1E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 12:01:16 -0800 (PST)
Received: by mail-wr0-f174.google.com with SMTP id f11so2454737wre.4
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 12:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6Gv9yvoEDFOwiKg7mLSj3abFwNB19pr5YJJKILJS7rk=;
	b=va5zx0ISe1YcqzbhCnomSH/Vu59mzlNySOjxZzethHqHLvdR0o6mVyk2O4kOzFJNk1
	cLknPkzGFS1tZ9gFjlntznJgtN7tswkxzErUStcLuBYIE/kFqcbWLn8ppiLuXaX7WeP0
	EBb21DqEAYHFxUsjld3+5sKNTejgG0ZaGsbXsP5UX7coEJe/Y/dIJP5/1OMAyKxlG7TJ
	4gMQlTTIjp5FGCYtGApCJ6rM+QIwinDwN+WzWy1h3RSNBbgZv54nas6JOol6HeVZ/lrl
	qUsecQkkptYclpDDekKHSzBiQb+Q0wJDTSqinqdchkDtZnRCSsggHO9PPfb78PvY3EVt
	d85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6Gv9yvoEDFOwiKg7mLSj3abFwNB19pr5YJJKILJS7rk=;
	b=VV9hY87RrepeBoPpRzJJK7R6gLO4bERYXhUmMP+AOJ9zcjU6nYzkAkqxt3Un5IkuWH
	+HIysahzhDhq5fRt9WFs2EWK14ibWKda0Tl2NlgZDWCkaplht+w/J+gDIxpQRBvfzLFz
	yVA+ENJy4AMoOEmB6TfZLvqinpSXfQ5urvj8n2ncwE2T1XHgUd0MehF7VoZ+AvqfoMLk
	kiBxiyPT4JnsZ9aVHDai288QeWumyObhTBui9pLIVgkx3BfVJDL3/V2+RHzlDQlyVFDT
	cwtvE0p1YAn+1Yo1qU71kzcfLqEOdox50jB3uo9Xr2CmTTTDUM/hOWb+JyC+u7hlYxna
	Lmmg==
X-Gm-Message-State: AKwxytdk8IDD2eNxe8M9FQjZfmk7OkfTT5ISxX80IZb9C2ldrjTvUECa
	1WrO3ms1xgFj+9qEIyN7UKThmUDz7X0RjR5gwFU=
X-Google-Smtp-Source: ACJfBotyq0QgrKf6v2fbf6QfTL7xFfcelOQ8cgMYeHX5FNPJTy6mShS2jXHDRzb4USLvfS909dnLOHeuZoHqxZ0jd3U=
X-Received: by 10.223.188.18 with SMTP id s18mr10883111wrg.226.1516046475466; 
	Mon, 15 Jan 2018 12:01:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.190.132 with HTTP; Mon, 15 Jan 2018 12:01:14 -0800 (PST)
In-Reply-To: <092e01d38e13$32290bf0$967b23d0$@ln-systems.com>
References: <092e01d38e13$32290bf0$967b23d0$@ln-systems.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 15 Jan 2018 12:01:14 -0800
Message-ID: <CAJ86T=V6f6UzzQcj9PFcGLmUaUxWAUY_Hrn0VSabvZ076152pQ@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: PROVIDES problem building u-boot variants
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
X-List-Received-Date: Mon, 15 Jan 2018 20:01:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 15, 2018 at 7:12 AM,  <colin.helliwell@ln-systems.com> wrote:
> Let's see if I can explain this well...
>
> I created a recipe to build a u-boot variant (for prod'n programming) -
> "u-boot-PLATFORM-mfg-sec.bb" - which has :
>
> require u-boot-PLATFORM.inc
> UBOOT_MACHINE = "tx6s-8035_mfg_sec_config"
> SRC_URI += "file://tx6s-8035_mfg_sec_defconfig"
>
> And 'bitbake u-boot-PLATFORM-mfg-sec' works ok with this.
>
> Now I want to split this out into two different variants, for different
> cpu's.
>
> So I begin by renaming the recipe to "u-boot-PLATFORM_tx6s-mfg-sec.bb",
> But 'bitbake u-boot-PLATFORM_tx6s-mfg-sec'  throws:
>    "Nothing PROVIDES 'u-boot- PLATFORM_tx6s-mfg-sec'"
>
> Can't spot why this simple renaming is breaking things...?

You tried to use an underscore in the recipe name.

u-boot-PLATFORM_tx6s-mfg-sec.bb will be treated as version
"tx6s-mfg-sec" of the "u-boot-PLATFORM" recipe.

