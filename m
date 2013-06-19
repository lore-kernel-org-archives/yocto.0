Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C54BE00348
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 08:33:20 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id ox1so4104590veb.41
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 08:33:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=kuNNo0cXwIFtRWxoXiWig2Nn55KtfiRvNC2Wj2QL2OY=;
	b=p3O1a5fUgQ0oz/o+grJyC44nqImccmBhQcs+9R8ryxeLM2MtRUXJ6u9jD70bDVZ2Ql
	II8pX1ydz2cxsMRl+FvdDg6m3TTx9HYDzRxYhyM/tZAUWUsYB089Qe1lHp+Gd0kS4+6t
	V4L8MEqxmZaIzuIbXdTKF7qNsXgEXtmkopcLLRO39f606DTch3jhFCksghs2CqKSnqLB
	90gAtVgJyLO5P2HjwjAoBFnzFpR3dmJxeR2yYhK+Dcu7m0ECCQIcIiyHVGMmkB518WPw
	oMUHQ8kAfrO6Vnq/IO+ip/pxVDzc4lF1CzKqmtOt4eOyokYVhFkIla5sAxVzwLoiw4xq
	uGoA==
X-Received: by 10.52.29.106 with SMTP id j10mr895586vdh.77.1371655999821; Wed,
	19 Jun 2013 08:33:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 19 Jun 2013 08:32:59 -0700 (PDT)
In-Reply-To: <51C1CD70.1090805@mlbassoc.com>
References: <51C1BA25.6080200@mlbassoc.com>
	<CAJTo0LZ5y1wXXh7wN04k+z=KUz79wjS=ESBBtVoYbJzNd7a0mg@mail.gmail.com>
	<51C1C2BA.9020505@mlbassoc.com>
	<CAJTo0LYBJaWeyqPdbwfouWES+MH3_MC_JqKdonm53N0m4fCOmA@mail.gmail.com>
	<51C1CD70.1090805@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Jun 2013 16:32:59 +0100
Message-ID: <CAJTo0Las0dvjwmFNYq2oCtDEVEW8P1H2okz3nXS_FTLgs2569w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkAy17rZumq6563f5/TB5U/6ij5gNPgBmeoIMfab97RrZbcMFSblrKSO00kcbVuxktYia/F
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cross building question
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
X-List-Received-Date: Wed, 19 Jun 2013 15:33:21 -0000
Content-Type: text/plain; charset=UTF-8

On 19 June 2013 16:25, Gary Thomas <gary@mlbassoc.com> wrote:
>
>   FILES_${PN} += "/usr/lib \
>                   /usr/local \
>   "
>   INSANE_SKIP_${PN} += "dev-so"
>
> Now I get errors like these (they might have been there before):
>   ERROR: QA Issue: non debug package contains .debug directory: amanda path
> /work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/local/share/perl5/auto/Amanda/Xfer/.debug/libXfer.so
>   ERROR: QA Issue: non debug package contains .debug directory: amanda path
> /work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/amanda/.debug/chunker

You'll want to put those directories into FILES_$PN-dbg, as otherwise
they end up in PN and you rightly get warnings.

Ross

