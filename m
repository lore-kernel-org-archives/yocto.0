Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 910F0E00D24; Mon, 16 Oct 2017 10:54:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B10E00D1F
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 10:54:45 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id k4so5668069wmc.1
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 10:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kUA+5/E3yqhZq/munCANCA+KltiwVTFJ+i8ZbG8zZNM=;
	b=hfhWAgpLTHxK/NHn89NtVeCq/9O0rt67zqvdUbruEKfY1MxTK5s2g2p+QX2/OpQIXq
	JjOvw0Pt0y2qgGmCvSb9TJKN9o3CzTJHxAkTj2FUvGxSjn1OfpWaCfqR5mXX5xhHV8vm
	eCbhj21lm8J3ZjF4cxMZ3BTtRVB3wrQV0JWvPLeewZd1Kv+J+0VvmPD5wFRYh/lWyOSg
	Fq1iBkoxHv3oDbcxRMY7nE//dgEgY0QHbB6n0iAqoeZdYvJ3ME4CXldNDYdttFRliv2/
	hR8UH5vxm0W068gIEt5v7HBxPwxWCInEUvh4YtIG28do9DbOE5A6npirqvxxRInHiTT0
	FJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kUA+5/E3yqhZq/munCANCA+KltiwVTFJ+i8ZbG8zZNM=;
	b=VuSsZE8kutgjwAp+i5iNS84KrT91WRA+twHbSVNKd6UaDS0S7Cs3yLloKktvmWjm9b
	VT7wunMpUvRVgSkOdLw9kK451Jjh3Zq6OsCacNnlfwi5tSKAH/fIV2eU1VI1lhg79hfT
	lfUwG0eHnur3Rdu2meLicV6gF0cXRxlN/NDY1qD5paUJHDWM3u2+PGHf+UAxL46nMDyA
	LKmMsg2xSVYRb+ve7vMAyREjuteVd1Vq0JnEGxNs1MR17Nszo9f7qMOe041FqhHoJ21c
	KqH3iZulBJIBBQ2DAG+BLAP4U7J5Fb72bidTv6pJq+71kIRGM4OJYnbcv5YrbhWQs1gT
	nygw==
X-Gm-Message-State: AMCzsaVLSY74dGVdjsqGbX+LCX4+pJlh0E4c5gtZftmHh6pHFjznZUf+
	+KE0f4DodI1TrUVWk0Z2w6RgZ2e6OO6543qb3RQ=
X-Google-Smtp-Source: ABhQp+RjEGmL0P2GJw1N/RWnJYcm3gguExc6kturrU0wSvwNkpEc1IEo/m2P9gpWhB40/GFU2uC4F0AAz2CtbJDe2yg=
X-Received: by 10.28.91.75 with SMTP id p72mr1481388wmb.89.1508176484845; Mon,
	16 Oct 2017 10:54:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Mon, 16 Oct 2017 10:54:44 -0700 (PDT)
In-Reply-To: <ee101ffd-a217-0370-d06e-72d51481d45e@gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
	<67150d7b-80ba-e5e0-86ef-5f7f8afcbfca@gmail.com>
	<CAJ86T=U7WkuShnw7hzhGLUT4-mTB__SF2pFx8DtHFJ_O75DY0Q@mail.gmail.com>
	<ee101ffd-a217-0370-d06e-72d51481d45e@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 16 Oct 2017 10:54:44 -0700
Message-ID: <CAJ86T=VboqXFtwbvtJbFnAMphdeOpzDGXkGwtiKZV0_R40b2Rg@mail.gmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: image dependent pkg versions/pkg variations
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
X-List-Received-Date: Mon, 16 Oct 2017 17:54:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 16, 2017 at 2:10 AM, Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
>
> Anyhow, following this idea I was told that there is also something like
> this[1].
>
> So maybe something like this could work:
>
> bitbake \
> multiconfig:customerA:stable-image \
> multiconfig:customerA:bleeding-image \
> multiconfig:customerB:stable-image \
> multiconfig:customerB:bleeding-image
>
> where it would be the same MACHINE, but different images and package
> versions, which could be defined in the configs.
>
> [1]
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#platdev-building-targets-with-multiple-configurations

Good luck!

> Regards,
>
> Robert

