Return-Path: <warrenphd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDFC1E00A6B; Mon, 20 Aug 2018 14:40:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (warrenphd[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA66E006AF
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 14:40:56 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id l14-v6so13815839iob.7
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 14:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wnP3UH91w4oA7j59kzxjxjT0Q8DsyOl0gEeovJztLss=;
	b=IugV27dm+4NiRlO1AtGv6Nhw6CoFj41B6TUa6Uaqc09nkob4Zz9Br1/YL+ywgqH5hN
	GTCVHGIqat8BjLZYvmRE6EFPOib4DcWmzLSwB2D/jLR1h+6fItsyRwodiNKWAocCx/Gv
	3Rl2JhIZOEYOCM7hw17UA6JpUxUWvFFS714M+rJzEbzUQ4dfzAi2FKSGVAbxl1iW1xvm
	h3Cl89veNhEguaooOVqYgUgJwuhzLMCH7mtQFBzoOiKLNNUzCdIF5JxgCNw3roGhhR9N
	M5+zjgO/prRv/KWg7Tr7Rqdt9ByqT4ZRxrB3OuvHWATmf1RAe09rJ10VkIwtw3dJQzS1
	T8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wnP3UH91w4oA7j59kzxjxjT0Q8DsyOl0gEeovJztLss=;
	b=UwfYmrz7moPLv7WXfPpplBEfhCI8eahJHnrWaoc7L8whmZhPHChZxXqwejG77J2E5e
	drznnK1wjMeHih71OuhGEDx//UJeQJ0WUgvcR1frqBTPEDSexzVGe8oubruLYpdSpCdN
	LStlS9k2sHi0YMLTmWnOkYY0Z7juQuPDoRoUyDg5j6/KUG1z4HIH2IY+9WY5TCVA6bkp
	g9d4Ed/Sjr0tpIJlCJD9Fos6ERFprbtulw2+RbgFFnI0BYeucXNhQ05U80yN+44XO4Xb
	OdIVAjCg0k8/Q2bYfWF5ghiS3UI+R1BTvRVl+lKL9HvQHTUZ4DlMqOD7cPtMxVF8wc1y
	69QA==
X-Gm-Message-State: AOUpUlH2GyC7kjUnPdJe90aTuD9LtgnZIhguyqVG2mbzynvjuuDZI9jt
	eA1lvMioP/Tvsbc5YClPabduyJZo5i9MdaP28FssEiIH
X-Google-Smtp-Source: AA+uWPwmvVt49Il0LqaMdnnLkk8WGTn88JjOEgFTY3pR7yxurRzIYbgnaDGMFxiYrIaTTUcrCXGZL2fA4VsO1ScJVZA=
X-Received: by 2002:a6b:7117:: with SMTP id
	q23-v6mr23979635iog.37.1534801255849; 
	Mon, 20 Aug 2018 14:40:55 -0700 (PDT)
MIME-Version: 1.0
From: Phillip Warren <warrenphd@gmail.com>
Date: Mon, 20 Aug 2018 16:40:44 -0500
Message-ID: <CAOiuRWVW+UFZcQR4MYHW13+VORjooUj6hQUGKu5QG78=bKzpHQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: opkg
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
X-List-Received-Date: Mon, 20 Aug 2018 21:40:57 -0000
Content-Type: text/plain; charset="UTF-8"

Hi, I'm currently working on the pyro branch (2.3.4) and have a need
to support opkg list-upgradable; however, when I execute opkg
list-upgradable, I receive the following error:

Collected errors:
 * opkg_list_upgradable_cmd: list-upgradable command not available
with external solver enabled

The pyro opkg version is:
~# opkg --version
opkg version 0.3.4 (libsolv 0.6.26)

What is the simplest way to enable the list-upgradeable option for opkg?

1. Write a .bbappend to apply the patch to the 0.3.4 source that
enables this functionality? Where might I locate this patch?
2. Fast-forward opkg 0.3.4 to a newer version? What's the approved way
to do this within the yocto environment?

Thanks!
Phillip Warren

