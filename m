Return-Path: <lschwab@xeralux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28D13E0093B; Mon, 22 Dec 2014 19:09:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CD3FE008F5
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 19:09:29 -0800 (PST)
Received: by mail-yh0-f52.google.com with SMTP id z6so2816262yhz.39
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 19:09:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=hTkzrA08EjQc36pssDD7qhuhX05YV1JjS5R6Uz7xft4=;
	b=WkCCGXh26cyFYuaP4c9xgxiNGhPN9nfoYJmHuBmIwlFTYtjKsk56MukT52FAreMPR9
	s6ymj7UBKUpMvf3qkTA0lFD2obZm/iOKRLHxM60iXeJY7qPIVezMf/Zlabx/a6hYLG4l
	SJ+DaoqFj+eS5uRCnq/v4/DXsr9Oozdp2cWYvpIZ6dc/5ZkQxh1lGuSSmSIjEot0Kj4y
	gTSq9E7DNJ8jFHzw/PhMcBDU9Jf0LAevskW99ZiCAIq/oRD+VrsX27Ky8st5dBqDajuO
	2Ak0WzqoVzlY4zDlb0RInbiyYgG5S77+8HgC8yzl3TjJh/aeQqM2NVQ2eQI6eJAYXkS9
	aA/w==
X-Gm-Message-State: ALoCoQnCYdyvqIwZRxkIjtGo4hSQsfnKgZbgjPv+nIji1+pDLLQrdRRE7AHY8QWOd5oOJq/BHNFy
MIME-Version: 1.0
X-Received: by 10.170.188.8 with SMTP id f8mr23192066yke.114.1419304168964;
	Mon, 22 Dec 2014 19:09:28 -0800 (PST)
Received: by 10.170.36.199 with HTTP; Mon, 22 Dec 2014 19:09:28 -0800 (PST)
Date: Mon, 22 Dec 2014 19:09:28 -0800
Message-ID: <CALb2248jSjqK9ALwTsNfgeLkhmF2Ka+mhe5s6N1U51emFEbJVQ@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto <yocto@yoctoproject.org>
Subject: Distro vs. Image
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
X-List-Received-Date: Tue, 23 Dec 2014 03:09:36 -0000
Content-Type: text/plain; charset=UTF-8

Up to this point, all our builds for our prototypes have been "image"
builds, i.e. we built an image recipe starting with
packagegroup-core-boot, and it's accreted from there.  We write the
resulting .sdcard image file to an SD card and boot from that.

Now we would like to create an "installer" image, i.e. a bootable
image whose job is to install a release(-candidate) image to the HW.
Naturally, some config details in the resulting image will be
different.  The more I read, it feels like this wants to be a
"distro," rather than just another image recipe.  Recipes searching
for files will automagically generate subdirectory search paths based
on current distro name, which would allow us to substitute different
config files based on what's being built.  (Extra Credit for this
build would be to incorporate a copy of the release image into the
installer image.)

Trouble is, none of the docs I've read describe very clearly how to
make the leap from cobbling image recipes together to creating a
functionally equivalent distro recipe.  Could someone point out some
resources and examples on how this is meant to be conceptualized and
used?  Thanks in advance for all suggestions.

Schwab

