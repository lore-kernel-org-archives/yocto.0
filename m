Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 319A7E003FA; Fri, 18 Jul 2014 09:54:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD341E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 09:54:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EE47FF811E8; Fri, 18 Jul 2014 10:54:49 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8C2F6F8119A;
	Fri, 18 Jul 2014 10:54:48 -0600 (MDT)
Message-ID: <53C9515F.1040504@mlbassoc.com>
Date: Fri, 18 Jul 2014 10:54:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53C94ACD.6010800@mlbassoc.com>
	<CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
In-Reply-To: <CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 16:54:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-07-18 10:49, Christopher Larson wrote:
>
> On Fri, Jul 18, 2014 at 9:26 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     've always used 'IMAGE_INSTALL += " xyz"' in my local.conf
>     to add new packages to a build.  That said, I had a working
>     build for qemuarm (probably doesn't matter) and I added:
>        IMAGE_INSTALL += " strace"
>     This produced a completely broken image which barely came
>     up to a shell, lots of missing programs, etc.
>
>     I then tried
>        CORE_IMAGE_EXTRA_INSTALL += " strace"
>     which produced a perfectly working build (just as previous)
>     with the new package added.
>
>     I can see that the images produced are vastly different:
>
>     * Original working build
>     -rw-r--r-- 1 gthomas gthomas     11719 Jul 18 09:34 core-image-sato-qemuarm-__20140718124453.rootfs.manifest
>     -rw-r--r-- 1 gthomas gthomas  87611203 Jul 18 09:34 core-image-sato-qemuarm-__20140718124453.rootfs.tar.bz2
>
>     * After 'IMAGE_INSTALL += '
>     -rw-r--r-- 1 gthomas gthomas      9986 Jul 18 09:55 core-image-sato-qemuarm-__20140718155134.rootfs.manifest
>     -rw-r--r-- 1 gthomas gthomas  37859884 Jul 18 09:56 core-image-sato-qemuarm-__20140718155134.rootfs.tar.bz2
>
>     * After 'CORE_IMAGE_EXTRA_INSTALL += '
>     -rw-r--r-- 1 gthomas gthomas     11738 Jul 18 10:05 core-image-sato-qemuarm-__20140718160108.rootfs.manifest
>     -rw-r--r-- 1 gthomas gthomas  87720106 Jul 18 10:05 core-image-sato-qemuarm-__20140718160108.rootfs.tar.bz2
>
>     What's the difference and why did the first attempt fail?
>
>
> Most likely the image defined its own IMAGE_INSTALL using ?=, so defining it yourself in the configuration data overrode its default definition, since ?= is "set only if unset". If
> the recipe didn't use ?=, then your IMAGE_INSTALL += would have had no effect at all. To append to IMAGE_INSTALL directly without using CORE_IMAGE_EXTRA_INSTALL you could have used
> IMAGE_INSTALL_append, since that's a postponed operation that happens at the end of the recipe parsing.

That makes sense, thanks.  I'll stick to using CORE_IMAGE_EXTRA_INSTALL
from now on!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

