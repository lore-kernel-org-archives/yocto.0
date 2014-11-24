Return-Path: <lqb.list@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E652E008C1; Mon, 24 Nov 2014 05:45:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lqb.list[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.193 listed in list.dnswl.org]
Received: from mail-wi0-f193.google.com (mail-wi0-f193.google.com
	[209.85.212.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B62BE00837
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 05:45:15 -0800 (PST)
Received: by mail-wi0-f193.google.com with SMTP id bs8so2240832wib.4
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 05:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=WoQvQzFlSb4siPuoCZkRl8okh0vBnFkmpQlnSJzlAto=;
	b=Aww+k2bNUDUKjWDiFlKo8fd0zukcjoTwISsSu8eNDJOvLOIY1wwGgedVM+beoq6Nce
	xTneK1lq/lt2FRD5ikqm7RGfcfoKaDlUMVLd7R0R9NEkN9fbmeZNrx8ozxzxtD7QUWnK
	DfA2fl8NLLNSUCYULzTKXQD5AkqY8s7R6jFdYWXXoTpRke6vAjvNFnzQdg6Z0U24HtCP
	RcOWU+lhUeeyD4pCizUU2ZPAL1QnpwbB7Pw4WAXAsytnpNhrvhqNE8Rut/OYHBW5tvC7
	Ixcm0eaf+Wjc0+ZnOarwvI6bjepkhxr4ZT/rtFyuO0QY4iuMPNGiA8QLy9DZAVD5Yh86
	Refw==
MIME-Version: 1.0
X-Received: by 10.194.172.4 with SMTP id ay4mr34916146wjc.13.1416836714992;
	Mon, 24 Nov 2014 05:45:14 -0800 (PST)
Received: by 10.194.246.10 with HTTP; Mon, 24 Nov 2014 05:45:14 -0800 (PST)
Date: Mon, 24 Nov 2014 14:45:14 +0100
Message-ID: <CALc+gEH68EmaSYWqm0O7S6gfRSWkWtMpVw1-ZPZ+hNMHfDv-Fg@mail.gmail.com>
From: Lorenz B <lqb.list@gmail.com>
To: yocto@yoctoproject.org
Subject: How can I create a rootfs from packages
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
X-List-Received-Date: Mon, 24 Nov 2014 13:45:17 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I compiled an core-image-minimal and put the resulting ipk packages on
a http-server.
I saved the package list, too.

Now I want to rebuild the rootfs image out of those ipk packages.

But if I try with opkg (from the toolchain created with meta-toolchain
recipe) some postinst scripts fail because this scripts wants to write
a file e.g. in /etc which is my real root and not the root directory
(-o option from opkg) for image creation.

I think I have to use pseudo or fakeroot to execute the postinst
scripts but I have no Idea how to intercept the postinst call.

I tried with bitbake, too. But the URL in FEED_URIS are ignored.
Instead the packages are created  (from the sstate-cache) and install
from local feed.

Can anybody help to solve my problem or give me some hints, please?

Thanks,
Lorenz

