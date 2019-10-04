Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB699E00DA4; Fri,  4 Oct 2019 04:26:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 875C7E00D4A
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 04:26:32 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id z19so12810892ior.0
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 04:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ooJA7kalNc4GHdBseonfFsnaIqh4W02sDKq3cP304QA=;
	b=n+YqK3Hook3tYNTacWopGUFxub/qTHs/A7/ppItgkaZuEqUXS9quuDgRm3lPui6/K5
	z4D25CYXOKEF9LlWRpaosuPGmh9Ga85cFu4f2OVd5g62JOJ/s0Vzlj3TC0TIzMeZmVeK
	+Chs8e1/LnelkYTzGHVWAQfv0ys/9bQLlShRlKuVZg/IebTTtihIpCwCp0jcwcLXgG0K
	i3Iwcqys6CBCJgg2F74eO1pB/P3/imVO4DThBlJw/5GcjCcG/mXt5ite7Ssn4DW7ozu7
	/kYp3Uz11icxtQR9Yc0Iz9YKIOhLO40lIsZRmknR0aYYJ5E1DnkWJ6r9WY+42iCJW/P8
	k2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ooJA7kalNc4GHdBseonfFsnaIqh4W02sDKq3cP304QA=;
	b=ZStdnElkyAtHdiwHTSyMKPRSo2mnCKayROxv1Gn1lo3iR8iR1etlGVNnF7tdE3pb44
	/aU3ERiBgJKPqTtfjnQbyOxxfRdq5IkM8LcOYn2efl1n49vkKVvLhLC/gTMDW+uGDe/E
	iPYS499LJmpB8oH8neFNsVYZD3TRqCw2ojzO+Z6oNrEdQYG4YLPZSOEqGbMS0Aa1vmlX
	aDbBYntEd6rPbvFuHnYl7AmiUJEpIBCVIzgDyYVsOsrZBV7SNoabcqEaqhEF7wdaUQqW
	RvDK0qG7yM/o00DqZG87o3fUlSfcBgOS9DH4XlAG/Zk+vqCG8Hxc1bLelMzw+zTb4xut
	1uig==
X-Gm-Message-State: APjAAAWiB5DsafLOKkLB6Nr+Wuk1q5jlqPs+SS3ZqDG44mqDhlaYJo1b
	ZfKdXH4q2EPcnqYvUJMgQxqUuwIdjyRbdx/aAjHOVJpW
X-Google-Smtp-Source: APXvYqxJACTqfql7yNNiQYnJxmboKTttNZRyQwMy2viiz9sZesjVEEkqR6eMcjxGORa3ZR9pJuxCr0K2zLrXPZk6C8k=
X-Received: by 2002:a92:2801:: with SMTP id l1mr15665145ilf.192.1570188391431; 
	Fri, 04 Oct 2019 04:26:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
	Fri, 4 Oct 2019 04:26:30 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 4 Oct 2019 21:26:30 +1000
Message-ID: <CAA=hcWQxUaCcNW2GxyoO6cx1i7OFUip8y-BaBVWtB1-A=OWPRQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: kernel.bbclass do_bundle_initramfs did not work
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
X-List-Received-Date: Fri, 04 Oct 2019 11:26:33 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

It seems to me if both INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE are
set it should generate initramfs, but I did not get. I set up in my
image:

INITRAMFS_IMAGE = "zImage-initramfs"
INITRAMFS_IMAGE_BUNDLE = "1"

But it did not build zImage-initramfs, what I could be missing here?

Thank you.

Kind regards,

- jh

