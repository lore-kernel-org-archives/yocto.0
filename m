Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF0D0E00C43; Wed,  6 Feb 2019 13:31:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AF85E00BFB
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 13:31:39 -0800 (PST)
Received: by mail-it1-f182.google.com with SMTP id x124so3565233itd.1
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2019 13:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=sDjMLoXzYDwFRzbNpbBvsPSjqioX5PIN6vtA4/YLg0A=;
	b=Ps02+qLLEurCys85FU8zKv8d16TXz7oDuiwo4/j89S+T9BDdD7z8zJDmuvgAD+dg/I
	oWufttieN7VixUIY12tE9lRQtX6ko5AS4Y9ntx1H4k27V5B9BCLdxq4mxbO6wtBMXj/Y
	6aetx5zU+9U1WzwrC0v7Illj7XnxpmuMLAnnlqwCqFgdiYNUeuolcz2tGVBRHLunaY5q
	1BeQqJFtc4XzYfuZBCz4pj+P9Fhx6Vu3REtwa5CGCPmHD3pXVL5kzAJhx/xplThvMLpN
	8cKQc74H8Jtsql0UUfwddASTgKIzX+VZMVvm3MXFSJgTIXFDiOQqQH4pcs90uJMjrR0n
	v5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=sDjMLoXzYDwFRzbNpbBvsPSjqioX5PIN6vtA4/YLg0A=;
	b=eVZVb75bmYfdls34Ojt/Nix4j/2EO7H6VDRIyQBbSfnG4dSEK01/StJ19dyHpHxiqe
	BtfCa2p+56UUwSsI+9EM/nwLDkmNN/SxRLuVJ2l1OxXfg7QgPWAptCbV9bhYlT/xY9lW
	mARiClo/s17uc6/+4iY6eybjLi9X1EcHVQRgvkSOP4mwoES5se8k7HXCGmzY98RjeGKn
	hdvfqe5IeG8s1JTNvfSGnSU3nJ2xX5E2Pmuo3rva/A6hpD7/H1K1SBiFj5RfQe3tueZ2
	pE4v2o4o7YkwLUhhMkfkixacomxG5H+0F4DeR9pQm5CCgZFOrOQ3waAKIZScg14Ei1iK
	BvTg==
X-Gm-Message-State: AHQUAuYvcxpVNofJDhp/h2K8UD5tdIvgIcmSguOoLmFMD3x7Xxn+kfCe
	ZdVyjtZ7EPLWqWt/1Htyb5F/SAHZ88QUGqzH3do=
X-Google-Smtp-Source: AHgI3IaRwAsEXqm0b/GTa5ffW+tAWLQ1sMRW3BkaroPOR04tekKvSHuhkyCbHuSNctIcLDcGgnDKZZh3b2zgrSeVPnk=
X-Received: by 2002:a6b:7108:: with SMTP id q8mr6505288iog.7.1549488698792;
	Wed, 06 Feb 2019 13:31:38 -0800 (PST)
MIME-Version: 1.0
References: <1549477388545.2721@planar.com>
In-Reply-To: <1549477388545.2721@planar.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 6 Feb 2019 22:31:26 +0100
Message-ID: <CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Wed, 06 Feb 2019 21:31:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 6, 2019 at 7:39 PM Matt Schuckmann
<Matt.Schuckmann@planar.com> wrote:
>
> I'm trying to understand why the cmake.bbclass doesn't make any attempt t=
o set CMAKE_BUILD_TYPE and what the design philosophy behind that is?
>
> On the surface I would expect that the default build type would be Releas=
e but I can see how that might not always be the right choice. I'm really s=
urprised that there isn't a global variable that can be set for this, am I =
missing something, or is it really expected that each recipe provide it if =
they care?
>
>
> FYI I started looking into this when I realized that NDEBUG is not set fo=
r many (if not all) of my CMake based recipes and thus asserts are still en=
abled in my production code. This appears to be known behavior for CMake if=
 CMAKE_BUILD_TYPE is not set.
>
>
> Matt S.
>
Hi Matt,

This is not a full answer but Release is not a common target for us:
cmake will produce not containing debug info. With these debugging is
useless (and you'll get package qa warnings). If there is a default
target for us it is RelWithDebInfo.

Andreas

