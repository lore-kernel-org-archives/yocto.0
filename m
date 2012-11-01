Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 212E7E011F3
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 20:05:22 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id u2so1713195lag.35
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 20:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=N71iy5vi2MO9bwDTagBOqCQuBnxLi3Xw85UmClnA97Y=;
	b=Niv78MwwRfcDcxU3iEZIbCjGKoF6e+p0h3810aV4fZRCb5zw3IUvxP2wgoulfAMEWL
	WWlcS9bTTKGejF3hjN1G9heHcXuLcpOjlZorvHAsAA2lzTSCVxnDK4RaOBJbQZMNwrh+
	O5G3axXPTtTK5p8XF4lGj4SjiP61xqt/4oHQJ+GOLu/yud16EO/dGGfCB4nyypsTjUzk
	gE8/lIztBjGVfvQw61fgYoq95uzw0emJCX2VmPg/7AVLUQs/KMxlYCqy7py2oOd1Pwa4
	RajgJOSE4K4PNvkD/3JxXaiOAz0uvQvcxEo8umF5tAGIpmbFCvLMCMjOtB3C3Q8r3Vq7
	PT9Q==
Received: by 10.112.28.98 with SMTP id a2mr15135329lbh.110.1351739121574; Wed,
	31 Oct 2012 20:05:21 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.1.49 with HTTP; Wed, 31 Oct 2012 20:05:01 -0700 (PDT)
In-Reply-To: <tencent_074DE1162D42AEB548709C30@qq.com>
References: <tencent_074DE1162D42AEB548709C30@qq.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 31 Oct 2012 20:05:01 -0700
X-Google-Sender-Auth: RXVtOuwi-DkioMsZygNHa-uNGmQ
Message-ID: <CABcZAN=PUHZAbJZKkP7YzOQrLGiiuiwJFzrUCh89euZcj4BMow@mail.gmail.com>
To: Liu <treebody@embedstudy.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: how to write a shell command in local.conf
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
X-List-Received-Date: Thu, 01 Nov 2012 03:05:23 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 31, 2012 at 7:52 PM, Liu <treebody@embedstudy.com> wrote:
> HOST_ARCH:="${@os.popen('/usr/bin/gcc -dumpmachine | sed -e s\'/-.*//\' \
>     -e \'s/sparc.*/sparc/\' \
>     -e \'s/arm.*/arm/g\' \
>     -e \'s/m68k.*/m68k/\' \
>     -e \'s/ppc/powerpc/g\' \
>     -e \'s/v850.*/v850/g\' \
>     -e \'s/sh[234]/sh/\' \
>     -e \'s/mips-.*/mips/\' \
>     -e \'s/mipsel-.*/mipsel/\' \
>     -e \'s/cris.*/cris/\' \
>     -e \'s/i[3-9]86/i386/\'').read()}"
> Then I came up with a problem,I can see the variable HOST_ARCH changed to
> "i386" using "bitbake -e | grep HOST_ARCH",but when I bitbake busybox ,it
> says :
> ERROR: Unable to determine endianness for architecture 'i386    | ETA:
> --:--:--
> '

You forgot to strip off the trailing newline. Use read().rstrip(). You
may also want to use bb.process or oe.process rather than os.popen.
-- 
Christopher Larson

