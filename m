Return-Path: <twoerner@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25971E002AB
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:51:16 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id wp18so8600972obc.29
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type; bh=lGJ+dIdOvU9nV9hTLdsj7l4SaNcdSJy6iaIXCvDto90=;
	b=SBlHfj7+JANXNSXfuZvInwFBiiXUT3LskLNkJlGvCWdWX08XvzEuTITCQlo6wbBMkQ
	sjGS81pycGVDlqxT0tWmFaMw9axF7MYrWTGmdX2NzTNGfEigXd258zsEY+WG+vo8X7sB
	BlEgBmokv/i64lMVgN77kwWkaDdpaXtsLtdw9rTXhj/jLCeXiO0PF3NS9ZH7IBIP04gP
	mCgxJmAuEgW0f0bRWTt+4CX3GaOPU45IWBmqtlq2gSyxP+3PLoI/XbsrMynS74k9Yf1u
	3jS4+VlLXRBQJg+dMw9aW/wy07tYMA5aLsuxtjX9E00zJQ+F7haxW9OShBkBRZLp050m
	ENJQ==
MIME-Version: 1.0
X-Received: by 10.60.28.129 with SMTP id b1mr1540485oeh.106.1358959875365;
	Wed, 23 Jan 2013 08:51:15 -0800 (PST)
Received: by 10.76.107.195 with HTTP; Wed, 23 Jan 2013 08:51:15 -0800 (PST)
Date: Wed, 23 Jan 2013 11:51:15 -0500
Message-ID: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: are separate -sdk image targets necessary Was: Build external module against Yocto kernel
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
X-List-Received-Date: Wed, 23 Jan 2013 16:51:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 15, 2013 at 2:16 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
> According to bug 1614, the kernel dev packages should be
> included in sdk images. Please generate your toolchain using
> "bitbake core-image-sato-sdk -c populate_sdk" which will
> make the toolchain target sysroot matching your image's
> sysroot (this is a new feature of 1.3) as long as your image
> is a sdk image.

I am a bit confused by the above email. To me it appears as if Jessica
is saying: "add '-c populate_sdk' to the build of an -sdk image".

But if we look at this email from Mark Hatle:
http://www.mail-archive.com/yocto@yoctoproject.org/msg10636.html

I get the impression that Mark is saying: "now that '-c populate_sdk'
is available, there no longer is any need for separate -sdk images".

Am I confusing two different things with each other?

