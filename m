Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8D8FE00C1E; Tue, 12 Mar 2019 15:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
	[209.85.217.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C968E00754
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 15:27:04 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id h7so2652021vsl.1
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 15:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=goaKHB9MhwlwgqYtiTng17J0DYMVK/1XAq6SNdJYUns=;
	b=0p4/PdszzaAzw/GtJng+0LDDIKLZXCP6Jemv8vkM4vkSfpWo9Cb0VD3BEfK0bihO9e
	7rR6iIr6FC/3DnzgU7IqhlRnuFauzDigTRTHYM77V7gqbSkIq9qpB5TqC7jhfYqAz/dc
	XmR56SCRwKZzCXfYQDGuLCVOH2FcCRq+mT8tTa9qWY5L0HSfwjwJ0xhX6+3NVtHCuEcJ
	YoaWkCwlIvcvMcN5XFfU6D462rsh/jZ/b0bApit8NDcVpXjP8a3qBZUsD0Tevk2rB0WT
	k+qPsoKwVJFvVp/sOAMTU1vg9cj2UiCpuuqtTY2tj8GOXYpR87C8lGswwDaK+eWD3lMn
	PYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=goaKHB9MhwlwgqYtiTng17J0DYMVK/1XAq6SNdJYUns=;
	b=ICiF28CeHHt6Afp8ilG7yBvgcXN0MGPXY1laIWHB4BTpkK/fuLnXYjAOzN+G4MQRSD
	3ZKujKpoeZS6v1km9UuLTCoKjKkjFv9cqLMmdMHOT/C9LWSh78bdlJ0w28UTaFhOvnAA
	Ci9gEgbHnfMc0QCDNcJwcDlwvb9P1rUgGhn1ol4MOCSPs7Xb7vc/79t4Uf7QS4Q5ysjo
	C+YnzCzYrP5JI7xegSj48za6VVfKm9KautLh6EPm6retFyZsval+LoS7n687MhH14kbh
	iODNNPRVGwfy9k41599eQHhtuuWu0MRtOnB0F1W2GGs42vCOTHWCaCAGo+sPvosg4Y/r
	9asw==
X-Gm-Message-State: APjAAAVmwUHfi0GRg2lG9AR8MrUHGmlmVFwwDRVyG1dErNNWlspwAWPg
	Hs5bMvnkBoePn0JEY8g+lRfeH2XXCwtuy6LwjiW5+A==
X-Google-Smtp-Source: APXvYqzkcoc5kec5cfQ+5AUVt1EPThDRqVJI2kKz2ta8cGIMvctipYRmH7vduLFE50Ua8MQPhneg8gxQyIk1jin0iMU=
X-Received: by 2002:a67:f05a:: with SMTP id q26mr22112908vsm.174.1552429623581;
	Tue, 12 Mar 2019 15:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
	<CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
In-Reply-To: <CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 12 Mar 2019 23:26:52 +0100
Message-ID: <CAMjhiJgL4be=AvT03ecR62tRQpar8NJV4=yij-cg+-YoGDkY8w@mail.gmail.com>
To: Emily S <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 22:27:04 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Emily,

I guess the problem is more in your init-clock recipe, and I am
assuming this one:

https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/init/init-clock_1.0.0.bb

This probably was always incorrect, but the problem now shows with
newer Yocto releases.

Regards,

Leon

