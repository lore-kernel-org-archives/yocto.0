Return-Path: <brgl@bgdev.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B7B2E00DC6; Wed, 17 Jan 2018 11:30:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B598E00C0E
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 11:30:22 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id e144so13967618oib.4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 11:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=WQBfNAC1aXzQvMcGtv+B6GmrXHqwqu8EFjXoQHcKA0Q=;
	b=np5v0PyOAZeXTvdSRsBAudQG9sVHj841/A6qQcAaMfdkzf46Q6U5VHuJJbFo2ySmAv
	GutboL63Gk4asCT5rlBJ8xk035UCrJ/lkJ1BW0J6MLUCFrWVF41aUEvrVr/bf4NijAb+
	EDgpd2i1D50fI6ifiQs7eLaoKUujcO23v/oHWHQzl75kotdHQZXW/hxIjg+TnqK2nmuN
	JS40+HcDRyPSigf1DT+KpnRy6cyHpx85STY8uh42Of3ovROXjzwjU0L+gJvROkQDyu4/
	JaxbdIu236aDiGPiGZPEeYLgI4VhMUaoIHokN/Jp+rGigyO14WvseVCDKIrqwkrLGisF
	0RJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WQBfNAC1aXzQvMcGtv+B6GmrXHqwqu8EFjXoQHcKA0Q=;
	b=oPLoUfCgkDqcHsTiUPUjJ7FP5T9FGGQBjG3YnXC+8Fz48tYm757xxH+tYSh9ItKBfY
	U1AAX1LDP7qqloPwjbOw831ayKzVuox3+mMN90gAiK0RA0R5YCtE+Xsuu7Hdn9FHca9y
	ghUegy5s4RnkxbHi3nikVfUNBvXY4dbsb1GcjPqRlimc8YWjg+5sncmxx6ilvQu0kifu
	tZdDxXghiFao2ZnqEHM3bId3JuWoxguXoR6uuyhXWgIUbl4GprRyzePeMZxbzTuK1+z7
	cgVTRLcRNwS27Un6v63obXUw9MhLn6HxPbGYDNjixM1Vgxhi/+P6MWhdr/jnEkq+NERQ
	7tgw==
X-Gm-Message-State: AKwxytdLGMKgkwnrCDZo9WQ5IU16aEIX7Prqf4V7VJke3pAqvK8K1T+O
	7m4uxAbgfn3AoAg75td7LLSHQ0cZqsaVT9X4qMjRXaDOCVQ=
X-Google-Smtp-Source: ACJfBouj08R2vEb1weNUhCtSz6uBG6STvcmG71n/KwIMurd2HSw6L3/GV+C+PePCXFXTuG3RijROSflD+YNd0pxUX74=
X-Received: by 10.202.4.198 with SMTP id 189mr1711670oie.262.1516217421991;
	Wed, 17 Jan 2018 11:30:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.26.51 with HTTP; Wed, 17 Jan 2018 11:30:21 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 17 Jan 2018 20:30:21 +0100
Message-ID: <CAMRc=Mf5j0r2A=R22RmAQ08XoPyspSMV9M-TBXkYm+Y8aPUwgQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Running cmake in the SDK environment from a script fails
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
X-List-Received-Date: Wed, 17 Jan 2018 19:30:24 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm working on a project in which a base linux distribution is built
using yocto while a set of proprietary components is built with the
generated SDK (-c populate_sdk).

These components use cmake for building. While they build just fine
when the 'cmake' command is invoked from command-line, as soon as
there's a fork() and execve() in between (e.g. when cmake is invoked
from a script or even when I tried tracing it with strace), the build
fails on finding any external library:

-- Could NOT find ZLIB (missing:  ZLIB_LIBRARY) (found version "1.2.8")
CMake Error at cmake/external_dependencies.cmake:10 (message):
  Could not find zlib
Call Stack (most recent call first):
  CMakeLists.txt:109 (include)

The 'found' message is there because it eventually 'found' my host's
header as visible in the strace output[1].

The target arch is core2-64 while the host is x86_64. Both host and
target dirs are present in sysroots/.

What's clear when browsing the strace output is that the headers are
not searched for in the right directory which would in this case be
sysroots/core2-64-poky-linux/usr/include/ but in
/sysroots/x86_64-pokysdk-linux/ instead.

I initially thought this to be a problem with the project's
CMakeLists.txt but it seems fine given the fact that it builds when
used manually.

Any idea what could be the culprit here?

Best regards,
Bartosz Golaszewski

[1] https://pastebin.com/1pqmbh7R

