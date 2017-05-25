Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC174E00524; Wed, 24 May 2017 21:11:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B14FE00524
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 21:11:50 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id u10so108818611uaf.1
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 21:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E/ZDbisdPxhnpXRks0T2JgThevGdizTg9MRsNTmOVpo=;
	b=cuCNTp9hcWqHujH4VCFzAIDppw55ggNMirhlwzX3B2TgsX60PnIyi8ymr4mPxc9HeO
	YXr1HQb5itWAv4EWCIq1CMGKmN2DkBJau9gU/wqfkXnAQCVFoXX9LKUmQctQLa1skvwn
	LrQ0ic837fbcd8nhUbKp7nPkNQad/Sn9ZVlcNEeafaH4Y3CObj7dOxm7voigPSpELG8k
	bTbOeK0om3pibVi9gS3zCLqq11S8zCdrwy2ndbAKKUi9VfDZ5D3Gy2XO4PBwkQ3MChCc
	eSAWgLHLDMpBrxzpU6cLNbo0DkBazEPoNhySQpiVD24iXxeluLfe2r0tswZi5/Mzuf0Y
	0RqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E/ZDbisdPxhnpXRks0T2JgThevGdizTg9MRsNTmOVpo=;
	b=FnLQX87cAly2IBhIvltdia6+yGU42h+tRxyaTOURpK79GyUxP+vc9mdvGjp8AbSz/Z
	ZdXKeqZcOPmcDiVCfojJSKvMCrH8Qc9wn8/v9f1XbR3LMh8A6wBIdOoSaKjjcLKzaCyD
	68g7+siB6Kt/9TIiIk0SG9nBJc2lcnqVhbgtNXgfJ3Wn/beBZKYmF8KYi2jx4MkdDOQF
	t4wDZRP3rg3ZYjUYE8GQNv+RddV/nA89bqm1E+X96bpsaQ6f1UzOHec0SxmjU+ZXIRI1
	FC3gKl4OT8j8e3iovHZM1xaY+1e7Lj0xgehVNxusyIdYmz9WAN7mmucbNlJBl1g9KnGZ
	T/FQ==
X-Gm-Message-State: AODbwcCVQShxiLYEkUiRIL+NZCwDoeuDKBZNhreMMu9kZLPeH11pg2Zd
	mHkVQVd+s5RQOx5qdUR0irzAdLxeww==
X-Received: by 10.176.25.108 with SMTP id u44mr21212777uag.16.1495685509505;
	Wed, 24 May 2017 21:11:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Wed, 24 May 2017 21:11:48 -0700 (PDT)
In-Reply-To: <277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
References: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 25 May 2017 00:11:48 -0400
Message-ID: <CAHUNapQ=Axu8GV4XDBBhOc94u4D+kcw4tZH_gPGrC1Wm=X0nVA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Thu, 25 May 2017 04:11:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Yannick,

This is a feature many people have been wanting for a while, but
getting there has been slow. So slow, in fact, that many projects have
simply gone ahead and implemented their own solutions, all of which
are different from each other, making it all that much harder to get
everyone back together to support one idea :-(

As Gary mentions, "repo" is a popular solution. See, for example, how
the Linaro people have done it with their "rpb" distro and associated
setup tools/scripts:

https://github.com/96boards/oe-rpb-manifest

The freescale project was the first such instance I saw (but I can't
say whether they were the first or not):

https://github.com/Freescale/fsl-community-bsp-platform
http://freescale.github.io/#download

Mark Hatle (windriver) has been working on and releasing a tool
they've been using internally for a while:

https://www.openembedded.org/wiki/OEDEM_2016#Windriver_.E2.80.98setup.E2.80.99_Demo

I'm sure there are better links for Mark's work, but I can't find them
at the moment. Hopefully someone jumps in and fills in the blanks :-)

I'm sure there are other such examples.

