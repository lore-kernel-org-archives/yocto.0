Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5075DE0095C; Wed, 13 May 2015 08:15:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1625E00820
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 08:15:43 -0700 (PDT)
Received: by igbsb11 with SMTP id sb11so47738668igb.0
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 08:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=TCfTtljoPY+qY/8Tgn4dniswgDf8rY4+ld0RFfoIkkU=;
	b=a1AR0bVK3StcwyTdnPgDTNaTm4ieTKtV/mcGn+NI9J9pgSE7p4bGEGbMCsSuOYEc36
	UOkXjXC/rQLw43M+mmUL9bLSqBwFSjO5FL3nC7S23GSvSFKJA94N8MNK+kh9/YF8DdzO
	26O0Fe8VxVX625WHfJX/NJrGWVRcdIUi8lESJsIu/UyjjcWDUqYGRaD1gwjo+m+A2EzO
	TGPrr4C1iub5rYVuzM8WL4QpG3yTmSpWIROHvDDZYRq5reC+kMm9c4lHXoQ3prq7h86U
	sZnFE0veZvaU/zYnaSEN/79d7rujqcODkHsi105pmWzi7FgELXMA6VZwY3vYADI4Jiur
	99oA==
X-Gm-Message-State: ALoCoQnezp9ZuxaRGSW4XanRhgWOkY7HjKf4VP8I5R/HH8LewbmFKWo8I3kGQQUoZeuGD0uxfFof
MIME-Version: 1.0
X-Received: by 10.107.17.29 with SMTP id z29mr27779580ioi.69.1431530143287;
	Wed, 13 May 2015 08:15:43 -0700 (PDT)
Received: by 10.36.57.134 with HTTP; Wed, 13 May 2015 08:15:43 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
References: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
Date: Wed, 13 May 2015 17:15:43 +0200
Message-ID: <CAFicg85TBM+o1BLWOXa0U5Gh94gqNwUda0aXH2hWo5uAQvPgQQ@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Mario Domenech Goulart <mario@ossystems.com.br>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH v2 1/6] oracle-jse-jdk: split recipe into per-architecture recipes
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
X-List-Received-Date: Wed, 13 May 2015 15:15:47 -0000
Content-Type: text/plain; charset=UTF-8

Hi Mario,

On Wed, May 13, 2015 at 3:48 PM, Mario Domenech Goulart
<mario@ossystems.com.br> wrote:
> Due the way BitBake parses recipes, including architecture-specific
> include files was happening too late, causing native variants to pick
> wrong include files, thus ending up generating broken content.
>
> Setting COMPATIBLE_HOST guarantees that native installations will be
> consistent.
>
> Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>

<snip>

Series applied. Thanks a lot !

Thanks & Regards,
Maxin

