Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B25D8E003DB; Thu, 25 Aug 2016 11:28:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0643BE002AC
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 11:28:26 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id 2so100198uax.2
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 11:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UOVvDEfirlnxHZJ5jO0wY9PhjFLOiubS3Kx6gxqMW0Y=;
	b=lFdgZuBQcIP76wfrrLvuccYZRdfzxOAoSEE872qSSD+M/csrChkJNo1EJHyvnu/1P4
	p8X+xlYfr1uLpn0FXD3yQa9G8vaZL5F19psDxL7c96IbPVcXHhvCUZ7ZNq1Qvoouirc4
	c3qk6aNN5MHzrIzbAwslNp8wj2U+Gc/7NdOpbPwlbtVVQvi8Rmf0Pnm/f4Kjnjwl0qj5
	/S0k+PCcVJtfwufY4+xdMzeaGlkoY0Yv1+npzWbHse21o/BiZSBlWq0gruNt1FXwmnaG
	1+vxfXPYTm5CCPI6XOG1CuSIQowOJL/ECzgW5VP5Lp6mC7qsv5FtAfMk+ksE8UzzICet
	EkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UOVvDEfirlnxHZJ5jO0wY9PhjFLOiubS3Kx6gxqMW0Y=;
	b=FFox9ancP4TYHU2ehscGOp/NkY9pAChJr4Kwi9XFCUB80TKpIFA1y/8zBbmFFjPkzK
	79NB0NTM8R6/ec3BwrJQRSuGXg8c8DBgrLgEx8cb0/YYwgCpBRWf+KfXRElX+TM/2dpY
	CsEkoLIrVFtYHU/NqqLkZtiOyBC/k3bkHrdZJXVoUhknHxQTomK01GJU5cd00fF1pdMp
	dt2GdgxuKHH9soDHg/8oEkM+TkreMtDlfVs3cxSteovSY6B7dDUGqHVJneiX5gvXMss8
	nNFfOZLICovAFljKrbn+3SLoPzRTmCPhcJHNHUV+UQJveKwMQYamQNvybnZvh1U6xSmK
	ohNQ==
X-Gm-Message-State: AEkoousFXI99JXEgQ/Y4RmHwnnfNct6YFuD4vSBNhH0KaZqFQ8x4EPaq2aNSYC64BrEBxAZPFTJppv7NIwHZTw==
X-Received: by 10.31.227.196 with SMTP id a187mr5508161vkh.89.1472149705909;
	Thu, 25 Aug 2016 11:28:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.64.138 with HTTP; Thu, 25 Aug 2016 11:27:55 -0700 (PDT)
In-Reply-To: <CAPSYY_TjsenT5D1vkPCY9ZUFSSZ+zgsVPdwbyrqvNGU85m=d5A@mail.gmail.com>
References: <CAPSYY_TjsenT5D1vkPCY9ZUFSSZ+zgsVPdwbyrqvNGU85m=d5A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 25 Aug 2016 11:27:55 -0700
Message-ID: <CAMKF1soTs6DMGMOc86hsQSic+1tDCU_Leb7aPbMFwZ3ZaiDh3g@mail.gmail.com>
To: milad hasanvand <hasanvand.milad@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem with yocto and qt5
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
X-List-Received-Date: Thu, 25 Aug 2016 18:28:27 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 24, 2016 at 2:26 AM, milad hasanvand
<hasanvand.milad@gmail.com> wrote:
> Dear all,
>
> i have frustrating issue with compiling qt5 using yocto and it is definitely
> going to kill me.
> i am using qemux86 as the target. i attached the bblayers.conf and
> local.conf. i also added the -qpa eglfs to packageconfig but it fails when
> it comes to do-configure task of qt base.

How does it fail ? perhaps you should share the logs and messages so
someone might
relate to the error

> please help me out because it has almost been two months since i stuck with
> this problem.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

