Return-Path: <marc.ferland@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6DE0E00303
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 13:17:55 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iaqq3 with SMTP id q3so11916545iaq.35
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 13:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=q6KNGYtlAwwPKIUtkoewMVXmBf9jCVCJ1uckY+Z7ZzI=;
	b=HbKBMKa9+GTtI7QyWLsp8qgZhI5AVXsj2vRgLKMlNTvmeDn1uDV+FJF/Y1GvuT8uAB
	YO6KKjjnNu0OIoqAiexpuZvyOGvpKJHmuViJGhe1x+uDkgytkmze3QNvv59dmWdgUvkz
	7Xg/voBls5Hn8mNnkgc0kyXTAKnGUMgNUi1M4=
MIME-Version: 1.0
Received: by 10.231.74.77 with SMTP id t13mr3300484ibj.84.1322515075086; Mon,
	28 Nov 2011 13:17:55 -0800 (PST)
Received: by 10.50.34.166 with HTTP; Mon, 28 Nov 2011 13:17:55 -0800 (PST)
Date: Mon, 28 Nov 2011 16:17:55 -0500
Message-ID: <CAMRMzCDqDjf3jKnGnkFeJUg8N+2gKkumA9fo0TK9ckKan8jvtQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: Native build tools question
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
X-List-Received-Date: Mon, 28 Nov 2011 21:17:55 -0000
Content-Type: multipart/alternative; boundary=000e0cd729ba42b8b804b2d20950

--000e0cd729ba42b8b804b2d20950
Content-Type: text/plain; charset=UTF-8

Hi,

I'm currently writing a recipe for the visualization toolkit (vtk).

To compile, this library invokes executables that are generated on-the-fly
by the compilation process (a little bit like Qt and qmake).

The path to these executables can be specified to cmake when building vtk.
So far I was able to make it work by hard-coding this "tools" directory in
my recipe to a path on my local machine. It works, but it is not very
portable.

What's the official way to handle such libraries?

Should I first do a native build, then use this native build directory when
cross-compiling? If so, is there any examples I should look into?

Regards,

Marc

--000e0cd729ba42b8b804b2d20950
Content-Type: text/html; charset=UTF-8

Hi,<br><br>I&#39;m currently writing a recipe for the visualization toolkit (vtk). <br><br>To compile, this library invokes executables that are generated on-the-fly by the compilation process (a little bit like Qt and qmake). <br>
<br>The path to these executables can be specified to cmake when building vtk. So far I was able to make it work by hard-coding this &quot;tools&quot; directory in my recipe to a path on my local machine. It works, but it is not very portable.<br>
<br>What&#39;s the official way to handle such libraries?<br><br>Should I first do a native build, then use this native build directory when cross-compiling? If so, is there any examples I should look into?<br><br>Regards, <br>
<br>Marc<br><br><br>

--000e0cd729ba42b8b804b2d20950--
