Return-Path: <hartmut.behrens@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F77E0129D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 12:55:13 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id ib11so2514233vcb.22
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 12:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=WlSrAWav5a3p5yIuEGiFWKz9z52YjC/mB51d6V7nYHE=;
	b=HLReZl2xGv+spFskD/Yv4ka6RiCEKohuzMJnYh6GclbUIQysn0SKwyE+G9Ezx5ZRlf
	weB9SZJl2HpPQgpH2neDBj1wUmT2LamPjne3TdI54rgQx5SlZEVlpLTBHsRr4p0lSRrN
	JgYaMjXfP1PgwP5ENWlsIxwL2NH02JmZv0Whu5fXQ6o1qABDQ6xMbl3/iKRD4DG5tLWW
	Q8xxHusD57YLNR2PkCPuKcvWWY5W630HKaQV5cGrQjmp7jVICq8f/ByL8j6Ja3xfCkDP
	0zOZkk+nM+tbTtrEKX1ra0VSXzpdeLdTNOBXwViVVcn0vwzK89duVooqGB1GwEl0Qvjd
	GH3w==
MIME-Version: 1.0
X-Received: by 10.58.88.4 with SMTP id bc4mr6365057veb.48.1369338913276; Thu,
	23 May 2013 12:55:13 -0700 (PDT)
Received: by 10.58.220.129 with HTTP; Thu, 23 May 2013 12:55:13 -0700 (PDT)
In-Reply-To: <CA+69FtB6Y0MCaynMcVPWAx8YK2WX+9gK5hfz+LOO51JxfUOccw@mail.gmail.com>
References: <CA+69FtB6Y0MCaynMcVPWAx8YK2WX+9gK5hfz+LOO51JxfUOccw@mail.gmail.com>
Date: Thu, 23 May 2013 21:55:13 +0200
Message-ID: <CA+69FtDG3-WW7vTU7snmf+HjjxVLFpk8+1fLMyycz7tiaSgyRw@mail.gmail.com>
From: Hartmut Behrens <hartmut.behrens@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: QA rdepends issue when building xerces-c
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
X-List-Received-Date: Thu, 23 May 2013 19:55:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 23, 2013 at 6:53 PM, Hartmut Behrens
<hartmut.behrens@gmail.com> wrote:
> I also tried INSANE_SKIP_${PN} += "dev-so" without any luck.
>
> Might you know how to solve this?

So including INSANE_SKIP_${PN} = "dev-deps" does the trick.

I tried playing around with FILES (shown below), but can't quite get
it right. The error that is issued then is "ERROR: QA Issue: non
-dev/-dbg/-nativesdk package contains symlink .so ..."

FILES_${PN} = "${bindir}/* ${libdir}/*"
FILES_${PN}-dev = "${includedir} ${libdir}/libxerces-c.so"

