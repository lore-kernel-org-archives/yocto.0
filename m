Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DAFCE00529; Wed, 22 Aug 2018 11:04:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9164DE003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:04:40 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id h4-v6so3161152qtj.7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=E2rVQLiaO9nK78pSR9arTZ/f0OHcE06gqTdoy/Ra4tU=;
	b=GWr/QwMafyag82KjmomJwA7ck80LP989D2P82e2sMobn3mVZKTWNmqiy8um6pgKbP6
	fD2DCoAa7tWl1JdbAGwvQ8Av0nE1ww+X4KzGWfvVZiR5D0mceKYRR1l82AM9WFQca8gz
	lqTsxhqkrfmcIisNGtDZ9hvW6FragrqP+2mgyGTqhaojMItvR0AsADNouGgZvHztlvK6
	g5p4lw2Je355tVyuu52JIHilmk25KkT01eGJCqdo/tpGsL63F3TRv9Kn9l3zg/2NheRS
	M//pMnhaJDliaGVm3936nKNm1Obu25hYBN36EZ3r4Du7OgeWYNDDp0wFq5Ta6OoBzYz0
	TwNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=E2rVQLiaO9nK78pSR9arTZ/f0OHcE06gqTdoy/Ra4tU=;
	b=h9xO0onm6KdnJHJooX8cpTRFBO1HrqHXJFmckQwEsPqelzNCMN0r1k5f2NIQKV+5JV
	2bevjGwwvispyz3Oa4TzwXR0kDAB+jv57MISshLDJwfcnazWMXLVA8hsqf12vHXSBjaJ
	fqbUjMrEeW5GtGmYKPMGzf4+qVllNKzwyA9apBLL/xf2B7SJ2v5WXmhFIPImPjiPA58f
	pHwpSfKWpeOQUEzLIYuyiIWzyNIM8s9700qpIlSs+DIeFQJjqKSo3GSUCfbXmnBTWVGA
	BB3cQ4oNCm3jFe23RuBi3IoGvUXFc/F7Tpdfs0r8n36XDqZAOk/FQPA7Y32qX/JTofRv
	+0NQ==
X-Gm-Message-State: APzg51AtY1lkVwoXfvAlUxl6HlBsIurnkaUrbpQJ5+p6+Ce+9EnUPsjh
	6id3c/fHei4u/U8/xjCPhu2ilna1sRCgZ2jl9RJXVpfM
X-Google-Smtp-Source: AA+uWPwE801xijiLdR1C8eiVYUeOW9mK2DYicb4Vqy00LD4OgAEEzxlboEKVevN9NHVcdOfk/arbbQERJA5HGlPQFXI=
X-Received: by 2002:ac8:40c2:: with SMTP id
	f2-v6mr15591521qtm.34.1534961079846; 
	Wed, 22 Aug 2018 11:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <6f16f046-d77a-704f-dd7f-5c7dc7c71b3c@iwavesystems.com>
In-Reply-To: <6f16f046-d77a-704f-dd7f-5c7dc7c71b3c@iwavesystems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2018 11:04:13 -0700
Message-ID: <CAMKF1soezkzdJKEvRiiTpmzo0zfowPcPdin3mbk=e_LhSz+aBw@mail.gmail.com>
To: sharmila.devadas@iwavesystems.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto build using eclipse
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
X-List-Received-Date: Wed, 22 Aug 2018 18:04:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 21, 2018 at 11:54 PM Sharmila
<sharmila.devadas@iwavesystems.com> wrote:
>
> Hi Team,
>
> I am using i.Mx8 Family processor. Can you please tell whether it is possible to build the yocto bsp using eclipse to get the images (uboot,zImage,rootfs,dtb files). If yes then what is the procedure for the same.
>
a bit dated but should help

https://community.nxp.com/docs/DOC-172840

> Regards,
>
> Sharmila
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

