Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F55EE015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 16:53:25 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id jw12so3754474veb.9
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 16:53:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=P/7E4nkV740WqthrvY0hwe8tBbOrqLyHmGk91HWTlKY=;
	b=O+LaFZffONP37nIrrNC7yPbN1HuIunvd0pJKOX8jZ9KKlFDHUmlPgE9HsL2GpW/ok3
	yMkozUPdsMsuOYMODP4wnXDPpT0vHKSLORp397aRZflugO+QMGQkclG9O0fiywaB03we
	Bx5UO5ID/EI12PktsaZXIMGfVlF5I9tjhJ8mE33B7Yha/KrVG02J3IKYW5YhuwPi7DF+
	v8rUGUBKO8Kk+Df/KndacIoDaaZQN0DUYgU0O32j+XV2Os2kAR1g7vVmxBwGsvCNy50y
	qKZ5THEao/mdr8W8VitexSbFnGnijibz7z3ti4tVlO4SjHgRlLBXGPyNQxEJRMKEY5aN
	rXUg==
X-Gm-Message-State: ALoCoQmqnNVjxcomj7dh/z2yCdAuUYQJTrK4gObHKuAii3dVO7ICTx78+VBDnjDC5jh49X0AtPjl
X-Received: by 10.52.34.40 with SMTP id w8mr24855966vdi.7.1379375604823; Mon,
	16 Sep 2013 16:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 16 Sep 2013 16:53:04 -0700 (PDT)
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFE44D@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFE44D@TI-ODIN.tasernet.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 Sep 2013 00:53:04 +0100
Message-ID: <CAJTo0LYJ0+q4poDZX=81tu=X4pjH01gDjrnshaNCVnUTNGwCHA@mail.gmail.com>
To: Brad Litterell <brad@evidence.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Identify Target for a given binary
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
X-List-Received-Date: Mon, 16 Sep 2013 23:53:26 -0000
Content-Type: text/plain; charset=UTF-8

On 17 September 2013 00:49, Brad Litterell <brad@evidence.com> wrote:
> I'm trying to rebuild uImage into my deploy folder (minimally) and so I
> tried:
>
> bitbake linux-am335x-psp -c clean
> bitbake linux-am335x-psp
>
> This works great for most of my recipes, but for the kernel something odd is
> happening.  I keep getting a uImage with an old date in my deploy folder so
> it appears that the file is being cached somewhere.
>
> If I perform a -c cleanall it works, but then the entire project is
> redownloaded over git which is rather slow.

You're looking for -c cleansstate ("clean shared state") which deletes
the recipe's work directory and the shared state cache but not the
downloaded sources.  The shared state cache is what is being pulled
from when you just do a clean and rebuild (assuming nothing changed
that would cause a rebuild).

Ross

