Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5996E00A9A; Tue, 14 Aug 2018 04:57:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00, DATE_IN_PAST_12_24, 
	DKIM_SIGNED, DKIM_VALID,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* 1.0 DATE_IN_PAST_12_24 Date: is 12 to 24 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64321E009D4
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:55:14 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id v26-v6so17933064iog.5
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:mime-version:content-disposition
	:content-transfer-encoding:user-agent;
	bh=4y6SDwu6CedKYkeF8m/Y/Pgy+bcNkhwONqs9minVfE4=;
	b=j3tayeEx2db03vc/Nkr2WDJv/AW+lZtirGma9Jk93ezBnGyDmlCyiAKGSxS2TwQK0d
	RpctG1Nbw7r5jHoW6R3pdrnetMlkUma/bG5Us2jVT4shZSur7cbi//cdQeRzCs9jY1Ua
	S0aIXSSS0W4HYG86QTFEd+3iEboMDhL1E+nHnbdLnmvMFMp31+Ei38leYh8zsJEbGRaW
	1RCwxFQ7AmbM/Y9ZBsP2hZQDdHUPol+aq5hwlvQI9/am0Xv2SRRUZEKnEkGL7dL92C1o
	5bZvetMANxj3DzkaHc5WRh0GHskVO7J6iEIufsYn/zQApCWSjHYHqQIJ0EC4IzAvY8B5
	2viA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
	:content-disposition:content-transfer-encoding:user-agent;
	bh=4y6SDwu6CedKYkeF8m/Y/Pgy+bcNkhwONqs9minVfE4=;
	b=jgCC6c4taB9EHVvE4J6bkmNeiXzCmT8SWMDCzlmsOajdAnk314KNq+itD6N+IhItxT
	ZyVknplmenBKXoKAeyP6Hnw4yh00BVdpwldd3ZKRsIZadq0jgYGCkU1U5oZY5LRmvtmG
	U0BVegAOsax2BiKmassENi9H6dVMRnIhwVaSTZ/B42YkwPLsozX/1unop5FRRhFqLZ8C
	mg93Wy9e4Z4kA9dl2UG3fjsqc3mSzta2kGUEBgrcA1g+xw7tAuSKRNXwew/hK08x3W12
	IkQVyblE0LNAn8QzSstj6RJN0BVG8IJl7m12zbm40QXXoHFEAimSYcTu1lpCea0jwnBT
	r9oQ==
X-Gm-Message-State: AOUpUlG4fTTkTnpO95pSOH6r51X7P/cHiHgz7g+QxbH/GnQ9iMgzYP6F
	zSB3iP0sXM2Uak44SC/0iFOGfF1aG6w=
X-Google-Smtp-Source: AA+uWPyRkWQgYUyAL8AjmGpoU9eByGat0id0NWWWRu8KxsHvdmxK66FJC8B+VH66+0LN12DGWC92CA==
X-Received: by 2002:a6b:15c2:: with SMTP id
	185-v6mr14754417iov.161.1534247713731; 
	Tue, 14 Aug 2018 04:55:13 -0700 (PDT)
Received: from deserted.net (23-233-29-148.cpe.pppoe.ca. [23.233.29.148])
	by smtp.gmail.com with ESMTPSA id
	b90-v6sm6658490itd.18.2018.08.14.04.55.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Aug 2018 04:55:12 -0700 (PDT)
Received: by deserted.net (Postfix, from userid 1000)
	id 3720821A006B; Mon, 13 Aug 2018 13:49:31 -0400 (EDT)
Date: Mon, 13 Aug 2018 13:49:31 -0400
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Message-ID: <20180813174821.GA19718@deserted.net>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [meta-selinux] master branch updates
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
X-List-Received-Date: Tue, 14 Aug 2018 11:57:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Hi all,

Just a quick update on meta-selinux since we don't have a patchworks I
can point anyone to for checking the status of their patches.

I've merged 9 commits from the past couple of months that appear to be
functional changes and that restore building status (for at least an
selinux-enabled core-image-minimal and core-image-sato on x86_64).
There were a number of additional patches that appeared to be cleanup in
nature which did not apply to any version of master I was able to
quickly identify, so I'm leaving those aside.  I suspect there were also
some patches that did not get a [meta-selinux] tag in the subject line
for the mailing list.

If you don't see your patch in the tree now and you think we still need
it, please send it out again, ensuring you get [meta-selinux] in the
subject so there's no chance it gets missed by my mail filters.

I'm aware of build and boot issues on arm and arm64, I'm looking at
getting that functional now, but if you've got changes to support those
that have presumably fallen through the cracks, please feel free to send
them again or point me at them in the archives.

Thanks.

--=20
-Joe MacDonald.
:wq

