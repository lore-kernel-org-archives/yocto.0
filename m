Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38A22E00BB1; Wed, 28 Jun 2017 06:03:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	*      [209.85.213.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.47 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C55EEE00B83
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:03:19 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id 191so32196171vko.2
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lqlmqcjyruJGwNnZ2mJWiTmalVVxqlxZZH7HrDt0Q1I=;
	b=Fjf3UJehyiZkAG6FSxZnQ1jVMM5Qw2COQ9DutdMnLTE4OCCbNjBqyPLK4OvLRa1KoE
	3UNjXGgJAAZQIgcMjLTFGlALDkGJ5uy7wP1/N+L6Y2bFnRgixHXMU+WjADkLyiqVUXlL
	kdrAFdpVL8xcp6pssLErWUanl599HqomVUEhA/sWdaS06HM301QtIwNcVfLHv+99BBeV
	nq0Qt6QSow2jdAiylpZW5l8RIBhcFI+2u1AZzkn8Ei5qluzCKQVX6fvq0o+KJ9qHGQy6
	4DFEjq3FBS7VFojcFvDqOBcYZa7O4YkJ4d5QNIksUHyuBgXhMKcpONV1naGoN/Pjghxb
	c1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lqlmqcjyruJGwNnZ2mJWiTmalVVxqlxZZH7HrDt0Q1I=;
	b=a4Izh8FrrRwHEwx4BiskyEFp06Js4vXGvES0QG1mNbTfYnJfJGBIC56ADq3+6rdwt2
	Utm5SvdQP9qlNr6/3xSe4gMs/MaUbyixDUyil1GFkZOMaCPfv7/C8wqWLj9+s/ZhG5i6
	a/ekFFU9lDoefUU6wHWGaafm0k/nzPPhqGdHwU6mMNFLVIgBs7xW6aHxifwVT2v1VdQx
	kxS/ggPlOFzEaAFbev06K+jRPPHMFhil1fNA9UL5o7gXZaTEaNDQfkvzhc4BENVbVWQC
	c+k0BQhazQyqxShbOKAPB8V0CUypuTxBSrDpv5MpqrjDnQ3ba+I8zyxw00dvCGxGZ1ac
	0lag==
X-Gm-Message-State: AKS2vOwNeRPb9ayNzcoiieI5y1829lxPzkGWLyCWQ6gPQjXys2o+Sjg4
	4sXI1eaK2DROBOoPpAowzCYgXyRu2qK4
X-Received: by 10.31.224.4 with SMTP id x4mr5682975vkg.49.1498654997867; Wed,
	28 Jun 2017 06:03:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Wed, 28 Jun 2017 06:03:17 -0700 (PDT)
In-Reply-To: <cover.1498420110.git.drew.moseley@mender.io>
References: <cover.1498420110.git.drew.moseley@mender.io>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 28 Jun 2017 09:03:17 -0400
Message-ID: <CAHUNapTuMqopnqPcaLLym7XsVfKpAVtqdMGqQ4BytrqSPdtk5A@mail.gmail.com>
To: Drew Moseley <drew.moseley@mender.io>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH V2 0/3] Initial attempt at flashing instructions.
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
X-List-Received-Date: Wed, 28 Jun 2017 13:03:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jun 25, 2017 at 3:55 PM,  <drew.moseley@mender.io> wrote:
> From: Drew Moseley <drew.moseley@mender.io>
>
> * V2:
>
> Updated README and layer dependencies.
>
> Added error checking to flashing script
>
> * V1:
>
> This set of patches adds the native tools and target components needed to
> reflash the CHIP boards.  Additionally a shell script is added to the deploy
> directory showing how to kick off a flash update. It's not ideal as I've
> hardcoded a max size for the UBI image into the script and didn't see much
> of an alternative. It does function though.


Looks and works great! Thanks for investigating and getting this working :-)

Tested-by: Trevor Woerner <twoerner@gmail.com>

