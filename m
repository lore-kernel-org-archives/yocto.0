Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E9F5E00985; Fri,  6 Jun 2014 14:11:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 298EDE0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 14:11:45 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id w7so1837606lbi.37
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 14:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RD+eVhb13RRoEjzfM9Wkk0oaeVHO3cKjqLBo6zu/bDA=;
	b=UOotRqPMn45KCkGp1AbpZUbe9XeRxZsIqtywOoFQishM+PtU5OzlNFVdtQbAcoILWC
	WV6yjgzGS0flE9wKbNAmNV3N5kqnO7QXmWPSwDFsMzytUhsWoraaQ3sjliW9mS4UHsGj
	y8s53z3bML8tpBoJNe/P+Tt8VNF7VDqi357lhD+gXndeoV94wamFA2yt83uSvPwl4/mI
	1nZCgKjvV9Hn5sVMc9wcKQ7ZTWJbH/erYUPX7jIFeCoRJaqqIeFYr8MzfxPvqthYgfhP
	bqXb9mX3CM93XDpMhUj7f/4yvClTb4BJpaz3KVBWav8qfkw5wJ86zOpHYcprf0JtI4sf
	wMGQ==
MIME-Version: 1.0
X-Received: by 10.112.58.202 with SMTP id t10mr5235289lbq.6.1402089104694;
	Fri, 06 Jun 2014 14:11:44 -0700 (PDT)
Received: by 10.112.16.227 with HTTP; Fri, 6 Jun 2014 14:11:44 -0700 (PDT)
In-Reply-To: <CAOJFanVBJm4N5n0jongvS5AORA9At9dAq4QhZSeKbdxo+zABKQ@mail.gmail.com>
References: <CAOJFanVBJm4N5n0jongvS5AORA9At9dAq4QhZSeKbdxo+zABKQ@mail.gmail.com>
Date: Fri, 6 Jun 2014 23:11:44 +0200
Message-ID: <CAAQYJAufutnqVV1FKGrYDehiR+oF-6+uJbJR+HMK0Tb3GcpG5w@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Sasikanth babu <sasikanth.v19@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Procedure to build Initramfs Image
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
X-List-Received-Date: Fri, 06 Jun 2014 21:11:57 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 5, 2014 at 1:37 AM, Sasikanth babu <sasikanth.v19@gmail.com> wrote:
> Hi all,
>
>     How to build initramfs image (rootfs embedded in kernel - uimage)?. I
> know it has been asked several time on this mailing list  but could find a
> solution?.
>
>
> I tried steps mentioned in the below link
>
> http://kexecboot.org/documentation/crosscompiling/oe-yocto


Hi Sasikanth,

this set of recipes is not the generic way to embedd an initramfs but
covers a special usercase: different libc (klibc) for compiling the
cpio.

>
> but I got rootfs.cpio.gz and uimage no initramfs(rootfs embedded in kernel);
>

You have to manually bitbake the "linux-my-initramfs" recipe. Unless
explicitely specified in your machine.conf building the initramfs or
the virtual/kernel does not trigger the automatic build of your second
kernel containing the cpio.

>
> Any suggestions or links on how to build initamfs image.
>

See for reference the patch introducing the easy-embedding [1] and
further changes :
[1]
http://cgit.openembedded.org/openembedded-core/commit/meta?id=609d5a9ab9e58bb1c2bcc2145399fbc8b701b85a


> Thanks in advance.
>
> - Sasi


Cheers
Andrea

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

