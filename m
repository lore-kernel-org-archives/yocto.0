Return-Path: <aguirre.nicolas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45E29E00B58; Sat, 24 Oct 2015 12:59:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL
	blocklist *      [URIs: gherzan.ro]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aguirre.nicolas[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED668E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:59:03 -0700 (PDT)
Received: by vkfw189 with SMTP id w189so79537475vkf.2
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wSRWRtjGt2NnGP1HOj17ado8uEKoiVQ+Q5jurY1CW04=;
	b=0N31PZ7+62/8oyfLcx/K/LDuTO6mFwa2A0yKyWp1QqbxUWr8jridzoosHg7Runr8gH
	YTh4aX+nCSFB39UXmQ3j8g1JkkSivphNxZ3oOzKXuTDYSME/uXBBEL8Mkbu0K8irIXaT
	pAVQ0Gbq8CVjEOeAa0LEJvuxKU6J6XaxylDupawo8oM3avWvbjFiTOCycm0oCP3UHaaW
	aicPD5y6gXCx4LhATHV1ndXByaXeHn4Lv3/KgR0Bku++5beG80ZttND4LmtQ5WXU1GHn
	BWFJcPRmu+4nPrC5Z2kOorgaFCrWRssK4tihDYugMuQxSs04lQiLx+ioANKRfsUgpKwC
	DdJg==
X-Received: by 10.31.180.1 with SMTP id d1mr18279898vkf.131.1445716742343;
	Sat, 24 Oct 2015 12:59:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.5.70 with HTTP; Sat, 24 Oct 2015 12:58:42 -0700 (PDT)
In-Reply-To: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
From: Nicolas Aguirre <aguirre.nicolas@gmail.com>
Date: Sat, 24 Oct 2015 21:58:42 +0200
Message-ID: <CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Sat, 24 Oct 2015 19:59:06 -0000
Content-Type: text/plain; charset=UTF-8

2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
> Hi all,
>

Hi Andrei,

> Have a C.H.I.P. 9$ computer? It works with Yocto now.
>
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-chip/
>
Good job.
IMO it make sense to add C.H.I.P support in meta-sunxi, don't you think ?

https://github.com/linux-sunxi/meta-sunxi

Regards,
Nicolas



> Happy hacking!
>
> Andrei
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Nicolas Aguirre
Mail: aguirre.nicolas@gmail.com
Web: http://www.calaos.fr
Blog: http://dev.enlightenment.fr/~captainigloo/

