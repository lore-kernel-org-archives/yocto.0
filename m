Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3877AE00971; Thu, 15 Nov 2018 06:37:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0484E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:37:02 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id f84-v6so8380130ita.1
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IiISrmzeNs7nFugHib0KW/q/aI0YT8EpbmGOUoqkezI=;
	b=biSkn43YZACMnLDkZ9mdOZqJr7+tLGw03NrGVjRfDajHO+FkXj1YCIJb9WlW28lTk2
	3XqQcSTmeAE6PhdNaz8iRUbIJm2xSzarqWcKnItXMi7cFvMdnmzBi+Ho8/WJU/LbrgLl
	NUa/vht6+J/3RuZFjeANo8walE2z1RmnT1I1+DIAZ9BIhKVNofm++Swe/VHkKniAX/HO
	8Ubkb/hXcheSGp1I8Up1MJNKhNLkCaNNXve04tDyxhuJcJrQmIfkXfpJSmhLH00yhq8+
	AaI+pXMNdauxqcz97NCvYOoSm4IVnnYogqm6Hjq0N7c1EBM1fFvirT8suMMZ6qucthLh
	HVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IiISrmzeNs7nFugHib0KW/q/aI0YT8EpbmGOUoqkezI=;
	b=lDDKF3ohGHMMr23czEipdiljveQVUe7fA5gstHI04hLSsd/KSO5I4zy/SIISF25KZQ
	njXhJ5LXbiozUyvI3m3fQrMFIzrX/cApiQ2d7nRq9XqS4Fu6RZwxJtJW+ZO8a2wAHhzc
	E/+pJphxCQ0qNenR0o+qLWi9CidKrlt1M1ofcpUvVpL3DNJwEPRyh0JhPIu8BimHPJyd
	PFMjpIRyXEeINh7bb8cfDBsKU+vmIrdDNt3kr+n9SB9HxBBbx2nKazGZHE1E7cVwhuWz
	2acAPvimAdZDq71Xd6gi5x2ppEoSvw+biG3x9b2xtg2T3wgNy5gNRXhH2ShbXxkPA5yI
	cZpA==
X-Gm-Message-State: AGRZ1gJLxkzz6lXzYFOfNPlJiDnKUHH5KvD+Df6H41L3DjCgrhMZetH2
	0289D60IUtucnJwdGXF4H16VMFVdjgAz/zyTNEzPWA==
X-Google-Smtp-Source: AFSGD/V2IZib6m2A3IAzopycLZ1ZLPi5jIBBQEh8SEaV3g5VhM1QBIXTKX9qjcVY3gnN8j/RRZ106yx81zE/a3qd9uQ=
X-Received: by 2002:a24:1d8e:: with SMTP id
	136-v6mr5632650itj.62.1542292622448; 
	Thu, 15 Nov 2018 06:37:02 -0800 (PST)
MIME-Version: 1.0
References: <20181115141359.31763-1-ste.lendl@gmail.com>
In-Reply-To: <20181115141359.31763-1-ste.lendl@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Nov 2018 14:36:50 +0000
Message-ID: <CAJTo0Lb1eO+xz_c9UMnx2-3Sh4DFb3bi-amKqr9YsLrhD_V2_Q@mail.gmail.com>
To: ste.lendl@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [PATCH] Use lynis download link from github releases
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
X-List-Received-Date: Thu, 15 Nov 2018 14:37:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Nov 2018 at 14:29, Stefan Lendl <ste.lendl@gmail.com> wrote:
> -SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
> +SRC_URI = "https://github.com/CISOfy/lynis/archive/${PV}.tar.gz"

NAK.

Those tarballs are generated on demand by github so over time *will*
change.  If they don't host generated tarballs (similar URL but the
filename isn't the tag name) then the only alternative is to use the
git fetcher.

Ross

