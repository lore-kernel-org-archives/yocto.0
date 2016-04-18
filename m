Return-Path: <yegorslists@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D38A8E00D9E; Mon, 18 Apr 2016 01:19:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yegorslists[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA34E0077F
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 01:19:13 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id e185so21803513vkb.2
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 01:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ycUn38Wq6GB+L4V/hfx31qFmb4ZocXjeH2ZjsSFI8ww=;
	b=JRek64VnfaWCWFOx9ingEjYTQ7DHP0foGAjyFqsKdyechkcyx6/kJK6zY82vCj2dhu
	woE80sgwZJs0R4jl6D6164MCteymINPN1DSiQ4nKzR1fZEl82qEU0TSDDZhNQ70nbnbR
	itfUoE26rZfalb3Ioz3EbQYt2rC+7Pe95t6m1VeNX42u58N8jcs95jth22TaB2ENsg0u
	63BAiWSrFpuy05ucWy0zEiIueT+Cp9nfUbqRRRaK2vz4Lsn2eFXU+qFcRmDSORNDgQne
	KqEVaTWpv2KlJBWATI0q23wWdSX/dXiS8XRdvnYPzAG5u9HCuP6udnn0CLqoG6ld9pXA
	+KHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ycUn38Wq6GB+L4V/hfx31qFmb4ZocXjeH2ZjsSFI8ww=;
	b=SXRRv77Am2fuVdNW0l+u2SdsUPmfQtGEJs4LPSz4tJ4r8Wf+fJODB//hh00+/crDG4
	kH+yLuw8et3S10+4wcj20hCU73xVUrnl7G7Hue1m9//SF+sQaSYOzivN4KhgMW1HpHqP
	QYrh2xcbQau57Cr1inqpl98PIkBCO9YBOpKHDlzqBQQZmuzLgWleBdqRbJRtx1GClnWx
	D9LVBb3JGxuiOvSboDno6YA9IGUPBUzj9XcNuQS3QYPpkUEXzEdnmqTRksqCr76XhUCC
	p2bynnN4+lR/rvyvvBoE8kmVe9UmVZVh/i/G8VEGQm280nZcnhYueN8/gTz1uSHUlN6Z
	eHOQ==
X-Gm-Message-State: AOPr4FVdeR4gu6Ogy5bBnPgcdATXM49QCsxoECtbdvifEzFQucN6sKdoEYMDE8NG4aflkT9kzMssowx+PQmuMg==
X-Received: by 10.159.35.130 with SMTP id 2mr3822535uao.107.1460967553009;
	Mon, 18 Apr 2016 01:19:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.190.135 with HTTP; Mon, 18 Apr 2016 01:18:53 -0700 (PDT)
In-Reply-To: <CAAfyv37XwvUv6Avy72E=fNi3hkRW6xonoowBTwbxvt17ERV9AQ@mail.gmail.com>
References: <CAGm1_ku6qF3f=QtkdhCsOtf2q1S-ceLLGGFn76+9=158wjP-qQ@mail.gmail.com>
	<CAAfyv37XwvUv6Avy72E=fNi3hkRW6xonoowBTwbxvt17ERV9AQ@mail.gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 18 Apr 2016 10:18:53 +0200
Message-ID: <CAGm1_ksiWzaxzD-HxH9pF+XJ312jXTvSRwDvc_VEpW05uO=omA@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Running an own script after kernel compilation
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
X-List-Received-Date: Mon, 18 Apr 2016 08:19:16 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 14, 2016 at 12:19 PM, Belisko Marek <marek.belisko@gmail.com> wrote:
> Hi,
>
> On Thu, Apr 14, 2016 at 12:12 PM, Yegor Yefremov
> <yegorslists@googlemail.com> wrote:
>> I have my own ITS file, that is required to create a FIT image. ITS
>> file has a special configuration, that cannot be automatically created
>> using Yocto's recipes. So I need a way to invoke my own script. How
>> can I do it?
> depends which yocto version you are using but you can use (reuse)
> kernel-fitimage.bbclass present in jethro.
> which will generate its file from kernel + dts you will define + with
> that its will build FIT image. But not sure if it's really what you
> need.

So, I've solved the problem via adding a task:

do_create_fitimage() {
        cp ${THISDIR}/linux-yocto-custom/kernel-fit.its ${DEPLOY_DIR_IMAGE}
        uboot-mkimage -f ${DEPLOY_DIR_IMAGE}/kernel-fit.its
${DEPLOY_DIR_IMAGE}/kernel-fit.itb
}

addtask create_fitimage before do_packagedata after do_deploy

No the question is, how to handle out-of-tree DTS files?
meta/recipes-kernel/linux/linux-dtb.inc won't copy DTS files to
"${B}/arch/${ARCH}/boot/dts/${DTB}"

Yegor

