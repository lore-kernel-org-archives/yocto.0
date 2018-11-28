Return-Path: <enrico.scholz@sigma-chemnitz.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51E6CE00C75; Wed, 28 Nov 2018 04:18:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [193.158.56.148 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.cvg.de (mail.cvg.de [193.158.56.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED56E00C71
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:18:42 -0800 (PST)
Received: from mail-mta-0.intern.sigma-chemnitz.de
	(mail-mta-0.intern.sigma-chemnitz.de [192.168.12.76])
	by mailout-1.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wASCIeRM016751
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK)
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 13:18:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2012061000; t=1543407520;
	bh=RsZgaxSiUod2fWxZQXAoKHgt7d6d3t0d2AcyhaUI5PU=; l=643;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=AmT8+iR0qL91jdrDIn+SmdmCu/TwPe80ykngn6K1ZSG2ZVmIK6V3alhCm89UEWKDv
	VUzYjG+zgBfUofOGj9s1qj4gLFyqXKaQSkZhFsKYEtb9cyCI2bYKW08VN6SB7ZxbZY
	mIP1PD8yo6D72ffNX+F2yV6skrCUHlMNbvzI/ncE=
Received: from reddoxx.intern.sigma-chemnitz.de
	(reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
	by mail-mta-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wASCIXXe011750
	for <yocto@yoctoproject.org> from enrico.scholz@sigma-chemnitz.de;
	Wed, 28 Nov 2018 13:18:34 +0100
Received: from mail-msa-0.intern.sigma-chemnitz.de ( [192.168.12.77]) by
	reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id CF8E7E0B68;
	Wed, 28 Nov 2018 13:19:03 +0100
Received: from ensc-virt.intern.sigma-chemnitz.de
	(ensc-virt.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wASCIWCD011746
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NO); Wed, 28 Nov 2018 13:18:32 +0100
Received: from ensc by ensc-virt.intern.sigma-chemnitz.de with local (Exim
	4.91) (envelope-from <ensc@sigma-chemnitz.de>)
	id 1gRynY-002I9w-B6; Wed, 28 Nov 2018 13:18:32 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: yocto@yoctoproject.org
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
Date: Wed, 28 Nov 2018 13:18:32 +0100
In-Reply-To: <CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	(Zoran Stojsavljevic's message of "Wed, 28 Nov 2018 12:00:22 +0100")
Message-ID: <lymuptpf8n.fsf@ensc-virt.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Sender: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
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
X-List-Received-Date: Wed, 28 Nov 2018 12:18:44 -0000
Content-Type: text/plain

Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> writes:

> On the other note, repo is GOOGLE tool. Promoted by them. Most of the
> ARM followers (such as Toradex) use repo tool.

fwiw, I suggest to use just the plain 'git submodule'.  It works perfectly
to build a BSP and uses a native git workflow.  E.g. look at

             https://gitlab.com/ensc-groups/bpi-router/BSP

A plain 'git clone --recursive' will download the complete BSP and you
can use 'git remote update --remote' to synchronize layers.


Google 'repo' is crap and adds only a very small value (better mirroring
and 'repo grep') compared to submodules.



Enrico

