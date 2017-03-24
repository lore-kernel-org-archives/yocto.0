Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AEB8E009A0; Fri, 24 Mar 2017 10:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F42CE00970
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 10:11:55 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id r69so10368189vke.2
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 10:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LyH1wdZVmk/YYyInNmVJbMhwqSAs28Ph6hD6yJ8ALVs=;
	b=U4uULdv8vw0wO5pr0nXwGmc67Xg0iVap38vhpAn2pScvPQuQLpTQbYcHFfXHVXfotD
	fw4pUxHHMJkYoVaV8W/ckPd2IibKuERnSFZcFyk6gV/3x9YFbT8dTOpa5zEWpRVlugsM
	RkI4O7Las2D4PEztz9MrWofJ/eHHHfCpKdSgRqyBz1gvRs5BAUblSgpZCq2/sff2En3O
	gcmBkJYryA5cZ6nwcbx4yDxXnC3Ll2XR0dK5fQIHn7TFaxZTht6QxbnXNr5qqPpVlCIz
	RvxtWrA36EuuzN1H11OchuF+mxv3cFZ8uNl9Q/Y7eLOAcNmFE432gQk7zwzu28Krildz
	4UdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LyH1wdZVmk/YYyInNmVJbMhwqSAs28Ph6hD6yJ8ALVs=;
	b=gRkJsSrDVIGKxDb+BbdLXB/lHFnvGUQdflfnYD2p+BXzL7Uwto9ZOe3upqlnkW3Co5
	e6vM3mdx7pFnrT6KH9UTh+mBhIFt6sUM9iRq84NX7dPGoqrNdJYEUUyHGIBaRs4ci1st
	Rnnz81LEnEvE0e5H7F/oeXuoDXQuilzvEapjiZnRMLEhP8AZjIMkP1ISj/rIvjgiSsW2
	yjxS9AHQ6TzSSySXdVx7n2FV3B36lpEMTMuNQxLdCHdbTd26KUUxw2zr7ZDaeEk64ePI
	yBgvAFlo7Wbm0HT/3DKKAUhzDopoEwndsoW2EfJg7DIGBisF6xpbFzGxurHGjLQu+ztY
	yRTQ==
X-Gm-Message-State: AFeK/H2FjIsEAcGH9s+p3mE6LWbkBK1jfbLP6JusF0WZ2zHCWU60TbWjsNaFDMhqUbhOH9UiNe4warbWu4GD1A==
X-Received: by 10.176.22.143 with SMTP id e15mr4966030uaf.171.1490375514404;
	Fri, 24 Mar 2017 10:11:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Fri, 24 Mar 2017 10:11:53 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1703230638090.745@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703230638090.745@uk63952.mitel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 24 Mar 2017 13:11:53 -0400
Message-ID: <CAHUNapSCX2SqDha6eKPhqb=5O5Dc2VnRvxOfNf36Nb7A33AcWA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP guide: better example for recursive layer structure than meta-intel?
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
X-List-Received-Date: Fri, 24 Mar 2017 17:11:58 -0000
Content-Type: text/plain; charset=UTF-8

Having a repository-of-layers isn't something that is BSP-only, any
layer can be setup in this way. Maybe this explanation should be cut
from the BSP Guide and moved to a more general manual, say reference?
Or maybe removed altogether? I'm not really sure what it adds; how
repositories are stored and organized inside a revision system (or
otherwise) is inconsequential, so long as bblayers.conf is setup
correctly.

The only repository-of-layers of which I'm aware is meta-linaro
(which, I don't think, is strictly a BSP layer).

If I could go back in time, I'd nix the whole "let's prefix every
layer name with 'meta-'". If every layer is 'meta-', the label itself
becomes useless. It would have been much better if every layer were
prefixed with something useful, such as its type (bsp-intel,
distro-arago, sw-browser). That would be meaningful. Then we could
reserve 'meta-' for the cases where we had repositories-of-layers ;-)

