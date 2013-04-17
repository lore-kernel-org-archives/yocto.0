Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED8DBE01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:31:59 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id v28so766151qcm.24
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=qN+Iv6qOa9Eiq5GW1OpwJ5d8OhAF5uPVYhaSKF+dV80=;
	b=TkNgpZopXtPtQG5w78VuQfRzwdkGqbqVr7gSCCYQMGlECY3FpMa3eSYPd8l7fHr4Fe
	ynw2wt6JMWd8/Mg9cRay4i16NYfCDrHHAoX+m/zzw02DEXfYqRlTtgfRGUZ4u21vWuG1
	XZtvPFk5Kncq4GIof6WRHYQJpvuPhxaWDV/G5+NHabrYgHZkbBu8TPHTnfQDcjE+zNrn
	l51ix2YmSajcPJn2cew5WkRB79YstAipAeJSr3sexCwaT7DviB0ApN1DTJMX5UAo76K3
	7efMClvyE2UnPLDeE57D7/pQtX281q0jvkxpUvd8VCW7++DflzV6JEiYc8xYEsjFttig
	Nf0g==
MIME-Version: 1.0
X-Received: by 10.224.56.10 with SMTP id w10mr113074qag.81.1366212719172; Wed,
	17 Apr 2013 08:31:59 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Wed, 17 Apr 2013 08:31:59 -0700 (PDT)
Date: Wed, 17 Apr 2013 17:31:59 +0200
Message-ID: <CAFyqS9q9YBd+hCRjn-gzeJj3nv=AVY0Qj3PKDyBajnRWoQDMxg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Disable stripping of binaries in do_package phase, is it possible?
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
X-List-Received-Date: Wed, 17 Apr 2013 15:32:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have a package for which some parts of it consist of pre-built
binaries, already stripped. When building I get lots of warning about
strip failing because the file(s) are already stripped.
Is there some simple way to turn off stripping during this phase?
I tried to disable do_package using the [noexec] attribute but that is
the wrong approach surely since it causes the rootfs build to fail
since the .rpm is not compiled properly ;)

Hans

