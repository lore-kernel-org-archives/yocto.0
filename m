Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69C03E00C37; Tue, 25 Jul 2017 06:47:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43D3CE00B76
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 06:46:58 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id 184so16325772wmo.3
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 06:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0qdczDisgC/snm2R87yg+ynwEqfT7iMHkuSsj+jjSpU=;
	b=T6O980EndhfyXt8Gv6t9glHuBlOJsv1eWqhdrPb4NDsd/ByVf3Kik8twQcuPt4f4nV
	lMGc1XRvG8YcPONbKUC5pQeW/vzbvsX7+UEdSjtC5S3P98cIZGvQFmm97Iw6hHfz3uky
	OstRBzRjDEJrD+TK3rH3TBRlqcGtQIoEtPvcJnYEWUZMfC4jJUfXNe/ZVTCaMuZ8XEKQ
	gGUT6mxmVFHyFSd6DNxvxOxlOzaB4/896in7DT1SiIDrg3kFxBZegw8t3LrqOYluQduQ
	x5SDGR+gZtnBsjvnUx2+THuRfAyRw+Rwh+KzC9XtbZnFvKMgyiTmGALOtLU4Z7LHU//s
	T6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0qdczDisgC/snm2R87yg+ynwEqfT7iMHkuSsj+jjSpU=;
	b=cjKoVCXFO3RxEXoWjnlCKWMnc2Ys6hpdNH2aW33RbLfzmy3I//EuGrfhioeoKvaIzm
	UOLBx7xnJVNF07tQmQWV9ynPvCvgHDYczwXVszB7qjlACtsaD4E7c+/5QlkoRl/TeAEt
	hu9HyKJHoDf5krmOEk3dQHcUWXKEl4b0aLILpcxTC1QYYW8oavaxDjdM4HNqIf3pMBRp
	U7fOXbNXoN8DakvSa7Pt8epE8M5yRHNVgLdk5ZUk9WX3XmnsrVppa34qAGhEXIiehoM9
	7jkxhDAVQsyuqeoRPflPSJmUCrWLB9mU/Z8ONV9w8iVxWT32K0EqlHuvDOJbT9bCID/7
	blpw==
X-Gm-Message-State: AIVw113PCViQ7yRDcsQGz5AtgJruuRJeK0f4a9bWDM3rPiEBS1ObFU76
	UfYpFedifXKHMHZj19wgdE4m8wTszA==
X-Received: by 10.80.176.162 with SMTP id j31mr17708079edd.186.1500990418023; 
	Tue, 25 Jul 2017 06:46:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.181 with HTTP; Tue, 25 Jul 2017 06:46:27 -0700 (PDT)
In-Reply-To: <CAB_D2Uzyu8VaDu30ekK4EGk1_hw-fAtpXSDzR3kMD_1bA19ywA@mail.gmail.com>
References: <CAB_D2Uzyu8VaDu30ekK4EGk1_hw-fAtpXSDzR3kMD_1bA19ywA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 25 Jul 2017 06:46:27 -0700
Message-ID: <CAMKF1sp_w-ZzRPStkn46V29RiYYytEe6GvvAfHGnDzMRoamkeA@mail.gmail.com>
To: vr roriz <v.r.roriz@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Error] Conflict between meta and meta-freescale layer
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
X-List-Received-Date: Tue, 25 Jul 2017 13:47:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 25, 2017 at 1:29 AM, vr roriz <v.r.roriz@gmail.com> wrote:
> Dear all,
>
> I am trying to compile a core-image-minimal, using the 4.1-2.0 Kernel
> version. I am using the meta-freescale layer upon meta and meta-bsp layers.
> I keep getting the ERROR: Multiple .bb files are due to be built which each
> provide cryptodev-linux.  I already tried to wipe out the output /
> sstatechache dir, and call clean -c <recipe>, and also cleansstate.
>
> The conflict is between:
>
> /home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-linux_1.8.bb
>   /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb
>

I guess you need to select one of these two via preferred provider or
make sure that explicit dependencies on
each one of them are addressed to point to say cryptodev-linux only,
then make sure cryptodev-qoriq-linux
PROVIDES cryptodev-linux

in local.conf you can set PREFERRED_PROVIDER_cryptodev-linux =
"cryptodev-qoriq-linu"

> The output for tracing is:
> A list of tasks depending on these providers is shown and may help explain
> where the dependency comes from.
> /home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-linux_1.8.bb
> has unique dependees:
>
> /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_build
>
> /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_package_qa
>
> /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_package_write_rpm
> /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb has
> unique dependees:
>
> /home/vroriz/poky/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_package
>
> /home/vroriz/poky/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:do_configure
>   /home/vroriz/poky/meta/recipes-core/images/core-image-minimal.bb:do_image
> It could be that one recipe provides something the other doesn't and should.
> The following provider and runtime provider differences may be helpful.
> /home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-linux_1.8.bb
> has unique provides:
>   cryptodev-qoriq-linux
> /home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-linux_1.8.bb
> has unique rprovides:
>   cryptodev-qoriq-linux-doc
>   cryptodev-qoriq-linux
>   cryptodev-qoriq-linux-staticdev
>   cryptodev-qoriq-linux-locale
>   cryptodev-qoriq-linux-dbg
>   cryptodev-qoriq-linux-dev
>   ^cryptodev-qoriq-linux-locale-.*
> /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb has
> unique provides:
> /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb has
> unique rprovides:
>   ^cryptodev-linux-locale-.*
>
> BR,
> Vitor Roriz
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

