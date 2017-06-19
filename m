Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32D25E00B63; Mon, 19 Jun 2017 00:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 763C8E00AF0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 00:33:43 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id p62so46957839vkp.0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 00:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lPQ76HLoHboBWKtBxJFaJznAQUS0fWgggaG6XlOBih4=;
	b=Q6swXc9AOhVFS5bxzcEnvowWipIsZJn6aGV+1SMz/tQFC7cd4MqE5Kt9RF5jJoZVdi
	zWuLR1tMSeoO/DPk8QwvtJKi1sS+cibqr7BBso2i1hG6mf8XdUFnNxJQkmbiO7PZek9f
	91yIVU1BSF1HuLWpZmIAoRFVQ7JtU5OfTO0e0tppH5wY3FKZk9huoiiYnA6J16o7FmO9
	iL301cLfqJFBo4b+7OLBiKyE3ELi2BlRlKM47yPi5Jhd1umu4FPRIT5g/XagpubCJfUL
	ABVUwCzx29PuVpUhlT86iAmSom1Hv4X2cGQdT9xtasEO5kOnpuRQohKwaWBRkIr5P9sC
	JX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lPQ76HLoHboBWKtBxJFaJznAQUS0fWgggaG6XlOBih4=;
	b=doahyGZFlcJBopLzdlTNxdC707/5xumay5SP8oHcWv6wJTSW6n6peui51wgFR6ADXY
	afhTYVDpP0GTtfFw+jZxnxUPOHkWm7QNiLtOD7PG6tG793IJ6J9+d61+gIYCTjgvaLAW
	DVzpdBBR4uWBnha82z95Ihp7GB1nF3n7RBn9OhipAcxDjyXEx4HxQgsIN69mwZ6h24xM
	VDX+s9Svgy6XfQHIzv2s+qYbhpWMHt0lb4xC7FmprV62IHc4IRsvVV0Fz77TbrxGR40n
	u/UWRtel1SuhwrUvrvLdw5W/zMiDfPhFf3ysedxmDMC8PUgDd5lfgXIvffxXb7bc2nrl
	Mfnw==
X-Gm-Message-State: AKS2vOyF9TPWeCcfVEz0IE5lSHuhqpTzQl7pdxWftJiJJylmguJD/ZIZ
	hZZZhbIno+mpldYnm5sUAhM6lgwOE33M
X-Received: by 10.31.16.65 with SMTP id g62mr12711899vki.49.1497857622489;
	Mon, 19 Jun 2017 00:33:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Mon, 19 Jun 2017 00:33:42 -0700 (PDT)
In-Reply-To: <20170619054832.GA7840@linux-uys3>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
	<20170619054832.GA7840@linux-uys3>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 19 Jun 2017 03:33:42 -0400
Message-ID: <CAHUNapRDuhetAeQcoHGCHORHtd5OETuM+i9hZK+530sA5D6pMw@mail.gmail.com>
To: drew.moseley@mender.io
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Mon, 19 Jun 2017 07:33:45 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 19, 2017 at 1:48 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Fri 2017-06-16 @ 05:15:40 PM, drew.moseley@mender.io wrote:
> Any thoughts?

It appears my image was too large. Using a smaller image appears to
work as expected!

