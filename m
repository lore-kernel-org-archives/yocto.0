Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FFD6E00A0C; Mon,  4 Feb 2019 11:32:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E79E2E0048C
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 11:32:53 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id t33so1265763qtt.4
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 11:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Sp4RECid2EiS5LNSe2ODlBsLwg8jfVBBBlsEbw2dsP0=;
	b=MOI4UfqAheAciS3s0veB6Vj+mjXSbm8Qr7wM60PoBbkd8Yt6FClTvy+q8/m+5cvulp
	cqj7m3uLlDGLu6Ewuiwp1jPn5VT8nZNAoNx8ilcOtkVc7ddbYV3yKrCCZyuZBiJNJ/wL
	OF1bO4ufjDTWaRyQBkoROR87Bcf5tBr/LoYSUFjdOyOgTu0KfOfZC4QnDkVWhcgsbiOS
	uuqZcQcn/KHWMZeHweMThHZB7Pd1g/ZCEpyGMOJAG9XY0Sn36++i1YYX+AFtbHENdT96
	zfmcnZuqv9JAVvfiBXvMXqcCGHsuDxDRBMLTL+HD+XIqxUvrN5qJCwM6x53AIdc5zVWv
	99tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Sp4RECid2EiS5LNSe2ODlBsLwg8jfVBBBlsEbw2dsP0=;
	b=BYfyNu4HdUbSdLizo/uKYAHsL//d0JMFnho6xOQETTbj88c+cp61AfOjvddN4sr2IL
	4IB5qPnhtFviau5npigcG9RTmfP3HqGUbJMvozww0hcXwxvpMJAslBZZZQuFK5tAWXtn
	th18utaA5rIxBv1SpB6aNSPtN6kiU5jYrNXNCdWvZEjECK4u0yjGtMbDr0ko+XCPkKvs
	tmGZebMqlzAqQAp5gYcmiXZLRRCml2PaWqSY1wQQygrazZVGjQm1o4ie+09YhBDH/KLo
	Ha5nrnhBahh8astPOukEbdnpviVXXP1M4G6Do8FX5wQDArDLwjxVoP6iIT5cGWZ5qQrz
	cvPA==
X-Gm-Message-State: AHQUAuYaRwVvVVOBatE2gIDW2hMarbie67L8fyvVSjeG12EvgQ3Nwaie
	CFmifRiSLaeRFgN0WxnO+9EV/r9VWAeA0heJELc=
X-Google-Smtp-Source: AHgI3IZ/JfzCox6WDHr8SB5r1G5ha8GoY9sBJhso/Ad3AULj7VEAoZa62s0tXafPI30dXrG6dOF4iw6D7e0EvfO5G98=
X-Received: by 2002:aed:3a22:: with SMTP id n31mr786207qte.29.1549308773098;
	Mon, 04 Feb 2019 11:32:53 -0800 (PST)
MIME-Version: 1.0
References: <BL0PR11MB352483DCBFDE53F27A888120EB6D0@BL0PR11MB3524.namprd11.prod.outlook.com>
In-Reply-To: <BL0PR11MB352483DCBFDE53F27A888120EB6D0@BL0PR11MB3524.namprd11.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Feb 2019 11:32:26 -0800
Message-ID: <CAMKF1sqD3YUrR13sXYZ5H6+ZSdcVivWd9mAtXopTUyk-AmizTQ@mail.gmail.com>
To: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sun rpc missing in thud
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
X-List-Received-Date: Mon, 04 Feb 2019 19:32:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 4, 2019 at 10:44 AM Beaman, Thomas <Thomas.Beaman@xerox.com> wrote:
>
> Hi,
>
>
>
> I am converting to thud and having trouble figuring out how to get sun rpc to install in my sysroot.
>
>
>
> I can see that the sun rpc files are still in the glibc git  but I cannot figure what recipe or options I need to get them included in my distro. (I still have some old legacy code that needs them)
>

is it possible to move over to ti-rpc ? we have moved away from built-in glibc
version of rpc and replaced the need with ti-rpc, you might have to explicitly
enable it via a glibc bbappend and take care of packaging and
potential conflcts with ti-rpc.

>
>
>
>
> I have tried adding the following but they do not bring in the   usr/include/rpc/rpc.h files like previous releases did.
>
>
>
>
>
> IMAGE_INSTALL_append = " lib32-glibc-dbg"
>
>
>
> IMAGE_INSTALL_append = " rpcsvc-proto"
>
>
>
>
>
> Any help or suggestions of what to add or modify to get these files back in
>
>
>
> Regards,
>
> Tom Beaman
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

