Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18385E00C1C; Sat,  5 Mar 2016 11:26:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E5EE0048B
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2016 11:26:21 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id g203so94798201iof.2
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2016 11:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=D5/YRC9wh8ST3Q8oMQD8QDdS/lVcsyp8oHjxiFtCJbk=;
	b=iK5ItyYxfNjeR6iB9Nfz+jyCchKUprQBMnk7iwhV+Mbo/OB7+FRk3/kCJ1RZ0xADaH
	RST6yP7f7YA0dQHDaiaKxgY7o2ScePDoKafojcCTuuuXD/88UMJSFn/mNrP5SqjIwpCS
	jXuX+FVWrfBu9up8laiL5VjuGBFh7+kH7NoqzIxUaBtD5Lfn8RLjqrC2GdzbbETe5Qny
	lHxKrIzQcqflkJ7XAhGzLBHJiNnXTQkxb3Nzo//KFXT1O+L+AHNqfAoH53gJ81Fbvdxt
	ELg5Tq/BnPIkFnIFVeTzRL+2PtfqwZT92d6jQQSgb/phHqPVoRYunn0nU+m5meo1S9Xe
	cHSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=D5/YRC9wh8ST3Q8oMQD8QDdS/lVcsyp8oHjxiFtCJbk=;
	b=djXQc6n8tA8NtE8U82c88HvlVWfYZI+40HFmbrTGddSu4DU61il+1J8XBj+vrEvWQv
	M7rLlK/1IkDu/Dg1SbPVp7KP7+BgsLhS2MgKxVH3RkjhwWZIXVcY9fWhU5DJVJ3kZjNc
	BBZuMLK28eDagjM0TlN2HZ1PO6NwBkgYMTXidj1nO5HuJigDFnnxycpYjgZe1HPyybq4
	O1QuM+TIyOEyQhw4YtZ4gKWzUE1J0O8cOj5ZqXAMCyD2YDu8jgIcyZE6xQOrzxWcNRqT
	6vud86LOF+z9sLBYV83N88IOMRyZ6yplO21UHKVYVWyFkxj9hD7ZfkUtf24V4wgeHwPU
	i99Q==
X-Gm-Message-State: AD7BkJJEJSnVqGmzafMKMRfhfxIZ7dtTQ8O+1luJfxifVbbGNSg8Gp0/iMHIj27oxuhzHd+2XmVkBwdemm+q3dqn
X-Received: by 10.107.10.30 with SMTP id u30mr13211062ioi.99.1457205980788;
	Sat, 05 Mar 2016 11:26:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Sat, 5 Mar 2016 11:26:01 -0800 (PST)
In-Reply-To: <56dac7ab.aa0ac20a.e7976.ffff9fdf@mx.google.com>
References: <20160304135527.GA769@graute-opti>
	<CABcZAN=oPmp_OUor_4poPmgzpF4uNzeUdYD2HhA+QPMATseG6w@mail.gmail.com>
	<56dac7ab.aa0ac20a.e7976.ffff9fdf@mx.google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 5 Mar 2016 19:26:01 +0000
Message-ID: <CAJTo0LaegZPzomrLr9yxPLCtOyDtyapzqdQ+OhzxU=Fd6Zc5XA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Howto change the default shell in yocto?
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
X-List-Received-Date: Sat, 05 Mar 2016 19:26:25 -0000
Content-Type: multipart/alternative; boundary=001a113f92c0d99fb5052d5234a4

--001a113f92c0d99fb5052d5234a4
Content-Type: text/plain; charset=UTF-8

On 5 March 2016 at 11:48, Oliver Graute <oliver.graute@gmail.com> wrote:

> first the default *system* shell (/bin/sh) is this possible? or does this
> affect
> to much of the yoco system itself, if I change /bin/sh to /bin/dash?
>

bash is only the default shell (ie symlink from /bin/sh) if you install it,
so if you don't want bash to be sh then one option is to not install bash.

If you do want to keep bash installed but change the sh link, then that is
managed with update-alternatives.

Ross

--001a113f92c0d99fb5052d5234a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 March 2016 at 11:48, Oliver Graute <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:oliver.graute@gmail.com" target=3D"_blank">oliver.graute@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":25c" class=
=3D"a3s" style=3D"overflow:hidden">first the default *system* shell (/bin/s=
h) is this possible? or does this affect<br>
to much of the yoco system itself, if I change /bin/sh to /bin/dash?<br></d=
iv></blockquote></div><br>bash is only the default shell (ie symlink from /=
bin/sh) if you install it, so if you don&#39;t want bash to be sh then one =
option is to not install bash.</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">If you do want to keep bash installed but change t=
he sh link, then that is managed with update-alternatives.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113f92c0d99fb5052d5234a4--
