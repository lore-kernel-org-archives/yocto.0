Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C3FFE00BB6
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 04:19:48 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id 63so30762qgz.34
	for <yocto@yoctoproject.org>; Wed, 02 Apr 2014 04:19:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=rgb5s/g3QAsYV07jcTUmb8HCN7ApWY2fdeM8K7QwsCs=;
	b=UwVL5LLX7e5RiXDd/TgFyHj/oKfxPLQEbdcgXV8s0Fvvga2G5hxoWYRzvB22xkbM2E
	QlRvqs905zUNyZLPEYjOFe+CL6GmbLdNtejRubLKGA7gbVMr+dRFVzTK+21oE7jugT4m
	SQ+XIx1Ff37UNpaxySQy5DUMQX+xE/EgQPWpkzB8owXwCtLWYsf0zVY5W2OsKkjN1KuO
	aFh97JIahp4VmNn0e3kSevvG47+3IaK0m2va+DOfNDHBkVJ3N+SltUpLqryPIKfSJZ0g
	A9cVKceUcX7/8LRLGnNhYqPEG/NY23KLRJJ2wf5F39wqi4JtpJerwSxU3L7eHxr5gxwM
	bQ4g==
X-Gm-Message-State: ALoCoQmChHr75TwxEVy4vwVUxzB7FuD8t81ZV64HqSH8uSTX+E6HqQQVy67aBqMk6XVB4GU/+hnt
X-Received: by 10.224.22.136 with SMTP id n8mr597864qab.93.1396437587444; Wed,
	02 Apr 2014 04:19:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 2 Apr 2014 04:19:27 -0700 (PDT)
In-Reply-To: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
References: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Apr 2014 12:19:27 +0100
Message-ID: <CAJTo0LbMn-FgabF5cHb=3jKSW-sC2gKC2oRdeQg+TcEXZH5K7Q@mail.gmail.com>
To: Bhushan Shirsath <bhushan.az@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: copying media files to qemux86
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
X-List-Received-Date: Wed, 02 Apr 2014 11:19:50 -0000
Content-Type: text/plain; charset=UTF-8

On 2 April 2014 12:06, Bhushan Shirsath <bhushan.az@gmail.com> wrote:
> I'm able to successfully launch "runqemu qemux86".
> Now i intend to test the media libs built using Yocto on qemu currently.
> Is it possible to transfer/copy media files to qemux86 emulator ?
>
> I tried copying files to tmp/sysroots/qemux86/ but it didn't work.

The sysroot isn't the image. To get content into the image there are
several ways, depending on what need to do:

1) make a recipe for the files and install the resulting packages into the image
2) boot the image and then copy the files using scp
3) loopback mount the filesystem and copy the files before booting the image

Ross

