Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8990E003D6
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 05:51:34 -0800 (PST)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 10 Dec 2012 05:51:34 -0800
Received: by mail-ob0-f200.google.com with SMTP id wd20so11256939obb.11
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 05:51:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=yYU9brR6lrMuTFc3suaCcmFbsjlLEhmPUGyR2Jx10Tw=;
	b=ohW0oy1VVeuIIJ4gVg8dt+Ka6D1guObU8Kh+q6ha5n+mrY4yE2IX8R+I1r2LPtSCWn
	IiayUwgkpJ7+5yWerFf43yvifnwBWY2VApqgn2lfRQpUuB1rlFCQOotTS64YXPOZBrWa
	X1JFo7Id89Chh4sp3HPnW89Al2Ht/b7lYGcPU6AYla1/byEkA+vozd7iCiIJAT/WwJ+R
	soCkPqv9/G9cIR2x+pzco1fenthGXF1YYnEhYQ84mcav+oymiCLq/yiyLeF3g6iTChK6
	kl7ZlKDkBWzlVgyAg0/kpSOMQKNtUibtDEcTdh1+VAoudFHYGLohdlN4iFtdIM2WMF+V
	ZBTQ==
Received: by 10.182.113.5 with SMTP id iu5mr7494233obb.36.1355147493444;
	Mon, 10 Dec 2012 05:51:33 -0800 (PST)
Received: by 10.182.113.5 with SMTP id iu5mr7494227obb.36.1355147493283; Mon,
	10 Dec 2012 05:51:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Mon, 10 Dec 2012 05:51:13 -0800 (PST)
In-Reply-To: <CANwz6nzr_CjMO8ejGQf-8tb171BuK+3a=Kmj-46Ga2LjZ-GZJg@mail.gmail.com>
References: <CANwz6nzr_CjMO8ejGQf-8tb171BuK+3a=Kmj-46Ga2LjZ-GZJg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Dec 2012 13:51:13 +0000
Message-ID: <CAJTo0LZ_wqMdg=9cHzsb9vY_0b+cS7=6A6Ras9Gyr3s4o=+pWQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQk8ReASBbMCU1DGsv0852c+qc1YaIdEwVEkiNx5e006lvC1IAwQQasGlrfqlxrlhp/7w2S5RP8FTrt0mw+nADHQwPKUPPPETQC5bZtnJL3KHCqfOZpXubAr3u4OTFOaTuYhpmaxW+DrFznyphFFGvI9S3tvLw==
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard not booting to SATO interface
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Dec 2012 13:51:34 -0000
Content-Type: text/plain; charset=UTF-8

On 8 December 2012 17:24, Edward Vidal <vidal.develone@gmail.com> wrote:
> [2058242.932] (EE) module ABI major version (11) doesn't match the server's
> version (13)

That's because you used a driver that was built against an older
Xserver, don't do that.  The omapfp package is still in oe-core, so
you can just build and use that.

The original issue is probably because the X configuration file
(/etc/X11/xorg.conf) is explicitly loading "omapfb", change that to
"omap" to test the new driver (this is #3522).

Ross

