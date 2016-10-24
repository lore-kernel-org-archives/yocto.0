Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4F75E00AD2; Mon, 24 Oct 2016 16:07:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 413C9E00815
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 16:07:28 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id 6so1659742uat.1
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 16:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9g8OAq+NT/QaW+1MDS9FiCMwvtnrdBN/HZKcXM/eaos=;
	b=kKABi/9e2EjHHp9DjEWEParbdiJqjksj/CmgT0DV8QXu3FjIdvEnhc7CTB+J3JW6kR
	2lGRq0yugGJYygWow7QyDhStSorBcqPEBMA5SXklgMmSbDXKA42gS4Sa7bTt63+jFzf8
	a+avwPipQGpuS4KwpGtcxk5JDoZQW3zwu9CsZjEKsABU5KLP52aBkOzATvyZNyyc/IUD
	r5tW9j0DXlvGpFX+qeNDEFgwNePq85Lp8sZL8FKPBtEEyYq4wHdMsUtWgxyNEtPWO6qU
	DPIo2Uby/kujmMClMabvBjcgiOfHgouUuc9kehPFjdmQDtgZTiKf704tdaC/F7ztzm/V
	Qsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9g8OAq+NT/QaW+1MDS9FiCMwvtnrdBN/HZKcXM/eaos=;
	b=e1JckuvCjA+s1q/SsCGatAZahwvV1yu+yIk6EyX/IOxMGrFstnHcG0BM9EtqE/6FCd
	8qWlrPCPJu37SKxarLHpui45RnENzGqgi+rHD75k5LHebKUY1Y97NrAAP0L5xpKRaKnD
	iV+9xGO/kmm87cYMCizO/Vo40UF2tK4QiOfHUnKVAJ3/nIBscWtQIQyUrhQsdZpob9Yk
	cKtD2yKFdhTgA9n7UoMmJIxQqxfNyoZqZWkF900Z7IJ+P6dVw1zj8NcEYgYsqyqfvRPa
	CkTQ3lymb8raVQzW7DemcPBAfK+j1S8BHwmexzktMuqJJEqb+3V9v2D+oIgWfRDhENlJ
	motw==
X-Gm-Message-State: ABUngvcJH+ZJwzxTycwQa3Dtep7Pq0wkttBPxWtVBXzXn9UfKHmLXluYLEM0hjTwYTPwYceSUqxstheXB4THqA==
X-Received: by 10.159.38.230 with SMTP id 93mr10246318uay.138.1477350447841;
	Mon, 24 Oct 2016 16:07:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 24 Oct 2016 16:06:57 -0700 (PDT)
In-Reply-To: <20161024092819.18559-1-thomas.perrot@tupi.fr>
References: <20161024092819.18559-1-thomas.perrot@tupi.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Oct 2016 16:06:57 -0700
Message-ID: <CAMKF1srR4fx7JBwMAPW95TZL=NjG71pjNap=YJU5HG_s+52UEw@mail.gmail.com>
To: Thomas Perrot <thomas.perrot@tupi.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-measured][PATCH] Fix tpm2.0-tss package issue: libraries are not ship into the right packages
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
X-List-Received-Date: Mon, 24 Oct 2016 23:07:30 -0000
Content-Type: text/plain; charset=UTF-8

2016-10-24 2:28 GMT-07:00 Thomas Perrot <thomas.perrot@tupi.fr>:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> index 453523e..175d36b 100644
> --- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> +++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> @@ -40,28 +40,28 @@ PACKAGES = " \
>      resourcemgr \
>  "
>
> -FILES_libtss2 = "${libdir}/libsapi.so.0.0.0"
> +FILES_libtss2 = "${libdir}/libsapi.so.0.0.0 ${libdir}/libsapi.so.0"
>  FILES_libtss2-dev = " \
>      ${includedir}/sapi \
>      ${includedir}/tcti/common.h \
> -    ${libdir}/libsapi.so* \
> +    ${libdir}/libsapi.so \
>      ${libdir}/pkgconfig/sapi.pc \
>  "
>  FILES_libtss2-staticdev = " \
>      ${libdir}/libsapi.a \
>      ${libdir}/libsapi.la \
>  "
> -FILES_libtctidevice = "${libdir}/libtcti-device.so.0.0.0"
> +FILES_libtctidevice = "${libdir}/libtcti-device.so.0.0.0 ${libdir}/libtcti-device.so.0"
>  FILES_libtctidevice-dev = " \
>      ${includedir}/tcti/tcti_device.h \
> -    ${libdir}/libtcti-device.so* \
> +    ${libdir}/libtcti-device.so \
>      ${libdir}/pkgconfig/tcti-device.pc \
>  "
>  FILES_libtctidevice-staticdev = "${libdir}/libtcti-device.*a"
> -FILES_libtctisocket = "${libdir}/libtcti-socket.so.0.0.0"
> +FILES_libtctisocket = "${libdir}/libtcti-socket.so.0.0.0 ${libdir}/libtcti-socket.so.0"
>  FILES_libtctisocket-dev = " \
>      ${includedir}/tcti/tcti_socket.h \
> -    ${libdir}/libtcti-socket.so* \
> +    ${libdir}/libtcti-socket.so \
>      ${libdir}/pkgconfig/tcti-socket.pc \
>  "

usually its preferable to have a single -dev package, I think you should
go in that direction and consolidate these into one

>  FILES_libtctisocket-staticdev = "${libdir}/libtcti-socket.*a"
> --
> 2.9.3
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

