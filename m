Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3EFCE009CA; Mon, 30 Jul 2018 06:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA31EE008CA
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 06:52:10 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id n84-v6so21320018oib.9
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 06:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=t5Yawg1umRbEm/IgspPYcTf4pnj5hIP+hjy+MM3KPOM=;
	b=xdgAnjGCA0GXa+/CviJGkHQgDtUsUvDk8pxkgKtm40HdlkZZcwmvMuYLxN8gnC1gWk
	cd9BXz/uNo33Ma1K4VWIw577W+4w7KgFIqCgi1gmNESeM1hpdK8h15aRFusAvCgMb52F
	T9iOsVG0JtvfnFUMnFEw3PpMi7M9gVUcYMODXz51ltbDckotxOooIzbM41y+KIsBQpK1
	lzL6s/AhGQrBOLxUaME3MbnN+w0yd4ZQk9u1AsbGBbjoASoCsPKeDUPnZyPW+GLX2K95
	Lvv7pA67bm3i8ObWdiHcFWvKPNzQKHq8qwCHepY0ns344EGFo4viCDoNRssYszwbKfv3
	7K7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=t5Yawg1umRbEm/IgspPYcTf4pnj5hIP+hjy+MM3KPOM=;
	b=hGJJdIB4EZS1vbqDBsWsh1Ra0OjD1QGSt6xjjkEwlOWXjE3hEh1ZoXMMl5daRrg4Xq
	N+PnTY/p2jCrM2DE39dzQC+3VCn6LV2usYLTlK0Ml5PZpTWf99ss924mhEE/artMoED7
	C5goSe4pBy7kieNyJpE+oA6bfS0vqg9maHQ1ir1u2WldGXOHXVfP+eckWft3H356eIr1
	NHdial4TBxqWnoA2GFcfvUrjEGvkuaoB3u+NW2PU22jwIcjWUTXrOiET+qxPu5uzBbuV
	0FByYwUFd0JbPtiuGicStqQQPHgvbmxx3Gs9zyyy5FqO8hXdHOuzrF+OgnPxTt6zQh5l
	qAkw==
X-Gm-Message-State: AOUpUlGd/Zg99voVcJ7Wouv1ykP2xMcdz8jYAkwJYgaxqw1oISkmLli2
	f6T+YdOqhw+faxT9nlFeDJss+1agAzLxswhJziP7vA==
X-Google-Smtp-Source: AAOMgpfUxQco1LSqdemRiO8r0GVbdeGmzA+mbJ0Lq7fEDERsfThYOzu86oU4ZNl9Qhu4sxWfaRlngW9JjBZ6tbgpWQo=
X-Received: by 2002:aca:f409:: with SMTP id
	s9-v6mr19069609oih.102.1532958730181; 
	Mon, 30 Jul 2018 06:52:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 06:51:49
	-0700 (PDT)
In-Reply-To: <CAGAf8Lxu7WfXCrqAF4=XyCOXr3c828Rc+XgUi=jG8_rRNhREAg@mail.gmail.com>
References: <CAGAf8Lxu7WfXCrqAF4=XyCOXr3c828Rc+XgUi=jG8_rRNhREAg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Jul 2018 14:51:49 +0100
Message-ID: <CAJTo0LYECf4PfDn1fwN-XLm6Yv=98=2iFyAKoQ6f1NUJgk9Zzg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: What are the differences among libconfig8-dev, libconfig-dev and libconfig???
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
X-List-Received-Date: Mon, 30 Jul 2018 13:52:13 -0000
Content-Type: text/plain; charset="UTF-8"

On 30 July 2018 at 14:28, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Anybody knows?
>
> Do all three exist in YOCTO as different libraries, or these are
> variations/the same as libconfig?

Context is useful but they all sound like various distribution names
for libconfig.

Ross

