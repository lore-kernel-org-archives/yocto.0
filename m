Return-Path: <ross.burton@intel.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5280E014CE
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 02:32:09 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id fo13so10683693lab.24
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 02:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=otsvyeD4LVGRK0UozzuZUmAZyeRosnfiRrUbU6pSlug=;
	b=EJ7yCd5vlImBF1GWLggk4cQCedyk1vrIBZogjzXGQZQBNIyc37epMI3h5bNsz3GUqo
	fMJE5PidQiLm/B0rd7/DOd+WZWr5POWn+NzUoEj9lH7w4mgaTBWdFmyVF8mC+TA2xGh9
	w5V6Di8BJ9cw40w8kb5oC9hwQiHrFo/1xLDUv178n7jeTsbl/vnvD7i5NOP/z8SYAKSN
	eSl1UnycgMA+R+KkTqj24tYTzDhbUpOlguiX+s2tulNvvgNE+l2sBeZWqRcbv9lQpQKa
	FHcILLtReuM3+0vx4qY3iDnU3V4hVTi0pijyKmLJnq3uxnL+Yjw4iUcP9KHuqGhE6her
	SLsQ==
X-Received: by 10.112.102.197 with SMTP id fq5mr5435386lbb.83.1364203927780;
	Mon, 25 Mar 2013 02:32:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.81.231 with HTTP; Mon, 25 Mar 2013 02:31:46 -0700 (PDT)
In-Reply-To: <515015CE.1020006@gmail.com>
References: <CAJTo0LaWUpfKWPc=0vmnYvrfUL-EZhKPv5+pteGzTTL4ud42RQ@mail.gmail.com>
	<515015CE.1020006@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Mar 2013 09:31:46 +0000
Message-ID: <CAJTo0LZ7zFPPSQGhcMQTXn7B+F2JUzdmrLBDC987nCXDTnK90g@mail.gmail.com>
To: Cristi Dan <dan.florincristian@gmail.com>
X-Gm-Message-State: ALoCoQmF6F5yhVRHJYvKk6agdnjQvjC9nZ1JyQ+jjxiAbVT4DWUzNPf3t0LH0ViREOU00yUJWOTb
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Qt!
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
X-List-Received-Date: Mon, 25 Mar 2013 09:32:10 -0000
Content-Type: text/plain; charset=UTF-8

Please don't reply directly to the sender but ensure that the list is
included in all replies.

On 25 March 2013 09:15, Cristi Dan <dan.florincristian@gmail.com> wrote:
> When i try
>
> (qmake -project)
> says that "qmake: command not found"
> the same thing with make
> It's there any chance that the Qt isn't added corectly to my image?
> Thank you

The "qt4-pkgs" image feature only adds the libraries and demo
applications.  You'll want to add "tools-sdk" to get a compiler, make,
and so on; and also "dev-pkgs" should add all relevant headers.  Then
you'll want qmake, so add this to your local.conf to add the tools:

CORE_IMAGE_EXTRA_INSTALL += "qt4-tools"

Ross

