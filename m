Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F02DE00C46; Thu, 14 Feb 2019 08:55:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A719E00A0C
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 08:55:40 -0800 (PST)
Received: by mail-it1-f175.google.com with SMTP id z131so6272810itf.5
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 08:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=088M3eatKdmwaXCYEJiMLiE5Ze8fDRYlaEunMIIEZxs=;
	b=EF0CAIlHM08ch6A8AhumkY6iFjC+jYx1/dVjj0G+ZMWHnLkc4tAct7dRSRjVb153fd
	NnOcoKY3fhY/YRTM5SjM0stX1Tu9gnTg4WS7O2/SuNjynylCWslgITaavh1iHYzvxsSI
	IYoqk0fl+cSGhWk6iBOvaCNvM0KMrMkUhAY6Sv2R5xR9jB6up61TtxxPsBJLRQwOcvdb
	1BSDithW0XFt2fxKjZJolVA8RIB8Qapf78ROKM2IJNA9qdC1mhBi/z/qj/cTIgQjH5ur
	GeThnW1twl0FLFtf2uU51e4c712Mrd6h3Z98dZYRfJAMOncscYweRO3xqJUNGjS1RIgF
	HePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=088M3eatKdmwaXCYEJiMLiE5Ze8fDRYlaEunMIIEZxs=;
	b=cYwFJM26umaBilvir4MX05p8V7vbDFpvvuV7J1FtwsFXVmmTc1Ru1BBMIGlHCSY6OS
	YcgSVHTbm23mmIaWrFo2i7GIj4j2P5F2FqN3b/32mKPSlJbuJz90Fk0pLJjSKE0BA9fD
	kh2aK87NrQcIxIce+uHJE5HwHc5cywczv3NSYgVm+72iDXH2mE6U98pW+ySKyQXEnmJw
	AQxYXRZJJxXNIz3RiUJEXDQIfR3zc3wshKoVKuf3GzTZrn6puVvFb4AJVZz/nyGpasCB
	g4NYHIlNcs/z2utzPR+xNEaOrEjm99SQB8l6Vz9BldNnNGDSyh9XAcy+KAkgtGUpr8C/
	JCOA==
X-Gm-Message-State: AHQUAuZmvSLyaBNoRLec46trBavAw68FnVY5zVFjj+PrSGcEUc0fs6t3
	qAAGSCXJNxh0/no02LZdNMkI+ViHW+s89d5qp5JtZw==
X-Google-Smtp-Source: AHgI3IY8weaaB4w8Dfcu7diXUsN2Mp0qpkVBg5eycLF/FV+4SiCj5w3l6Zz7THVXJMtzW2nx3ZZhFJqhzHihkUjpR7E=
X-Received: by 2002:a5d:818d:: with SMTP id u13mr2695537ion.20.1550163339659; 
	Thu, 14 Feb 2019 08:55:39 -0800 (PST)
MIME-Version: 1.0
References: <IwCSBa8UNgIfRzldVTE4xVmfnQsdsbhPhxR3hNKJSg5WGpUoVUnaS-rwOcCQ-oDgZiMhl75IKCl6BTdjUzZQTK0QLtDDFLNOUdX5SgOJezg=@protonmail.com>
In-Reply-To: <IwCSBa8UNgIfRzldVTE4xVmfnQsdsbhPhxR3hNKJSg5WGpUoVUnaS-rwOcCQ-oDgZiMhl75IKCl6BTdjUzZQTK0QLtDDFLNOUdX5SgOJezg=@protonmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2019 16:55:28 +0000
Message-ID: <CAJTo0LYK1DoH16fOcAdv7sxfefpJddWJqcb0oVchAb8sJy_QYw@mail.gmail.com>
To: madoga <madoga@protonmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two recipes install the same file
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
X-List-Received-Date: Thu, 14 Feb 2019 16:55:41 -0000
Content-Type: text/plain; charset="UTF-8"

Two packages can't install the same file.  In this case I suspect
you'll need to split up the packaging further.  A common alternative
for binaries in /bin which want to be installed by both e.g. coreutils
and busybox is to use update-alternatives.

Ross

On Thu, 14 Feb 2019 at 16:36, madoga <madoga@protonmail.com> wrote:
>
> Hello everyone,
>
> I have an issue while I'm trying to overwrite some files that two recipes are installing. Task do_rootfs fails and I want to ask about the best way to solve this:
>
> -------------
> Error: Transaction check error:
>   file /app/econfig.xml conflicts between attempted installs of tests-1.0-r0 and error-1.0-r0
>   file /app/controller.xml conflicts between attempted installs of tests-1.0-r0 and controller-1.0-r0
>   file /app/user_mode.xml conflicts between attempted installs of mode-1.0-r0 and tests-1.0-r0
> Error Summary
> -------------
>  When I launch bitbake with a concrete image this error appears and I don't know how I can give "priority" to a recipe. I have found something about create .bbappend file...
>
> Thank you,
> Mario
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

