Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D8F7E00C74; Wed, 28 Nov 2018 03:27:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4934E00C58
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:27:41 -0800 (PST)
Received: by mail-it1-f194.google.com with SMTP id m8so4415087itk.0
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hXRO6gRob7T8Tlb8E2tJ9FvG/Okx6ZRTcomEd9MyWD0=;
	b=bl+/oj0X4Tmxy2zFZOEev1OKChaOcU2qcoRzF9TcD6JKXyR9TxmRgv0av3AkFFcoPP
	lHwWjBYYedusSyl2Gp6dHqvHSQ5AYLpZWBCLFBxf6zBek2Wcm/ke6F+Crb0rshwN1M4G
	FkgEoSfq0ELdzizkyCXzHIfS3bR/xI8RYZxfhffSGm+tf6AFvO9sUwflaK9CZM7HQ0/6
	W3CmaogqqTwf48q+nqnKM7GY/8kQHIi7e9ER9j0M89Vh5bJQdBi9Noht8mO0sSc3/zDn
	mhxGlzJoOMrXNk0JipmqhjBN7y8675hBY3N18HxLQ17ZweCcx40oATwXyoxQTjINnyqh
	SF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hXRO6gRob7T8Tlb8E2tJ9FvG/Okx6ZRTcomEd9MyWD0=;
	b=OA3cbqoEw1snl3fOCPjuJj4UK3927/T2js4HMUDjdpXCzmTnNHfPAiKfxgPI0B+jYP
	0lDmFbFW+U0bfwJ0ebHcKLoMbgdbrXlpAV+nkxCJokrbBIUMYhC2exHjnI+huVpmz1i2
	GXs8ZUKWG+Ysf5e5Ff1EV6KAgoQ1ZZhxslMxOWRwEjuXEJ1+PB1ErkbVUOceEeWv1mCL
	abM8GKRDmK5ZrNjlG1o67Ki7u+VQ899bFJ6qTBZ/dXYRp/xx3tjYiI7u4UwCKR3gAi6A
	09WB7cDJyyoT/XvIhT14GIo8xGXCl2Y8yrIsT5EHIW1lflvHSnCzwjk2i1rO4IJ8iykS
	QVdw==
X-Gm-Message-State: AGRZ1gI7WX9jfCoy1E6h0t9RRV3GI4PCZg/MFTVt+uSfQ3aIEvXDkRYK
	0KVxs8fzkKjorwBEziLd60W9a0rFYMB+TYkvl+s0kw==
X-Google-Smtp-Source: AJdET5dJDcjwVa1TuSvXZmpTa1Zy+rn2YMyPT31ZjQUSIvhTef5MY2dUdghRu2xbnltQWX5t0QajNtfcKyfjhstUv4M=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr32708406jal.31.1543404461345; 
	Wed, 28 Nov 2018 03:27:41 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	<CAJTo0LayJuXgtpzOCTnPPh5-sQQABBFU9V-eFU9mbNui1GP_dQ@mail.gmail.com>
	<CAGAf8LzXyVS1N3C3b7aG73Tn-Cs-ga71f9M_Y6A4hucnxekKtQ@mail.gmail.com>
In-Reply-To: <CAGAf8LzXyVS1N3C3b7aG73Tn-Cs-ga71f9M_Y6A4hucnxekKtQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Nov 2018 11:27:30 +0000
Message-ID: <CAJTo0LYpWRRHAW2V+btYmWMu5sT-Q21aL4NoK0PE91vLYusmQg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Jan Kiszka <jan.kiszka@siemens.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 11:27:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 28 Nov 2018 at 11:22, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Since with git I can do almost whatever with kernel.org (and
> derivatives, all known distros) git... Very opposite to YOCTO. And I
> like git, It is VERY powerful. Maybe I finally started to understand
> the tool.

What can you not do with Yocto's git repositories?

Ross

