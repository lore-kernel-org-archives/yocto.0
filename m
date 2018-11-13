Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6151FE00C41; Tue, 13 Nov 2018 02:17:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE033E00B45
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 02:17:44 -0800 (PST)
Received: by mail-it1-f175.google.com with SMTP id e11so17601811itl.5
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 02:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oqKOgXDQLinuyyA1x2lNi9OBZbcMEfA1nz4XSauDeVc=;
	b=yRQDT2DpdOkzaXQtAZlx8dUzJg3w/tcX+c30MCOgIExj9wTZLvz/CLtO+AizVjM5HT
	FIS8+8skbNrws1vP8YYlOgVMpfSYyGj67O9BuJJdgARrD2tZTmc9FCH7qBpoWal5q1EO
	4WW01nFNyq1deoDqO0XwftA+20luJR8BwX2N+VawgmqZoshHpdrdfP6z9UJ1Dj2YWVsr
	XxjP5MCclrBoFiil/cW8a8vQ1iQ/TQL+tz6BLR/BaIcY/4JfdU0b0RhCuKmsra8kqymk
	FUawW4S7BYm4NXSv/UzhFBmgOyBGoiJ8vFVG82/bAJq2+5BY7KAxtNXv9CyWsDwU/hqk
	AJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oqKOgXDQLinuyyA1x2lNi9OBZbcMEfA1nz4XSauDeVc=;
	b=mCy0WvqjGO/9GTn7TBG1MrQOdhfRZb/XPTI2GKKJWA/5o4XrhzhW5XRBQlo0qMrSja
	SwegS6jcJRTZ3VONWNzfr61L+vTbldd0o0RA5YmfiS5L2+Y01U8Cg3MEeqJi+KUbsgh5
	GNX3Ip/zXbZRPtKH+mG2yqkvw2bPBbELHb4oH3o2sllu1b8OhNLVzCmfJKBVRXARF4cx
	qZJh54o/hd68OZzoTfK+oh7FlhA89LZj/yrk0lHAqSCEcvtSYNpsP4iV636yXJD+LLF0
	IfL36aKq3O/cExqGBax5NLXV/14uEbMSxY6FR+JMLNkCWFA+QS+8NXxZSKJ9+b83/q7a
	G1Mw==
X-Gm-Message-State: AGRZ1gLwo1HIzZRere26Cky5H9ySZ7yD9cxU36KzDWS4z/BfSOUL90H8
	e6WItxuCtXQAfYG827aacxtTPHx8N7lsJDw9vVkRSo7H
X-Google-Smtp-Source: AJdET5c2x9CPQKh8wTjJAe0xIboIGJ1vZVYdIiPdud+Z8wT80/AoTuG+R84oIzSl5Jh0hHiREDRr+CYY/Da1vPSId0A=
X-Received: by 2002:a24:ce45:: with SMTP id
	v66-v6mr2835266itg.26.1542104264327; 
	Tue, 13 Nov 2018 02:17:44 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
In-Reply-To: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Nov 2018 10:17:33 +0000
Message-ID: <CAJTo0Lbk4CEX3PU=k7t8BAsyiPH=4mE3fRe7hWK8p3tndDRVzA@mail.gmail.com>
To: samuli.piippo@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Tue, 13 Nov 2018 10:17:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Nov 2018 at 09:57, Samuli Piippo <samuli.piippo@gmail.com> wrote:
> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result a lot of the executables in the toolchain no longer run correctly on Windows.
>
> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and exit without any output.
>
> Has anyone else seen this?

I suspect we need to find a maintainer who actually uses meta-mingw
and can actually test it.  Would you be willing to bisect thud to sumo
to identify where it breaks?

Ross

