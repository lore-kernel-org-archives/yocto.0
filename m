Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A579E007C2; Mon, 22 Sep 2014 07:31:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D948AE00798
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 07:31:08 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id j5so2127604qga.39
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 07:31:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=unK7mAJADpwQbuN8YoMxJI7SBCEE9QUDbXssHeqqQq0=;
	b=eWXoFjj5Ici/Ma9s2uUK5XNFonXXwGK6doEYlAxTE4ik9PK5oKjGdY/Ii5CRhXYFAp
	bt3f7dD9hTyHO6k9RwuB/1L+++qyW4lK6dsyg0ZsMo/vZOeWFEDuD2zr1Sxe1N6fwILp
	rpjt3Z/a+NjfWAUZGEKaxgvBJ9t42pvAtN9/fiC3gISrBI1DcSQsIbbL6SwMZ1D/MvZl
	7jynGmvv7t/exVwzxSuMZhzCjdxEar6UvRhhPuLkMm8evlof2L62MelL+xA638Igt5FP
	5z13N6bH6By770Y2ZBGNPi65Zaoji5Fp1rhvKnrLbMMRBOpLS0wUMg2cYikTcptz6U96
	4/Nw==
X-Gm-Message-State: ALoCoQn92U/2CD60p2Ew5idznXz4mCOEXLXtf2WHKisZuQqpwsBjhmMjJLyBBNgp2u2Vf1hrw98V
X-Received: by 10.140.97.247 with SMTP id m110mr22451080qge.80.1411396267495; 
	Mon, 22 Sep 2014 07:31:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 07:30:47 -0700 (PDT)
In-Reply-To: <1411124599-6843-1-git-send-email-leimaohui@cn.fujitsu.com>
References: <1411124599-6843-1-git-send-email-leimaohui@cn.fujitsu.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 15:30:47 +0100
Message-ID: <CAJTo0LbwSch45mZcEDg=RPX_JF1je3hMyroBHFZRq3Vx8Kg8qg@mail.gmail.com>
To: leimaohui <leimaohui@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] spdx:It is necessary to define source directory for spdx.
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
X-List-Received-Date: Mon, 22 Sep 2014 14:31:11 -0000
Content-Type: text/plain; charset=UTF-8

On 19 September 2014 12:03, leimaohui <leimaohui@cn.fujitsu.com> wrote:
> To make sure that when S directory is changed, the spdx info of the package will not miss.

It took me a few minutes and looking at the other patches to
understand what this is doing.  A better summary would be:

"Add SPDX-specific source tree variable for recipes where $S is a
subdirectory of the source tree"

To avoid polluting bitbake.bbclass this might work with SPDX_S ?=
"${S}" in spdx.bbclass.

Ross

