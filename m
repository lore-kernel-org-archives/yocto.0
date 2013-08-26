Return-Path: <fathi.boudra@linaro.org>
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E458E00282
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 04:11:51 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id ea20so2204540lab.41
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 04:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Gu/0YQj4vYXvgQMwOiIbAu949goRitoc6nKoytesVYg=;
	b=bm2HadejntpK7wus7Bp9eTJ49nQuxS7shott0Q2UqVTwOrF3Q7UIqdQqrAZ9NouHVG
	YNUgBO7g58DlIGyiPPkeUMtxfdisuX3frcbFxpkLPV0t2drPYi1WSf9T0oVXqZAA9gV6
	AhWcNcpG7E0gShSY6YUZTqKkwBSVzTUKY06+F4SV8EiaUWu+bbcfvnUxsBb1M/Slz9xz
	dp3IGnm/RHAxYM617p8RaOT36RGTnJbChS7uyw1aagvtLkzuaGO5gjQ9P4fV25iZCrFj
	6LdwpPoK3KXWuS7wIeDw9AHgTOjp2RiRRPdVAemxN8xSc2tHDy9DasGy3EsIXpZAWJH4
	MNgQ==
X-Gm-Message-State: ALoCoQkx+7tquB6N9B/HLyYbIws68YV9WJP03uHbzIs2XkSBb4qYshCZvHF/Zl31hOPvG6qzDlIC
MIME-Version: 1.0
X-Received: by 10.152.120.73 with SMTP id la9mr13312474lab.3.1377515510128;
	Mon, 26 Aug 2013 04:11:50 -0700 (PDT)
Received: by 10.112.160.73 with HTTP; Mon, 26 Aug 2013 04:11:50 -0700 (PDT)
In-Reply-To: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
Date: Mon, 26 Aug 2013 14:11:50 +0300
Message-ID: <CAGNsrLCvcW2WNSfmMm-DLQMxFXC5=rr9Sknj6ECdmuiZc=gHgg@mail.gmail.com>
From: Fathi Boudra <fathi.boudra@linaro.org>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio.salvador@gmail.com>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Mon, 26 Aug 2013 11:11:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

On 24 August 2013 04:36, Trevor Woerner <trevor.woerner@linaro.org> wrote:
> Hi,
>
> When I try to include "qtwebkit" in my image from the "dylan" branch I end
> up
> with the following QA do_package_qa error [note that this does not happen
> with "master"]:
>
> ERROR: QA Issue: package qtwebkit contains bad RPATH
> /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
> in file
> /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess
>
> And the QA test is correct. When I "objdump -x" this binary I get:
>
> Dynamic Section:
>   NEEDED               libQt5WebKitWidgets.so.5
>   NEEDED               libQt5WebKit.so.5
>   NEEDED               libQt5Widgets.so.5
>   NEEDED               libQt5Core.so.5
>   NEEDED               libstdc++.so.6
>   NEEDED               libc.so.6
>   RPATH
> /home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
>
> Can anyone suggest any fixes or patches? Note I'm using 5.0.2.

I haven't checked how qtwebkit is built or meta-qt5, but the Qt's
configure has -no-rpath option. A grep on meta-qt5 doesn't show any
usage of it.

Cheers,
Fathi

