Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A2FFE00942; Mon, 22 Jul 2019 15:04:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE84E0090E
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 15:04:44 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id k20so77428545ios.10
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 15:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=bqDvxeD4ysf5DuUck8SPfkM9WZI18c2QNk/S8uqptVk=;
	b=WLxxlHRKjIs8AaK8S7VkFRIogd+ahmKCzvHiqnTRsL+LVj+m9S+bBS+XvCsJTAVzMa
	oN//FTNWkxRiNisTfJaBsCHK9GFBUbNtaPH+REpfmzJdyOUzTgvLkQDtBa3TDpLSzfTC
	fTjP/Xlt0Zt4+28BPYhg5Bvx3sMTFxPmziLxjHM0Rt4QXfyFrgZMuH6WRK+MCThP/5h0
	sA4mTVP17e2rvaEhEgg1tvJlY2I7a9ZmNZW/xJUZ5NPiVwIarNW+aIMwo0ltYnibRPQ9
	2oKLTepEHgzR/CfxzbBtW3nT/0Mdjn+/j9oupQ7rBevWvTzAuRAENbjJ77bTbA+HbN9d
	orSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=bqDvxeD4ysf5DuUck8SPfkM9WZI18c2QNk/S8uqptVk=;
	b=CMYj1rEmNXNCKEMJlojY3hcj3+mZNApLjtIHDqT75fzRtHJVSFYnXj6xrNZD6wyMwd
	12g5nCmcZ789zWx2Opb0W1rFUT/BupOpNfUGSkWN3UDH163keItbZX+gDM9jv3PlVtkq
	iLgzfwn9M8pZwtrOP3KoaQLvuEvdsHd6Rd+ib0R6qi5acimpQe+qS6FDZ/fd9B5OxWM0
	MWicF6aLA1AgJYcre0ZvhR2GjKSjJe/M4xWxgM/ENoXEloXFbmLIvqzono1ZFNyrmHu5
	OHoxzo+oZN96FukQDO/OhGBr1aFjLuvdC7VkhKk3txh8WxZToT3T9a78ktyO/6k5GN6B
	YOPQ==
X-Gm-Message-State: APjAAAWmoL2fuwa0iLhuveGqwo9tp/ktpKQI7Cg9hFYVpmJSarWWk1bB
	VuHQx1Xaoc+y7P7kYgqQRin7sLzU2UlhNfwXeUpDYA==
X-Google-Smtp-Source: APXvYqwLi+iGTgfpZYAhheIxFJAMaEZvcIZQO8aKc28xAS4SwCx2h008m/CuA/jzRuq3rU8Z1ebKPNxWTCjLiY1ZcuY=
X-Received: by 2002:a5e:9701:: with SMTP id w1mr68964851ioj.294.1563833084284; 
	Mon, 22 Jul 2019 15:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <1200227794.879484.1563046387364.ref@mail.yahoo.com>
	<1200227794.879484.1563046387364@mail.yahoo.com>
In-Reply-To: <1200227794.879484.1563046387364@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Jul 2019 23:04:32 +0100
Message-ID: <CAJTo0La8FB-jaUBzmQM5hefVZ4WNY2MGn=_o+chscQWxd7xaJQ@mail.gmail.com>
To: Madhu Krishnamurthy <madhukanthk@yahoo.com>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: No GNU_HASH in the elf binary
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
X-List-Received-Date: Mon, 22 Jul 2019 22:04:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Jul 2019 at 21:13, Madhu Krishnamurthy <madhukanthk@yahoo.com> wrote:
> INSANE_SKIP_mlc = "ldflags"
> INSANE_SKIP_mlc-dev = "ldflags"
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> INHIBIT_PACKAGE_STRIP = "1"
>
> But after adding that I still get this error.
> ERROR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH in the elf binary: '/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc' [ldflags]

The _mlc part is the package name, which isn't mlc.  Use INSANE_SKIP_mem-tst.

Ross

