Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1A90E00B77; Mon, 12 Nov 2018 07:38:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52DDBE00AD1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 07:38:13 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id u15so2287350iof.12
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 07:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6Ju51xfZPRmHyStTFfKuj1CluRiJ8GgzP3rZHlDH19Y=;
	b=Fmw761VB29+Ozm/qlclxtgpBB+TtmqffTKO46/GMRLH4R8IIYdndhg3VtG48Xi/+DQ
	5lh4dfnjBJI61We/zNXWpvjjy3yVmQ1geGy4go8XL3GsOM4oUtYOARLef4Rkbzh+Dywh
	KXmk1W2YWxbalM5MkUL+4Y+wFLDQyaz0H6h9fTLsJuW3iK6aECqH4dVxapt8/g/zGEz5
	2zZg7HXzVlRtlnfBwVIMxuoJam6P2ty3JVhYsqz7r5kvfeXUoW3H/DJ62HXjXacGobWn
	7Y0+GCv9951n63hhq9Hr0E2zFGhFmTgRIuWCJn2ETkEcAivHQEcFNyNndgESH8X7sWIH
	KLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6Ju51xfZPRmHyStTFfKuj1CluRiJ8GgzP3rZHlDH19Y=;
	b=TtC42YWTSMQ8Yzq2AB7MXFEqpMdXpG9Ha3gPZXM7yQqwA5ikw8Qdpq5iS/UfkzbSlU
	3TKdGcYASqewRNX6DwbtHET+LQLllXczhtKTkFHmO+wOjiDdaV9DcZcuXmvuXY/hz49S
	bbIcxj4LGvi9E1WtGEOUxy71AXdJy5KJs+F/N9LDRiA+vay/tILKVrbTM5corN6pqdNE
	dfL+DAy/D19cMpikOjHx9HXpfZtXL0hPsOqZitk5UV5i3ewVnFd9MjclUkFX/0uLHuad
	lDcWTc+d+DzgvyUO8+GXslOhR25FCsezSQgEMfneDZROBbmJddKyhIogfI/jHtw3dD11
	tSWw==
X-Gm-Message-State: AGRZ1gJxrcl7AZduikSt+abs5lyMMAMH9irt6FBWQVMmXXs9FWeffZZc
	Gc0IyQAYgwgvrgrH0izYk/13bTqPNI5PIcmJ7JHNSA==
X-Google-Smtp-Source: AJdET5cuDZWFkoCggo7Fx7KpAnQzhIDZrD8puAhYyhSA4TOPxhD+TjcZFEVep4TjI1NBJFZKC3dNculn8IO76xu1Dt8=
X-Received: by 2002:a6b:fb0a:: with SMTP id
	h10-v6mr954955iog.270.1542037092719; 
	Mon, 12 Nov 2018 07:38:12 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5Y5cpc5e0wLm92PDZxjjTVedxc6enHrVV4-8GN-ZFcYQQ@mail.gmail.com>
	<CAJTo0Lbnde9NX7XYGzD2UU78-R6bCjN8RvRPMvomYDnnV66sgQ@mail.gmail.com>
	<CAOT_U5bPpZ4rWUN=2cF5NS5fs08S5i80iJy60Lx=ZB_OpyrDVg@mail.gmail.com>
In-Reply-To: <CAOT_U5bPpZ4rWUN=2cF5NS5fs08S5i80iJy60Lx=ZB_OpyrDVg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Nov 2018 15:38:01 +0000
Message-ID: <CAJTo0LZj7zyYwwKjm=s7xSiA5twPpu49DvV0Fgkjt9XdcRb5NA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: CONFFILES journey form source dir to rootfs
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
X-List-Received-Date: Mon, 12 Nov 2018 15:38:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 12 Nov 2018 at 14:33, Alan Martinovic <alan.martinovic@senic.com> wrote:
> > The standard do_install (which calls make install) copies the file
> > from the source tree to the staging directory.
>
> What's the reason for not seeing that in `bitbake -e systemd`?

It is there:

do_install() {
        meson_do_install
...
}

do_install calls meson_do_install which calls ninja install, which
copies the file from the build directory to the staging directory,
which is then used in packaging.

Ross

