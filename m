Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 070D1E0110C; Fri,  6 Jul 2018 07:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 805E0E00AAB
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 07:29:50 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id i12-v6so23818105oik.2
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 07:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DlBrj0lXjOwfD/7hezyNUB6c9JwsogRMVkT0+ouNtjw=;
	b=jQmaGLbh+wKx/NIaT2i03WNCrjQQlNgPv1XXMXm/FpASWCf84Cf5yu0+8gXgaN+OJ/
	qhIzNYkLFo8BApqUi3pH6PKNUK54+hcOdsM6dNmm5GzkJDYrT0YSLII6BlIj8EjCwSyX
	2QLkDIgaCTn6vGjRTsIJeHU9pRmVWQAkujLzKjWDmWJXdWOCj3oh5mu3FDYt0JJA5EtP
	owgyw2uavWtTXa+Li0AKLj68914yTgdP22Ak7037k+e7MqlxMyhBGhT201lL+YhSYH7y
	EBopqNVxNvcN9QQdvAZRvXrJaf2XGNlGxx/qDqZc/vTWWdz0h6Z28wtWj/TaVjr9SKKP
	WEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DlBrj0lXjOwfD/7hezyNUB6c9JwsogRMVkT0+ouNtjw=;
	b=itpiE26EO1IjJhDapcOKkAYcHJk2JtlWQgclhhjL1zzKvBxQZwL5bMgIlI2HvtzR7s
	R/V48uMf3NIUp77KYDnY+9o4Q5+NMCxqufMyUfr6tGGNyq8fwNb3Ou9s5QdCd1xKG+Ds
	ulnPsQLfZUYto0U0bLe6DmqXs4MedFXT12uCYmZC3hGap8KJqg35taN0EjDgrOzg4BmU
	x1ioYQ0eoNZxFoxI50JG0HbMsiVVeR7hUParjqn28VMBma0IquVtfDlEGyC22uBXj9Hx
	MTV/1FYwDCwZUtcPQWzkRDe7EtXAQolMXerCSPu/gFhw4yxS6hQ4xWjxGisAJCVG3V4F
	xwkA==
X-Gm-Message-State: APt69E2FuIBmOlTL09ED/yG1+Fm7Ue4Dky8ehIMtXsH+t7UaskIlnOWN
	ZX0W/vM3Sli+aYfTlJR+ObcPyxYd+Py0D/oj7noaTA==
X-Google-Smtp-Source: AAOMgpf5OG72x+fKggpILXSVe53wpeYQVI+3MM7rC1Bjygqe9uIch09nOLAxO7uAkhql8E4Bu5Tuw3zYhhcw9VwwsoI=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr12497473oig.245.1530887389965; 
	Fri, 06 Jul 2018 07:29:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 07:29:29 -0700 (PDT)
In-Reply-To: <CAGKr=yc1_LOVVufBRdWrx99_3fpm7WvEQZmqwJaCYO+2TnXAEA@mail.gmail.com>
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
	<CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
	<CAJTo0LZTbW7RRUt1rA62VxdwitR9Xac5KrBbuSLtdx5reHrdVQ@mail.gmail.com>
	<CAGKr=yc-cZArRiH=reK35FCLvUxRs7Rye8eZKnA4evBy+kDCXA@mail.gmail.com>
	<CAJTo0LYcHNQoZjEZ8D=dqt9-3i7_e8ivNfXxvLt_qAF0QQj-9Q@mail.gmail.com>
	<CAGKr=yc1_LOVVufBRdWrx99_3fpm7WvEQZmqwJaCYO+2TnXAEA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jul 2018 15:29:29 +0100
Message-ID: <CAJTo0LaKhXf-yRLKusQpY4GuJKR4Bpp0VV709hEMrNxjduVO-w@mail.gmail.com>
To: Oliver Westermann <owestermann@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 14:29:51 -0000
Content-Type: text/plain; charset="UTF-8"

So the native recipe-sysroot-native is used for stuff that is actually
ran during the build, like Python, or gcc.  The target recipe-sysroot
is target libraries.

Note how it started by saying it found jpeglib.h in /usr/include, you
certainly don't want that so this auto-detection is really badly
coded.  Can you tell it where to look explicitly?

Ross

On 6 July 2018 at 14:53, Oliver Westermann <owestermann@gmail.com> wrote:
> Am Fr., 6. Juli 2018 um 15:13 Uhr schrieb Burton, Ross
> <ross.burton@intel.com>:
>>
>> Move your DEPENDS up, as the inherits are setting up DEPENDS with
>> python3-native python3-setuptools-native, and you're overwriting it.
>>
>> Put the DEPENDS after PYI_PACKAGE but before inherit.
>>
>> Ross
>
>
> One step further :) It now compiles...and fails. Interestingly it raises an
> Exception missing the jpeg library. I found the libjpeg.so and header files,
> so i enabled the debug info of setup.py. This reveals some strange-for-me
> details:
>
> | [other messages where it searched for libjpeg.h]
> | Checking for include file jpeglib.h in /usr/include
> | Found jpeglib.h
> | Couldn't find library jpeg in
> ['/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/lib',
> '/usr/local/lib', '/usr/lib', '/lib']
>
> So a find | grep jpeg revealed that the library files for jpeg are placed in
> recipe-sysroot/usr/lib/, while zlib places librarys in
> recipe-sysroot/usr/lib and recipe-sysroot-native/usr/lib.
> Some googling didn't provide an answer, just more confusion :O
>
> Olli
>

