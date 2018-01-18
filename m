Return-Path: <brgl@bgdev.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4964EE00DFB; Thu, 18 Jan 2018 06:08:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E46F1E00D92
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:08:55 -0800 (PST)
Received: by mail-ot0-f177.google.com with SMTP id a24so20163320otd.4
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=7ZtN8/Aoxc9O525qGA9mkWut5GrTIBEGvIXh3J0Z3IQ=;
	b=Ab0q6nmBMV0RnnIUneewVCjQLYvHUP6yuO2yWnNZdDvu6PQbNR6lOjNkcNqNZ+4sBg
	62uEwh3+55mSEpJfxrxBjeIuKfAWfmdMGnDkvCXYcq2MBjQ90k/9kuuE42tVpqk3ic95
	a22LR2BHN0RiWsgFQXcznfSL34mBurp3Nw5JvKEN9fdHg+ZfQzGcyaih/6yxvezB9/sL
	cyx+Ew3YYYIbStCVu7Z3+R8ZMKNxHTHCBZpQy6rlPUJkBnqJPAioOlaqibUhD8rwIgTc
	4wz8EHm9nsXZq+KOR+9PbqvgJsbjygOxQKD/oAsPh38lGLwXxWkHWtq0EA6qfhjdSY2v
	CgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7ZtN8/Aoxc9O525qGA9mkWut5GrTIBEGvIXh3J0Z3IQ=;
	b=UGoJqucf8XwPQ87yNWgRPUSDwds//QRiqq1Jsv4lIvBYu+oVREx74N3L7bZiwUxMDq
	+sPzqyoqPeSZkM758M1NsgGpYFD7LSsPvoUvJGq+97hj3lgk5zpCEA+llcByDMTTICPB
	1tbPspZ0Yp/Zb5jRjaUJB5ZtLP4cEhiqrKiTYSkYtxbwxMye2vctJPDZXzj1SZkYow8B
	WWgpV0CBde4LNOHTQmNapausyaeT8QlerVqCHSMRFrMDeK08A5cG5qeFKH44ikJhFZYE
	WE6cwjYvTP4MTV+Uv2/4wPO5e95HqOYjOKnEwnf7Lm+E6b/7Q11nO/mF0i3FAzVWAHe+
	hODQ==
X-Gm-Message-State: AKwxytf2HAUmmGMDgARbmxNWLJ85yDYeorQtBn6sZ2XuiHwG4fy19d/D
	8rqyoPja6nreq0X8pZ8T28dLiYbOAcDYn7ON3b4uKjkMBoM=
X-Google-Smtp-Source: ACJfBovceNpNqERg4MJadAlmKi6IflzmZZMNrBIwWmi+mCllkbPl8TqEpz74/SJAytIejb5mThKWpti1zSZGoUt8bwc=
X-Received: by 10.157.14.161 with SMTP id 30mr3232755otj.265.1516284535006;
	Thu, 18 Jan 2018 06:08:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.26.51 with HTTP; Thu, 18 Jan 2018 06:08:54 -0800 (PST)
In-Reply-To: <CAMRc=Mf5j0r2A=R22RmAQ08XoPyspSMV9M-TBXkYm+Y8aPUwgQ@mail.gmail.com>
References: <CAMRc=Mf5j0r2A=R22RmAQ08XoPyspSMV9M-TBXkYm+Y8aPUwgQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 18 Jan 2018 15:08:54 +0100
Message-ID: <CAMRc=Md6+HcgXKE8EyqsR1pO9FPuPDBAvFKaj0qYfASdfp675Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Running cmake in the SDK environment from a script fails
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
X-List-Received-Date: Thu, 18 Jan 2018 14:08:57 -0000
Content-Type: text/plain; charset="UTF-8"

2018-01-17 20:30 GMT+01:00 Bartosz Golaszewski <brgl@bgdev.pl>:
> Hi,
>
> I'm working on a project in which a base linux distribution is built
> using yocto while a set of proprietary components is built with the
> generated SDK (-c populate_sdk).
>
> These components use cmake for building. While they build just fine
> when the 'cmake' command is invoked from command-line, as soon as
> there's a fork() and execve() in between (e.g. when cmake is invoked
> from a script or even when I tried tracing it with strace), the build
> fails on finding any external library:
>
> -- Could NOT find ZLIB (missing:  ZLIB_LIBRARY) (found version "1.2.8")
> CMake Error at cmake/external_dependencies.cmake:10 (message):
>   Could not find zlib
> Call Stack (most recent call first):
>   CMakeLists.txt:109 (include)
>
> The 'found' message is there because it eventually 'found' my host's
> header as visible in the strace output[1].
>
> The target arch is core2-64 while the host is x86_64. Both host and
> target dirs are present in sysroots/.
>
> What's clear when browsing the strace output is that the headers are
> not searched for in the right directory which would in this case be
> sysroots/core2-64-poky-linux/usr/include/ but in
> /sysroots/x86_64-pokysdk-linux/ instead.
>
> I initially thought this to be a problem with the project's
> CMakeLists.txt but it seems fine given the fact that it builds when
> used manually.
>
> Any idea what could be the culprit here?
>
> Best regards,
> Bartosz Golaszewski
>
> [1] https://pastebin.com/1pqmbh7R

After some more debugging I found the culprit. The environment setup
script in the SDK aliases cmake to 'cmake
-DCMAKE_TOOLCHAIN_FILE=$OECORE_NATIVE_SYSROOT/usr/share/cmake/OEToolchainConfig.cmake'
but aliases are not expanded in non-interactive shells by default.

It can be fixed with shopt or by passing this parameter explicitly to cmake.

I didn't find any mention of that anywhere in docs. Any idea for a
right place to put it in?

Thanks,
Bartosz

