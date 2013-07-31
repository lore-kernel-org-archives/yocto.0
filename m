Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66059E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 11:45:26 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id h11so1137311vbh.16
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 11:45:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=yIqsdFrTeyE7ylEqyac3OR3YvisbDAURtCL/csNGVcc=;
	b=gH4NCvfcOHiRHr4oNkdgnw1fxqC6CvXiF0pNK+mbpT/GESTrNL8beFUqBUNBorNgYX
	uCAeRPAoUJhpQAE3Y4/5noHRIsfbxoh5t1fWa8LlFG6MxecWj2O1L6pFomTZIZHtbxpM
	4+kqFTqvIeP6aPVaB6LY7fytkte19KZCVG4hXyAjxXFboGvaEdI/l6Gv5xmxbEv/R/Sr
	nSg2G84zhCxhLjOI+VO3aPV4srHsT8eE5I/iYTmGOdU87msMDoxh61hWA/zoYODSOxXP
	VXuaaqz69qn5Is1D8Aa8+e9OBChPm/QIKO1jhp19nPB52ztG0VEL5yKRrjN3rvKKt4KM
	260A==
X-Received: by 10.58.118.70 with SMTP id kk6mr29076211veb.1.1375296325875;
	Wed, 31 Jul 2013 11:45:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 31 Jul 2013 11:45:05 -0700 (PDT)
In-Reply-To: <E94D6C02-CADD-4109-97AE-6979171970FA@taser.com>
References: <E94D6C02-CADD-4109-97AE-6979171970FA@taser.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Jul 2013 19:45:05 +0100
Message-ID: <CAJTo0LbpwbUwjRmytE-jiJ2OBihvQt5eUkQbZBpsork69jHg_w@mail.gmail.com>
To: Brad Litterell <bradl@taser.com>
X-Gm-Message-State: ALoCoQm2mh9ZMDh0J3w1BomMzS5GyIGLalOrC3eEyNCzwFHFgEe1iFOilANyT79/PJpDeDLQLQxQ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add new recipe - getting QA error I don't understand
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
X-List-Received-Date: Wed, 31 Jul 2013 18:45:28 -0000
Content-Type: text/plain; charset=UTF-8

Hi Brad,

On 31 July 2013 18:52, Brad Litterell <bradl@taser.com> wrote:
> I'm new to Yocto, so please let me know if this is the wrong list for
> questions like this.

You've got the right list for support question.

> I'm trying to add a recipe for a new cmake project (for UCI).  The
> do_package_qa task reports this problem:
>
> ERROR: QA Issue: uci rdepends on uci-dev
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
>
> uci-dev appears to be automatically generated package - there is no recipe
> for it, and I can't find any reference to it in the actual source code for
> the package.  In other words, it appears as if Yocto itself is generating
> this dependency somehow.

Correct, oe-core will generate a -dev package by default that contains
(typically) /usr/include and /usr/lib/lib*.so.

This warning indicates that the automatic library dependency
generation added a dependency from uci to uci-dev.  It sounds like
that UCI isn't installing versioned libraries (so eg
/usr/lib/libuci.so is the full library, not a symlink) and the main
uci package is shipping a binary that links to it.

If that's the case then basically UCI is doing shared libraries badly,
and you'll have to tweak the packaging.  Adding to FILES_${PN} to
include all of /usr/lib should put all the libraries into "uci".

> PV = "2011-07-18.3"

I think hyphen in PV isn't recommended, but you can avoid setting this
if you embed the version in the filename.

> #see https://forum.openwrt.org/viewtopic.php?id=15243 for git
> SRC_URI = "file://uci-${PV}.tar.gz"

I presume you have a reason to have a local snapshot of the repo and
are not using a git URI in SRC_URI directly?

Ross

