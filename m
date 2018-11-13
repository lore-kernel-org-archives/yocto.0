Return-Path: <da3drus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8FEFE00C3D; Tue, 13 Nov 2018 01:10:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (da3drus[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE819E00B77
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 01:10:29 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id g188-v6so9661092oif.8
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 01:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0A4XBawJB8zMK1LVJBywnoxL6Cu+8XMOJ3TSJfkVujg=;
	b=FmDxBSoEc4f1GlSLxIeUqjgHbN/1ffvNwwelV1mPMKt0qCkyCck6oBloazzJivswlP
	fTAmde/WxWVTc/xRFVOMaTBzpb3wQqjC85qRIcjjDvkmOvvTbisaY7PzAcwfQgbQMxa9
	joBtzGQycgl98tYyRyptcF9OcF95PYS9tbPUfEpdh2lx/UCBpHgNAfVRNthmWGYCLLhP
	iz1AE/gB/UtP57/40xZsqvNFqRQoUeUCDU/ZT3+h4pMNlz2nSL57p6p+fj31c1Z2Kz5Y
	6L3pGzhgRyb+Eo5b5i0sYkYLCrq+cJVaO6QwS4iIyXbpwrGyE5IMjzjlKsEaO7NthtRz
	Ezmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0A4XBawJB8zMK1LVJBywnoxL6Cu+8XMOJ3TSJfkVujg=;
	b=Rtrygd9TK8TV0Pjq2WxTJi1Xl0Jj6nVJxaJnc0ksWn3z6zQb9JyP9GBccCpPqXBDt/
	495zSO+h+WKHXRYzmRKpKEDf5i71IQC86HDvKvRvJDcR3QxkUg0FqC8Ffsh06ozZtXAu
	hFS1ef6mMJCxjJyuqkbMJeAWtxn6HAuN9nX82ut3b4I6Pp3L5CSUn0BPULatR3hZgLh7
	ElGJQqnr8HR89i8xpX+98MyWYk4kO81PSg0MUVcFDhZ/WDiEzLyBqFpxpuvEV79j7H6T
	YpqLefG3IbBi1uMkCE1+RRcburn/pk7QUZ2ANpxpGrZlpOmjsXcohz5oAvmd3RHtr9WA
	eRbA==
X-Gm-Message-State: AGRZ1gJRrueUJQaHak926wDVHTbyox4bgafB8J93eQ6aeyu4r1gu9aQm
	dD0aUgnuYh3Eg8OjxZh4GjM1i293gnfasTfCmnIDVwsV
X-Google-Smtp-Source: AJdET5ecul5cwSDSkqU/FBdGHgFIFFK1ZNizBLiP5QPtJ+rvXhQd8qKWEL9VGS5pHwBGyrNuFvF//sfrDUZtKTbcThE=
X-Received: by 2002:aca:c003:: with SMTP id q3-v6mr2554238oif.45.1542100228984;
	Tue, 13 Nov 2018 01:10:28 -0800 (PST)
MIME-Version: 1.0
From: Andrei Faur <da3drus@gmail.com>
Date: Tue, 13 Nov 2018 10:10:17 +0100
Message-ID: <CAP67t3_mUdsabQm6X-2iUda-42is1mxt0M5vKhSEqryAOPZYTw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Building multiple U-Boot binaries (with different patch sets)
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
X-List-Received-Date: Tue, 13 Nov 2018 09:10:30 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

My scenario is the following: I have two sets of U-Boot patches and I want to
create two separate images, each one containing a U-Boot built with one of the
patch sets. Everything else in the two images (kernel, rootfs) is the same. I am
using Yocto Rocko.


Searching this list and various other forums I found several ways of doing this:

1. Use two machine files and then in u-boot-imx_%.bbappend:
  SRC_URI_machine1 += "file://patch1.patch \
                       file://patch2.patch"
  SRC_URI_machine2 += "file://patch3.patch \
                       file://patch4.patch"

2. Try to do something like this
https://www.yoctoproject.org/docs/2.4.2/mega-manual/mega-manual.html#platdev-building-targets-with-multiple-configurations
https://lists.yoctoproject.org/pipermail/yocto/2017-October/038460.html

3. Find a way to expand on this approach, where separate U-Boot images are built
based on UBOOT_CONFIG:
https://lists.yoctoproject.org/pipermail/meta-freescale/2016-January/017257.html


My issue with 1. is that it is abusing the "machine" concept a bit since I am
not really building for separate targets.

The problem with 2. is that it feels like a very heavyweight approach to solve
an issue which is (in theory at least) very light: one recipe (U-Boot in this
case) needs to be built differently depending on which image it ends up in. Yes,
I know that is not how the system works:
https://lists.yoctoproject.org/pipermail/yocto/2014-June/020083.html
But still, that is my use case.

I find 3. to be the most straightforward approach but my problem is that I don't
know how to modify the SRC_URI variable depending on UBOOT_CONFIG. I am not even
sure if this is possible to do, can compilation be triggered twice based on
UBOOT_CONFIG at all?


Is there a recommended way of doing this? Are there any other approaches?

--
Andrei Faur

