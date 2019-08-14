Return-Path: <rick.liu@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F60AE00DD3; Wed, 14 Aug 2019 13:19:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBE9E00CDF
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 13:19:04 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id z63so51312ywz.9
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 13:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=6/fvsvQfKfic3d19fl7vR1eN7yzmAP/0lk5p5KNL8dY=;
	b=hQQk32CdgCENS0MVDVh3ry7P5ckVoM7a/5zzZm/VDELp69do+LC+/WvcZ36V5nT8x/
	/hzw5ZFMfz5nuF9aL7Cm6dxAQiiMNignABPRzZDJlecM858F/Dmy/gVBuO+6niGRnkxH
	iJPAEo357PIwWAnekezXQFfFwXVOXQOHjpjpg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6/fvsvQfKfic3d19fl7vR1eN7yzmAP/0lk5p5KNL8dY=;
	b=qrKXrugDMwUzajtLZ6fB0YoDlfvJ82NN4steNy8LMGvR6GE/TMAFIdKJALjmR91p14
	XjM07jyhGgLcDAGkJK0gKxln8YP1m3phv2t2KPFmk1b7JjCNCrBd/rUwv9sqo6nEgIAG
	FpLKexL2lSE2pIwLBRv9lHz4ovVZi4MG+f/G5TcjWu36RgCO+sHtRuh0Tw2TAWYKXkTN
	H2gjotxd8gMTUZ+RdC0qs1WT9bPRrI8XjQ5j/0VYeP0gaNMN5u9xnZw4lm+al02PP6wM
	l6RoN/J+/pss/Dli8NEEahQNM8vymweWWpgZjxYvhkn5zU50iHEQzuC/N6/q+OxAnvOE
	RYUw==
X-Gm-Message-State: APjAAAWmhQn31ZRBf4WZpyweE7w5Zmha2yDuHhBDgD9X7+OwYr08jgyl
	MY9sng6uMnz2vHbcxgxQBle+TlHCg6T2R+4PoDN2ujI6Uqad/t4=
X-Google-Smtp-Source: APXvYqxvDoCvZaEY0jFJZXy3BMUK4w8Dt3ss3RBWB7y59gdW3nxbZ3sd23fiYySWZ3O97HoLVdOxI9mld/IVka9IWNc=
X-Received: by 2002:a0d:d0c6:: with SMTP id s189mr728702ywd.339.1565813944021; 
	Wed, 14 Aug 2019 13:19:04 -0700 (PDT)
MIME-Version: 1.0
From: Rick Liu <rick.liu@broadcom.com>
Date: Wed, 14 Aug 2019 13:18:53 -0700
Message-ID: <CAKmBsab+ZgVk8TrF7dre-bY-ti1N9=CuN4+gPkQXfxaAxHPhkg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Bitbake local.conf variable been override by weak assignment
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
X-List-Received-Date: Wed, 14 Aug 2019 20:19:05 -0000
Content-Type: text/plain; charset="UTF-8"

I have defined a global default value BRCM_NXT-RELEASE-216_BRANCH in local.conf,
and setup a weak assignment (?=) in my recipe,
but somehow the weak assignment override the local.conf global default value.
Does anyone have any idea?

build/conf/local.conf:
BRCM_NXT-RELEASE-216_BRANCH = "SIT_int_nxt_v216.1.15.0"
PREFERRED_VERSION_brcm-nxt-l2-drv = "nxtrelease%"

meta-brcm/meta-datacenter/recipes-kernel/nxt-l2-drv/brcm-nxt-l2drv_nxtrelese.bb:
BRCM_NXT-RELEASE-216_BRANCH ?= "RICK"

$ bitbake -e brcm-nxt-l2-drv
# $BRCM_NXT-RELEASE-216_BRANCH [2 operations]
#   set /home/rl891036/scrach/DHELPDESK-3176/poky/build/conf/local.conf:60
#     [_defaultval] "SIT_int_nxt_v216.1.15.0"
#   set? /home/rl891036/scrach/DHELPDESK-3176/poky/build/../meta-brcm/meta-datacenter/recipes-kernel/nxt-l2-drv/brcm-nxt-l2-drv_nxtrelease.bb:10
#     "RICK"
# pre-expansion value:
#   "RICK"
BRCM_NXT-RELEASE-216_BRANCH="RICK"

