Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43BFCE01073; Fri,  1 Jun 2018 21:49:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C3CE00A21
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 21:49:57 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id c128-v6so14967577oig.11
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 21:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=EPpWJZi5dQeyX3Y2ysmpM6elzCUKRpZ5HGjJ0x83jCo=;
	b=h2Cqo8Cn24z1yuW+9ZX/aZpfXc833ujoEtKbb5+mTZCaY3xw0NFlLiSXYLzdzxZ6Ah
	4ED8yklKWEm8jXKexqP3fR4kDEu+TzUlYOnuhpBC5zH4s7k4eq4zRbVNf/M/wtDFdGuV
	JKjSDu7mvc56FAgsUuAuAI0PYhT8wap7EoNCM2Im+KgPvkbMSylnR5nDazVzEtloVBJT
	46hbYA3wP926KC/N0l06wJunhlakiAImKA0XUdhKJF8689Ssenkoa+uhzhOdsalPOAP3
	FmsmKvhFrC/am6HtHmskK72334OlS49M48sZhj000kBl1LmtsabAHuLUtC4uPcAJAG6T
	WqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=EPpWJZi5dQeyX3Y2ysmpM6elzCUKRpZ5HGjJ0x83jCo=;
	b=L1x/WjWSPf+fOU0R6K10Ee3ikADARvhJL8HozQ4MbCyH7Tu7Mr8ZdHCtLCfXivVcjS
	dYqLYsTnWpT1GRYs+B61ekHF4DnqheBfX/Hxd07OUh79K1JRPsg6klbWSejsTEe8xrO1
	zSIk/gJlI9LQ2JRsHIAKvJnsa3L4AtKVakzGUjGz+40UXaGk1g5SAQke8dtUj4HhdJt0
	a/MtHRMGP/N9Iw0h/MYeNKmewikD5T+08ywus+42EzV3w1bgYSoiEtZ0PNtpnTdee0fa
	ea3JkG88Kj+2d3OE6dWlSC7uLflvtLX4dOUX7L+hVEezHhNRzuxpJ2KvvGI1pwYp1pvi
	f/8Q==
X-Gm-Message-State: APt69E3mcHtz/Mc2fX/H6XsYk1W6IEapBTbFQiWlWRCPBbGkDX243IKV
	i6LqCZnDmJhoELAIMc4HivRxjzRK2OqoRFnQAvcyjZ77
X-Google-Smtp-Source: ADUXVKKGQvI+RZITpNF3N5MuSSTA/Es+HNBrMzGzCKwQ/R0ppS8PnBYivD/Rn2aP9LItwy3UPYVUxckK09GQcSJe8SY=
X-Received: by 2002:aca:4957:: with SMTP id
	w84-v6mr5186440oia.293.1527914997075; 
	Fri, 01 Jun 2018 21:49:57 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 21:49:36 -0700 (PDT)
In-Reply-To: <CANge7vU376tuKnCGRVAU6i98a-V6nqxN7q8oy=gM0wTjfdn9fQ@mail.gmail.com>
References: <CANge7vU376tuKnCGRVAU6i98a-V6nqxN7q8oy=gM0wTjfdn9fQ@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Fri, 1 Jun 2018 23:49:36 -0500
X-Google-Sender-Auth: jiEgasrfIt_KWMMVlHdmkheHa14
Message-ID: <CANge7vVm5UELZEQu4KtdBuE+znbE_RiEEakUd_QMhKLqPMRV6g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-security] buck-security not found in STAGING_BINDIR_NATIVE
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
X-List-Received-Date: Sat, 02 Jun 2018 04:49:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 1, 2018 at 11:34 AM, Jon Szymaniak
<jon.szymaniak.foss@gmail.com> wrote:
> From my understanding, all that should be required to run the buck-security
> after an image build is adding INHERIT += "check_security" to local.conf. I see
> that check_security.bbclass [2] already takes care of appending itself to
> EXTRA_IMAGEDEPENDS.

To get this working I ended up instead inheriting check_security in
the image recipe,
and explicitly add buck-security-native to the image recipe's DEPENDS.
The latter
seems to be required -- otherwise I run into the same failure mode.

Nonetheless, I'm still digging through the do_prepare_recipe_sysroot and
do_populate_sysroot implementations to try to understand why
check_security.bbclass's assignment to EXTRA_IMAGEDEPENDS does not seem
sufficient to get buck-security installed into the image receipe's sysroot.

Is there some caveat or subtlety with respect when a recipe's sysroot-related
tasks run and aggregate dependencies, versus when the contents of
EXTRA_IMAGEDEPENDS are appended to a recipe's set of dependencies?

