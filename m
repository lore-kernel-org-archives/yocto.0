Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11DD7E00D50; Fri,  3 May 2019 02:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 777C2E00D3F
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 02:16:22 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id r10so4618197ioc.8
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 02:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9lb+5ojp7bZAqiqm/gv2E6neM5X+g4ip05lps26urxI=;
	b=QfxrfwlBbCC4lN7EVQgTpluKe8CrYNeevcCkq7xDUxvKulBWoju/KQwNKAroOjVyP2
	8y6a2ZNP0fnYVdjPCSVoinFjurSM3ZBOaeKZLGscJkJH1yk4j1Nsxxar5b/ceEcrQznE
	gCCsKKE2umBgEct88McPIfikIl8Ey2k5aoECC5GFp5WI1xEDQJRohCr/58YA0/T8FSAI
	eorylnH07RhbLUF8lzTypLQOmGRa+hqyL1liCvf3jaOizghGZxRaPhlIxRzsXG2JyXm8
	GlYGstC0WN0px5yj+jRVTFb68YmOJI4GP8SUN4qC1I27wtFcdd8uwfynHNCtfuS+DZ9d
	HMgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9lb+5ojp7bZAqiqm/gv2E6neM5X+g4ip05lps26urxI=;
	b=nvLR2ahXdYsWWZiyOmox4JCciH1sSVFRZjyQj/xZSjv1xZm3Te/+RdxeSqMpo0YBQK
	5D5rel/44Km+Cj/pUKl96DjbIkdZt2nNBzHTsZvN/I5TfqJsrMcMcYUsY5lSYJHsPw8z
	VwbFuVzPR4NUAIHxwv+UHZDZEQ8LzXybQdqU7eRitl+h7A8M1PstfGrCegMksHVZDZaI
	4/j4e7ZAy0ltEwecBNbWBVnRXS3oZwtS6MtfcUi2D5Dv+COknBCPqzuh1g/3etsKr1OP
	8nsThK1mRGytEzftP1qz71u2VMPYGqfcMk6THBFlZ2qmZQmKghX6WW43HnuYGGV3Gfnw
	jrjQ==
X-Gm-Message-State: APjAAAVViIHzfMRCLHPsmfmfQz2Or8e7UJyEQnqGcfr16aqolTxVUmOt
	A+AKZK35S/QuO3shLxr8mlN7n4y4G/u9Wbt3xAgSfhYu4nY=
X-Google-Smtp-Source: APXvYqwIDmZ44Eolsi2POVXASv0baZAt6esW+1lrmLUTw07rAs0CeWORM6F7uDgrLR5esynIutNtga0L0NQpdK+HZ8M=
X-Received: by 2002:a6b:fe0f:: with SMTP id x15mr6529115ioh.78.1556874981860; 
	Fri, 03 May 2019 02:16:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Fri, 3 May 2019 02:16:21 -0700 (PDT)
In-Reply-To: <1B42944FBA87A746A9D8A2C7197FD39EBBC758@SRVEXCH2010.CPA-GROUP.LOCAL>
References: <CAA=hcWQwNRM6M=vd82w=EbX2NGGyKcQ9tT-VC00A2a3KoQ_anw@mail.gmail.com>
	<1B42944FBA87A746A9D8A2C7197FD39EBBC758@SRVEXCH2010.CPA-GROUP.LOCAL>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 3 May 2019 19:16:21 +1000
Message-ID: <CAA=hcWSdQaUnsj6LvCY1J7M-=xwZrN3wgc-MgBNKTBrLPK2ZBA@mail.gmail.com>
To: Jaquier Cyril <Cyril.Jaquier@asyril.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto concept and support for dual version firmware upgrad and boot
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
X-List-Received-Date: Fri, 03 May 2019 09:16:23 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Jaquier, did you run mender in an embedded system?

On 5/3/19, Jaquier Cyril <Cyril.Jaquier@asyril.com> wrote:
> Hi,
>
> I've been experimenting with mender a bit lately. Works great so far and
> it's fully integrated into yocto:
>
> https://mender.io/
>
> There are a few other solutions available for Yocto:
>
> https://wiki.yoctoproject.org/wiki/System_Update#Comparison
>
> Regards,
> Cyril
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on
> behalf of JH [jupiter.hce@gmail.com]
> Sent: Friday, May 03, 2019 03:55
> To: Yocto discussion list
> Subject: [yocto] Yocto concept and support for dual version firmware upgrad
>    and boot
>
> Hi,
>
> Are there any Yocto recipes to support dual version control for
> firmware image upgrade and boot?
>
> The scenario is to make 2 partitions, one partition to install a work
> version of image, say v1.0, another partition to install a development
> version of image, say v1.1, the boot process should pick up the
> highest the version v1.1 first, if it fails to boot, it retreats back
> to boot old version v1.0.
>
> Appreciate any tips or reference for that implementation in Yocto.
>
> Thank you.
>
> Kind regards,
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

