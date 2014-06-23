Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5968BE00283; Mon, 23 Jun 2014 09:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDBA6E0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 09:22:29 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id 10so4950102lbg.9
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 09:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=F/4OY4BN1UuovXZ3tvwfDw/YF3nJXwjsWLtPz+bQBYU=;
	b=tnHtx9gdUFz5+KQrs4qhYorWa5QU5FrhmwDcgpr11T/qVwh2wkveLyWtGxkpX7kKWn
	a1PLLlqwpjtni6uP0ahn8DHIsO81ro3GKWlwDDZRQ/kWINccIKdPcij+mLwd1iErUoKr
	YfzgtMRTJ3nFhGIn2SwY0blEbSi4h07xAO3QnE4e5mSQnH8Xn1qe8BCsEtw+zxT71nA4
	IM+I53XbeduFha5EjdxRB0XQdzNauwK5eAe+FDrLm68vVDOU8IgwMi9FW1rxC5KKmJ2n
	/V2i0CZSb0YWnNVkjxbx493XUFw4HqvdmoS6nQpK8P+Q9wAqy42mrYpdyug2X5ADxKjg
	lruQ==
X-Received: by 10.152.20.71 with SMTP id l7mr18114761lae.4.1403540548518; Mon,
	23 Jun 2014 09:22:28 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.89.135 with HTTP; Mon, 23 Jun 2014 09:22:08 -0700 (PDT)
In-Reply-To: <53A62476.2080008@gmail.com>
References: <53A62476.2080008@gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 23 Jun 2014 09:22:08 -0700
X-Google-Sender-Auth: o_CC32UFbJuSuPr1wMel1BXoy5A
Message-ID: <CA+YB3rZA0kWfN9_631N2R5EJO9Vg93_TAKcn++fiNxQFURwaLg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto Labs
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
X-List-Received-Date: Mon, 23 Jun 2014 16:22:34 -0000
Content-Type: text/plain; charset=UTF-8

Hi Arun - this page contains some of the hands-on labs we presented at
YP Developer Days, with the kernel lab very recently updated:

https://www.yoctoproject.org/tools-resources/training

hope that helps

On Sat, Jun 21, 2014 at 5:33 PM, Arun Kumar <arunkr.linux@gmail.com> wrote:
> Hi,
>
>     I am new to Yocto project and have been following the documentation for
> familiarity.
> I am looking for hands on lab sessions for the yocto project.
> I am unable to find the same on INTERNET, all i find is conference videos
> and presentation.
>
> If anyone can share links to online tutorial videos / pdfs it would be
> really useful.
> content like creating and deploying own recipe files, layers. The
> Documentation describes these tasks at a very abstract level, an little more
> advanced version of the same would be appreciated.
> Thanks in advance...
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

