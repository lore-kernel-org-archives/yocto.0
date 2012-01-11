Return-Path: <b.hutchman@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C54D8E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 06:41:24 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaab16 with SMTP id b16so231225eaa.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 06:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xB1ZgvayZ1Nwjay+Kwn68UYMWZnsIaejx9dODxwRhxs=;
	b=lN5WCO2kwdcxC92F2Ibe5MMLbZkGhMS/AiaUCrT36Mquo2wWWNwxhgd9MEDd44acQm
	uROS6PNMpHc8nGoRBaE1WlL7fQ9XZ+UB9bBKwJ1E6dZmMzi3mY5sKq88gjc1O8S+ru2r
	ATwBgTWYqS+5zUfmwrSJseIi7AISXsYDfXXew=
MIME-Version: 1.0
Received: by 10.205.127.14 with SMTP id gy14mr9730665bkc.103.1326292883264;
	Wed, 11 Jan 2012 06:41:23 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 11 Jan 2012 06:41:23 -0800 (PST)
Date: Wed, 11 Jan 2012 09:41:23 -0500
Message-ID: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 14:41:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I followed the example in the "Yocto Project Development Manual" for
setting up a local kernel repo and it didn't go so well.

A month or two ago I checked out Edison and was able to build all the
images required for Beagleboard and it booted fine (using command line
... not hob.  Tried hob but couldn't get it to work).

So then I checked out linux-yocto-3.0 kernel and setup a local kernel
git repo and went through the process of setting up poky-extras,
modifying bblayers.conf etc. to point to my local repo.

Any time I try to build core-image-minimal it looks like it always
wants to use the 2.6.37 recipe instead of finding my 3.0 repo.  I've
tried everything I can think of and I must me missing something.

So, I guess my questions are:

1.  Will linux-yocto-3.0 work with Beagleboard?
2.  Is the example for setting up for kernel modification in the
development manual still valid for Edison?

Regards,

Brian

