Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04AB6E00AA2; Thu, 27 Aug 2015 06:37:03 -0700 (PDT)
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
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C971BE005A2
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 06:37:00 -0700 (PDT)
Received: by igcse8 with SMTP id se8so67349967igc.1
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jH60IFzeodfGlZOuqiKGeVd/zNNdnIKKQsBz8jKTHXw=;
	b=uUiFgoO+YMzYuoe7tgiHOYt1+2x0iBzuVUeZsmJHnjgFjmtjFKtE4FAXgETbZ9ZwyO
	qBoQ9K/ObkTm4G4wOLUBdFBSOZ+7kFr0nUIO7DbUeZJSExuhILuEBwhbVMz8Yz6JgXyt
	25h/e9BsSZROv0rpGaBQQmSldSZ6Ifu7wK6CINJIwZAjTlrP11MB6Sis82fZud33tzej
	l4OTQnW4+yes9O3jp+4l4EvjShiBSkZO4D0Dhk+2w6dN9RUm+7oswdnV/4veZ0KOdBbq
	/ycrgzooRBbbh0WwU0FfmiERd6easEX2Zd7MuAdmPeYQhfbSF+FQ2xmhgGh3JnKmSrB/
	IgYg==
X-Received: by 10.50.59.148 with SMTP id z20mr10336179igq.77.1440682619728;
	Thu, 27 Aug 2015 06:36:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.3.135 with HTTP; Thu, 27 Aug 2015 06:36:30 -0700 (PDT)
In-Reply-To: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
References: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Aug 2015 06:36:30 -0700
Message-ID: <CAMKF1sopvtB+O3p7v72dcLyMMUoaE2k+k5Ta9PjyjyYWOK58pg@mail.gmail.com>
To: Qiang Yu <yuq825@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to disable OVERRIDES temperally
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
X-List-Received-Date: Thu, 27 Aug 2015 13:37:03 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 27, 2015 at 4:40 AM, Qiang Yu <yuq825@gmail.com> wrote:
> Hi all,
>
> I want to load kernel module ci_hdrc_imx at boot time and add a conf file in
> /etc/modprobe.d. I find it can be done by add
> module_conf_ci_hdrc_imx = "my configure"
>
> But the suffix "imx" is in OVERRIDES, so I get
> module_conf_ci_hdrc = "my configure"
>
> How to disable the OVERRIDES temperally here? Or may be there is another
> way?

OVERRIDES_remove = "imx" in recipe might help
another case where we should rethink OVERRIDE syntax

>
> Thanks,
> Qiang
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

