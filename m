Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E5E2E0096C; Thu,  1 May 2014 23:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 985DEE00478
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 23:43:47 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id uy17so1488429igb.11
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 23:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mYDVVXmTY31EGNYUgvIrKJAQh62PiziUT0mZ5CsKkWQ=;
	b=cjTvXfxND0BQQRulgiiGU5Rye9tlkMs8HoayNWfoNk/iYGRuycMLnbiBaV9P5EVpcA
	6ziP49FftsX8cIxJaDZU/f0PE4WU46qjF+3N5Bj3bajHkopRKzThG0AEF9gbRv7wZnqr
	XDex7KBmcc/Re/I7nejM6+c0O1/oDMfrO8G6mlj0+7RZ+Vn0QT8pmoNFuDlUFN9OBlrV
	N40p4QBK4KLw9n9yCLhGIIc6D1kGEgWlWo2zakr9+IZYDqLVb/zch+vdzmRs6cviN4Fp
	xYe8YxH2KcXlqU8M1KQWSgwpZlZejlAxVHlaeKY3KYIGETnXXPyZHI3BIaAU18HV6voJ
	uYbg==
X-Received: by 10.50.78.201 with SMTP id d9mr1757436igx.17.1399013026639; Thu,
	01 May 2014 23:43:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Thu, 1 May 2014 23:43:16 -0700 (PDT)
In-Reply-To: <ljvcm2$jfs$1@ger.gmane.org>
References: <ljt73p$k5f$1@ger.gmane.org> <ljvcm2$jfs$1@ger.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 1 May 2014 23:43:16 -0700
Message-ID: <CAMKF1sqshMJd7Mejm78nUMb7Kdn50Bmr=NJ0VFNjyYAgkGb1Sg@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: quilt-native do_populate_sysroot error [solved]
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
X-List-Received-Date: Fri, 02 May 2014 06:43:50 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 1, 2014 at 11:06 PM, Neuer User <auslands-kv@gmx.de> wrote:
> Before I copied the whole conf dir back from a backup. This time I tried
> with a completely new conf dir. I did that and strangely got another
> error message by "sanity-check" saying that I am missing two files
> (makeinfo, chrpath).

well, conf/ dir is generated when you setup the workspace for firs
time and then we do version checks if it needs to be updated. no idea
what you backed up but usually keeping
your changes applied on top of regenerated conf/ dir is a better
option when you move
from one version of YP release to another

