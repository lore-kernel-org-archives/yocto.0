Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07437E00DD9; Fri, 26 Jan 2018 10:52:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750F5E00D6D
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 10:52:53 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id a204so1915031lfa.2
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 10:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=84+jbnp3D+WAg2F2V+n/W+W1N8L3iSkJP4I+xQBsXH0=;
	b=MV+YLphY42rEwj/R7oAKegvpJKjwNezRJNryOWJPqMAgYKXQ8imB3d2rE70Q5zDBXz
	6THvvHMQ/BFd5+MON8km43TPgTdWCzn7HseAAT7r+sVIH20ZC/BXeojXYW8KsL5xJThm
	NufgN/4jYgUAgDJHy1j5Vsnn2C0m07ZBv7kmsWvf7UnIl9en/5eWYYSatMZJkjid+oSJ
	MitopUzPQpJaZSnb467XABcNSTLHuiNGDQOwMuq7oXF90pPgR9PKUP6wniSqmqX3uqj4
	V6fjNhI7ZPPf9EcKFzdKLQ9Hak5GJhoWbskMm+EQSpyxdgtHPP0oL4dQUcPTuNM3r0xQ
	vvNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=84+jbnp3D+WAg2F2V+n/W+W1N8L3iSkJP4I+xQBsXH0=;
	b=ibJSWIZ3sbtHQiImtQ15cXzBNAqy4uveSd0MEsqt4s0ZGAxqqIJctubl3L8EbKqwBi
	xspogke8xMvT2ZQtaiCtIrgGAtm86Mn4xWQeMLeSBOaQw1h+i5yDM9L4eisCcgT1P2Ui
	doaxlFYuo0c3rZSMuizoUJb26CbN6PsMCxYfadSZMVPoeDpLJ4zx6PZGsTzmbCcwU6zQ
	IBfuXru/Hie9Ae0Pik4+9TkAJJRRhXC508Knv2zYb3kVOyhyeijXa795jTzYDWVf06Sm
	hTViEuLLwfRlkUb8Q3NExy6F5Qz0UuFRwvuW6vqgHuKGQDgRCE4Z1bCA2+PlB1G4EE7K
	rduQ==
X-Gm-Message-State: AKwxytcIAawx/2FN71zQSlbGSCpqG0Qhf7io6JwubewLlMtDX5gJ96ZY
	5Bbp3K+ruKp3/DX/uBcvMwS2sFOs9frbXA4YogcQ/how
X-Google-Smtp-Source: AH8x227G/XDFaqo5zUw9h9DUp45wSuXiTx9lsAxVZ4jHdS+GbNRhUgbMHkWS6mSdrUIvdegKXjUH3lDiO5boWsjDQq8=
X-Received: by 10.25.225.84 with SMTP id y81mr9157678lfg.96.1516992772061;
	Fri, 26 Jan 2018 10:52:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.72.15 with HTTP; Fri, 26 Jan 2018 10:52:50 -0800 (PST)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Fri, 26 Jan 2018 18:52:50 +0000
Message-ID: <CABatt_yonV4oU48rbZrQay+iYe_P-AYVZdgV5-_EL1AwvxkVqg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: image inheritance problem
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
X-List-Received-Date: Fri, 26 Jan 2018 18:52:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have an image say

my-image-minimal.bb in one layer and and append this
(my-image-minimal.bbappend) in another layer.  In this append I'm adding
IMAGE_INSTALL += "kernel-modules"
for example.

Now if I run
bitbake my-image-minimal -e | grep ^IMAGE_INSTALL
I see kernel-modules

So bbappend is working, now I have another image

my-image which has
requires /core/images/my-image-minimal.bb
...

But kernel-modules is not appearing in this image and
bitbake my-image -e | grep ^IMAGE_INSTALL

confirms this.

Any ideas as to what I'm doing wrong, I assume bitbake supports this.

I'm using the Krogoth release.

Many Thanks in advance,
Martin.

