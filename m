Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F72DE00C75; Wed, 28 Nov 2018 00:42:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC85E00C71
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 00:42:19 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wAS8gF2K031664
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 28 Nov 2018 08:42:16 GMT
Message-ID: <9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Richard Weinberger <richard.weinberger@gmail.com>, yocto@yoctoproject.org
Date: Wed, 28 Nov 2018 08:42:15 +0000
In-Reply-To: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Wed, 28 Nov 2018 08:42:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 2018-11-27 at 22:46 +0100, Richard Weinberger wrote:
> I have a hard time understanding how to build a distro with x86_64
> kernel, i586 userland
> and an SDK for that.
> In the beginning I assumed and have been told on IRC that multilib is
> the way to go.
> 
> But it seems that building and SDK is currently broken/disabled:
> 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e153efde9754a650e555f46cba09680baabd7d7e

I see a bug was opened for this but its not valid and this shouldn't be
an issue. Keep in mind that an SDK contains all multilibs so "bitbake
X-image -c populate_sdk" would be equivalent to "bitbake libXX-X-image
-c populate_sdk" and be the same thing. One didn't work so we remove
that.

> Another issue,if I try to add lib32 packages to my x86_64 image
> building the rootfs fails due
> to such odd apt errors:
> The following packages have unmet dependencies:
>  lib32-packagegroup-core-ssh-dropbear : Depends: lib32-dropbear but it
> is not installable
>  lib32-packagegroup-core-x11-base : Depends: lib32-dbus-1 but it is
> not installable
>                                     Depends: lib32-matchbox-terminal
> but it is not installable
>                                     Depends: lib32-matchbox-wm but it
> is not installable
>                                     Depends: lib32-mini-x-session but
> it is not installable
>                                     Depends:
> lib32-packagegroup-core-x11-utils but it is not going to be installed
>                                     Depends:
> lib32-packagegroup-core-x11-xserver but it is not installable

Unfortunately the debian backend is the least supported for multilibs
and I suspect you'd have better luck with ipk or rpm.

> Are there other possibilities?
> Userspace can be pure i586, so full multilib support is not needed.
> Having a x86_64 toolchain should be goof enough, it could build
> userspace with -m32 and the kernel as-is.

The system can definitely do it, its just not something we tend to do
very often so its not entirely clear the best way to do it.

What may work is selecting the i586 tune from an x64-64 target machine?

Copying qemux86-64.conf to qemux86-64-2.conf and changing it to have
DEFAULTTUNE ?= "i586" did appear to start to build at least in a quick
test here...

Cheers,

Richard




