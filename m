Return-Path: <trevor.woerner@linaro.org>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A3DDE00B94
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 14:07:32 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id i4so4147370oah.38
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 14:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=IVe2IyFlHzw91lB5Z/hlY8Xawwd0IxxVk1BFmlrXAqs=;
	b=N5Dncac+WvEjjmhmKppkctDNZ7pvwcM16zP5wv3lUnZ7Ey68dllT7l8jysYvN6ecSQ
	wzk8zYC/JfSQRvAhMeH3EzdanS5ZNfBH7E9z4v0Ibk8r/uV5jAFYp39Dj15SYJ3M35zq
	ZOr/QUEP+flpKTH8/T3fsPrvU6a0fP9dlj8Qq0oDAhr8kV95qrGCRC1By/LdLbaXp2Ik
	N0VVU8+CnrAb5rSEuDPBNC9oOrv7P8Zw8F4t+pGmgvF06KM0T9s8IW05t8CNXf/9yvVV
	ai87oXLGNvC3gnsLyZLjn/tshMZiHByaSXrmK4O49QNippo5wTJxR/V9HYdvMwDxdqB+
	sSDA==
X-Gm-Message-State: ALoCoQmPP3RWxnaWYahnb1R0baT0ZDM63zA+B3vDXCVrpenpQ7N6ADJyjsdgbnocFx67EIC/3Miu
X-Received: by 10.182.22.18 with SMTP id z18mr18663857obe.42.1395522451265;
	Sat, 22 Mar 2014 14:07:31 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id cg5sm14826484obc.9.2014.03.22.14.07.30
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 22 Mar 2014 14:07:30 -0700 (PDT)
Message-ID: <532DFB91.2030403@linaro.org>
Date: Sat, 22 Mar 2014 17:07:29 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <532D6D85.7010302@linaro.org>
	<CAJTo0LYruhkg+c5KOae410SQkV0sRH-h05Y+gL73i1zYfsh0cw@mail.gmail.com>
In-Reply-To: <CAJTo0LYruhkg+c5KOae410SQkV0sRH-h05Y+gL73i1zYfsh0cw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inherit setuptools
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
X-List-Received-Date: Sat, 22 Mar 2014 21:07:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/22/14 15:45, Burton, Ross wrote:
> On 22 March 2014 11:01, Trevor Woerner <trevor.woerner@linaro.org> wrote:
>> | Traceback (most recent call last):
>> |   File
>> "/SSD/build/fsl/build-wandboard-dual/tmp/sysroots/x86_64-linux/usr/bin/bmaptool",
>> line 65, in <module>
>> |     from bmaptools import BmapCreate, BmapCopy, BmapHelpers, TransRead
>> | ImportError: No module named bmaptools
> That's interesting because as can be seen in your listing, there *is*
> a module called bmaptools.  Does bmap do anything "clever" (read:
> stupid) before it does that import?

Oh wow, you're right. The "bmaptools" python script which is installed
"by-hand" simply does:

    #!/usr/bin/python
    # EASY-INSTALL-SCRIPT: 'bmap-tools==3.2','bmaptool'
    __requires__ = 'bmap-tools==3.2'
    import pkg_resources
    pkg_resources.run_script('bmap-tools==3.2', 'bmaptool')


Whereas the one installed by using OE looks more like a regular python
script. It's starts with:

    #!/usr/bin/env python
    [...snip...]
    VERSION = "3.2"

    import argparse
    import sys
    import os
    import stat
    import time
    import logging
    import tempfile
    import traceback
    import shutil
    import io
    from bmaptools import BmapCreate, BmapCopy, BmapHelpers, TransRead

    class NamedFile(object):
    [...snip...]


And if my understanding of "inherit setuptools" is correct, this class
explicitly circumvents the use of easy-install. (?)

> And FWIW, I didn't get much out of bmap when I tried it because of how
> our images were constructed: all of the sparse segments disappeared
> when a whole-disk image was created.  I got a much better win by using
> USB 3: around 10 seconds to write a gigabyte+ image to a stick...

Interesting.

By default an image created by OE will be just slightly larger than what
is required. So a core-image-minimal will be just ~80MB, most of the
empty space is removed, and the image can be dd'ed onto a microSD card
quickly. But unless I partition the device (for example, 4GB microSD
card) myself, the resulting image will only see ~80MB of disk space.
When I force the build to generate a 4GB image (to load into a 4GB
microSD card and have the remaining space available) using dd takes
almost 50 minutes. Using bmap to load the same image onto the same 4GB
card takes under 15 minutes.

So yes, there's no win if you're just burning the image that comes out
of the build, because these images only contain the useful parts. But
the images which come out of the build only create a partition that is
slightly larger than the used space, leaving the rest of the device
unusable (unless you partition it yourself).

Or is there some trick I'm missing?

