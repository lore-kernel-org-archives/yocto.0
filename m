Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F88BE00D88; Thu,  4 Jul 2019 03:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7788E00D35
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 03:27:26 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id g20so2235822ioc.12
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 03:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=P3Hks1rA1z3uPCNsRqZVWzwUNRsNGzJ9+kjsatg+NTw=;
	b=GVFL/D30AE5MWUI/rD0ERmvnaJnDTl/bjvWKMzKQrcOpR7OOE/eviZYjsi7lIoc8zK
	prXWJc9QHLhqWo6iAP1P4UHY9hTLb8voxNb0A9gI59PjLEyg5DswkHTGeQVXye5BYm+3
	knMuFc7ImiUs4dLx0A9fJgdD8NaJVBvZk3ffUTWcA7POCVe6FbgiU3GUCloahjJFhCAw
	2GE5W77XAnSEXdmBqamt8hsset1+l5+wgTQPBO41xoO8d5sPKq3eGaq9JGsHhxcxOhlY
	SEP0RhE3waiERy24fTST6eePdKNVoJwh9bdkD99hg7F/SsAYNoJiwcrMR54taQo++weU
	zlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=P3Hks1rA1z3uPCNsRqZVWzwUNRsNGzJ9+kjsatg+NTw=;
	b=KsrkjmbsCvfpE2p9O+kqj8Ato3eCCWOGMETb0iGJdLB7Nbd7YIsqT9wXDPJ6R2qeco
	8SaYGSsV3CbAQdCAydXhvsmJKjbszqIM3rQpeecjoID6Lj0DM3Fv1iy1t+xo6dwye8bw
	AJi6Ryzf+sWacREA2YR5Lx95ZrK7qrL9j1PCxdI3mJOmCGBBggOR5PJcOnZqJgyBgcMV
	i3C2UM2FI0+nNq0VvptmkZ10wdtk1Nw4leR2WL4sFYPetuflH64w9yOhxmKAIjKP+8Md
	zRIuyFAe5YAOABntfPuQhb0RLhnIXAe0kiDPGhwUhmRudx4nVkAzT2M4TAvU/JYLyePI
	jivQ==
X-Gm-Message-State: APjAAAVjzrUfzhnBCvNs/Kl8ePFFiPQqEF3hmqvrMrKAjTnSPYFKZsDc
	XKjLLnBlbQpYyEIJ4JBUidzOGAkLvJdiPpcar0smRETV8Uk=
X-Google-Smtp-Source: APXvYqxwVnf+6R7VZ6TXdVzGFf+6+ExMlRL5wbCT5gPM9O0USCKbddJTRMSFjXPhD7vLSUkbx7KWGvZrGiCCMobAh+w=
X-Received: by 2002:a02:b395:: with SMTP id p21mr49250985jan.31.1562236046268; 
	Thu, 04 Jul 2019 03:27:26 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
	<9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
	<CAJTo0LbvoJNCAncDpSk-yUQSN=x3Oge4R-bQJV-6MzYTKHmvwg@mail.gmail.com>
	<1f5813cde712457c8eae5ce20a5e90e2@trijicon.com>
	<CAJTo0LYApGjZXeQFP+gr_55cXaKwOGahnW4Zp83M8Hj+pSNOZQ@mail.gmail.com>
	<9d65e7b2c1794d4ab7618a9a769b4bf9@trijicon.com>
	<CAJTo0LYxA818Q3vmOea4rRffiJR=XkSkRe3cSMPtc+7otQuo7A@mail.gmail.com>
	<cfaa374acb35448ca38b96cde6bc8320@trijicon.com>
In-Reply-To: <cfaa374acb35448ca38b96cde6bc8320@trijicon.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jul 2019 11:27:15 +0100
Message-ID: <CAJTo0LYCAxzb37f2QhzVvdpOArjWzSFKK-oTwOj3ssHNrJKKGw@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Thu, 04 Jul 2019 10:27:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 3 Jul 2019 at 20:54, Chad Gong <cgong@trijicon.com> wrote:
> I opened the log.do_fetch file, and it looks like a file git2_github.com.=
thkukuk.libnsl.tar.gz was downloaded from the mirror site http://downloads.=
yoctoproject.org/mirror/sources/git2_github.com.thkukuk.libnsl.tar.gz .Then=
 an error happened with tar, as shown below:
>
> tar -xzf /home/chad/mybuild-coreimageminimal-270-2/downloads/git2_github.=
com.thkukuk.libnsl.tar.gz failed with exit code 2, output:
>
> gzip: stdin: not in gzip format
> tar: Child returned status 1
> tar: Error is not recoverable: exiting now

$ wget http://downloads.yoctoproject.org/mirror/sources/git2_github.com.thk=
ukuk.libnsl.tar.gz
...
$ file git2_github.com.thkukuk.libnsl.tar.gz
git2_github.com.thkukuk.libnsl.tar.gz: gzip compressed data, last
modified: Tue Jul 31 07:59:20 2018, from Unix
$ tar ztvf git2_github.com.thkukuk.libnsl.tar.gz
drwxr-xr-x pokybuild/users   0 2018-07-31 08:46 ./
-rw-r--r-- pokybuild/users 955 2018-07-31 08:46 ./packed-refs
drwxr-xr-x pokybuild/users   0 2018-07-31 08:46 ./objects/

Can you see what happened to your local file?  Still looks like you've
got network issues.

Oh, and you can share DL_DIR between builds, so I'd move it out of
your build directory.

Ross

