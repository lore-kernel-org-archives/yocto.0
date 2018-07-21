Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC769E01213; Sat, 21 Jul 2018 01:42:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5257EE0110F
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 01:42:41 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id k81-v6so25341090oib.4
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 01:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b05ziTslMDva0IhTw0BqwljWb6kS2LWz64D/XCiet+U=;
	b=Y9jb7vIktH1EJe51cGR0IORHs1MvZnTFafbHK50nKRkvwuqTEfxz56g82gNOLfA3lQ
	sk5VQtLRe2ZZ3pZw1jxA3n3lMEaIwXPv+tmHQGiNHV8+g2bPnlP4kez8ALA5o4PfqYrH
	sxf9f9+6ynUKZ4yFrIhkWU1hnHXXL86c/4KfXr74gpkBoASXIpww0Im96dDK93brnpSq
	eSPtsSlvZ3huZDFWELWFRbckHUyTg60ZiNOgWREVzcYOqyHyPNJVlem5RVa8f2bKFRJR
	z3P9fyL3gr2IMyrOsoWt10vrAkS8AFRnP9uma3UCwh072nlPDOlWi4xbrHhZDI2HLKaW
	2E/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b05ziTslMDva0IhTw0BqwljWb6kS2LWz64D/XCiet+U=;
	b=M1+B7TLymGgb0IXfXfuNVx8acNLw2f0uV5bF09KcPMoWnzzZ46TdCOL25qjKSVOJ5f
	grB9cNREVisp8mAf3mMfAuKuj+sr8fnU6Yj6qkmFTGVR6XWo9uNYAmoQXg5+66iyCE+c
	DUBF+ur/HxrZrjbBvHl1oVWIXaV0+PepzUYn/M0zf5Q6AeG7/LqEQygmShWZgbP6Inpo
	2sim786vdOeK9g9biXt4tQ0hh/a7dfMOsnpoBKJaj0xB48i/bbKJ2jLYDk4Q/GCXKomF
	AWOS0FYNRj0MeT++7ndlJiIJktPRVgSOGvrDmvXSPE9M7LqAltnsiDQsMaXsiEDY9Pf4
	MBJw==
X-Gm-Message-State: AOUpUlEN0MTCh/jgKOLmug++TshcNuWm1Q+lsu2DIVOpKAUtW1V4UVXI
	+8ZEQLXRzNWhxz3/CMjOYQ3uxLc5jJw7OdJRfyA=
X-Google-Smtp-Source: AAOMgpeHOYGtqerLujBpVQ4ErnKSNAHye+Rw0mYNNf0Suf38SBv1scBSKVdNV0XJhufheoZL211FlnAyDLQCjkblSuM=
X-Received: by 2002:aca:b7c3:: with SMTP id
	h186-v6mr937827oif.54.1532162560656; 
	Sat, 21 Jul 2018 01:42:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Sat, 21 Jul 2018 01:42:40
	-0700 (PDT)
In-Reply-To: <1a11df88-6c0a-5d6b-f729-2e942ce1f5d1@gmail.com>
References: <1a11df88-6c0a-5d6b-f729-2e942ce1f5d1@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 21 Jul 2018 10:42:40 +0200
Message-ID: <CANNYZj-JzyW8R+HQBVhsgw-T1hgW-W3C2aZiCPNfFQYoQ4iy7Q@mail.gmail.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: can bitbake build offline ?
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
X-List-Received-Date: Sat, 21 Jul 2018 08:42:42 -0000
Content-Type: text/plain; charset="UTF-8"

This page has a tip on what might be causing 'git ls-remote':

https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F

Alex

2018-07-21 10:32 GMT+02:00 MOHAMMAD RASIM <mohammad.rasim96@gmail.com>:
> Hi, is there a way I can run a bitbake build offline? I have all the
> required sources of the target in the sources directory, and I have built
> the target multiple times with internet connection, but when I build offline
> it fails because it needs internet access during parsing recipes.
> Can I tell bitbake to skip running `git ls-remote` during parsing recipes so
> I can build offline?
>
> Thanks
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

