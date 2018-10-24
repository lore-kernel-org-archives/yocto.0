Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F5DCE00AD8; Wed, 24 Oct 2018 13:10:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D84D4E00994
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 13:10:54 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id c32so6339532otb.8
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 13:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2BltFLEUp88O6LtjQcJarnw/KOv/WvAfjkpX0SH/9g8=;
	b=iOc/oL6vU3BJKU+4h7rdwagYZgcFwhvILdOBpZy7SiXeAaqO09xyHTeXQ2Trfz2POV
	A1rwdVtioormGgtIutHkNmK6u6LoXazPlSg3jAgXv6kb4AdliVQneTu+RC36AhrukWn/
	vOrK9PR+e+ryD8udZeFLIZ4VtCIreo3yP7tU2pwp8OGSFOlaIwpdoE1STwJA0Jehdi0D
	FuxO2ZuqbvfYeCE7wVlDQXUAN/kbXRE3Zx2Iod4fOsydMJejxhxIyOnm/7gGwtPhNZCM
	P1vID+1gLtWPhUS3cQbnRsvyr88lNZxCIZ1Hdr91a8ixWOfD4M2txHp0San6MBZn+nBG
	qiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2BltFLEUp88O6LtjQcJarnw/KOv/WvAfjkpX0SH/9g8=;
	b=otSmROue1Drfn3XYk4cLqtSRVD0Jubrd9OaCajwwLheVHBqbxwMn8hVVI0DKe+cuCF
	8pzRQnrJT8uXUQJkGwxw5hUiOYLtk9itt56mnHmx4yqSdWS2k8/OXuGeTix1wfKa0wVk
	TWSLM5/92L3GhzCkRlwGF5a03Agffv9kJMlL+x+9XLes2l5DjL1FUMDbYiHh7YX6Cfr6
	1NaTmaaE7uyPUlm9j3Saytc3tk1AN2r917ZMv5KYTNdBVd7vckqapr3HG8+Has6r2Ihh
	+iP9QMA0Hp+FedxmlUlP2Je6UWseiGKg0znzQGhIDoCUaWdN/XKJCNv0QHFvSGIicAnm
	PI+A==
X-Gm-Message-State: AGRZ1gL8ymxZXwNeYb08f+OHAxPcFF1qT9Fa5Avfx0yw7pdafCOtUSzx
	FCzRO8GtsaM7Nn0zZuu2kE73t+BwYHBu1P/O4BSTIw==
X-Google-Smtp-Source: AJdET5fI8SO9RX6BNQp1VQH/H3dmInpwkFAolABAzAoCofaEVp4X5HmdZp/Xpa1/Tb0Bw1YrYMC40x0/KijGgzB1bH0=
X-Received: by 2002:a9d:70d8:: with SMTP id w24mr2413402otj.147.1540411854279; 
	Wed, 24 Oct 2018 13:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <1da7bfff-fc83-c9b6-97cf-f18cd5ee937e@gmail.com>
In-Reply-To: <1da7bfff-fc83-c9b6-97cf-f18cd5ee937e@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Oct 2018 21:10:44 +0100
Message-ID: <CAJTo0LZmopD+Xxq=fo8VfFpdaf8QLJ8hNU+X_sWttVTbxe=3rA@mail.gmail.com>
To: a.strunin13@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Force recipe(non library) to build 32bit packages(only) for 64bit machine
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
X-List-Received-Date: Wed, 24 Oct 2018 20:10:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Oct 2018 at 09:11, Andrey Strunin <a.strunin13@gmail.com> wrote:
> My machine configuration is Mips64 and I use MULTILIB. It works ok, but
> there is a question...
> Is it possible to build a recipe(non library) only for 32bit?
> I know about lib32-${libname} notation, but what about non-libraries?
> The sources I have to compile aren't build on 64bit at all (or build but
> doesn't work properly)
> So, I have to build ONLY 32 bit version.

The notation isn't lib32-[library name] but lib32-[recipe name], so
just prefix any recipe with lib32- and it will built for 32-bit
(assuming that is how you configured multilib, of course).

Ross

