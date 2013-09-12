Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C8F0E013DA
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 03:28:17 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id h1so10409849oag.38
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 03:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UqapQW/TxuzrFyGsO5uOZS6pUeiwI1+2JB2UmDjzB4U=;
	b=TL5hQJKTlA3G14rMkIKWGQujefOp6HWLyGYK3oXAtvKQKgfEcaa+J8CHe5+rq8Z4a+
	skyYhn2UO0ytPOBsAKM175f54Prmyogd2/FadLKLeiOp5hlNptWBA9cFsVvSYCzCQd8T
	DSejfSsr0p/RjMpE8I2GGysd4r/u1TjXvFqAiA8p3RDwEVFbRtVGRKCLzOMjRveyMgxD
	fXNRU2AcwDdt2+NGK8GDd+WeWKb3Zs+DfcSju9FxCDw1H5rYaiFIGiAOWW/PlbYqHgQW
	zfsbX8HOj45L8TB3dPzItyEPunTXoQcKX46AstwmqRcqgoJm1o4WiC0phIz587ei6hLh
	L0lg==
MIME-Version: 1.0
X-Received: by 10.182.242.11 with SMTP id wm11mr6145864obc.26.1378981696827;
	Thu, 12 Sep 2013 03:28:16 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 12 Sep 2013 03:28:16 -0700 (PDT)
In-Reply-To: <5231901B.8090801@hiramoto.org>
References: <5231901B.8090801@hiramoto.org>
Date: Thu, 12 Sep 2013 12:28:16 +0200
Message-ID: <CAFyqS9oOY4pyaM63XQnTrh8Qh4pik=b35n78_H76+ifm-qrC=Q@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Karl Hiramoto <karl@hiramoto.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: package development recompile and install to rootfs
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
X-List-Received-Date: Thu, 12 Sep 2013 10:28:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 12, 2013 at 11:57 AM, Karl Hiramoto <karl@hiramoto.org> wrote:
> Hi,
>
> I'm looking for a faster way  to recompile and install my package to my
> rootfs.   I am currently developing on a ARM board, and I'm booting the
> kernel and loading the rootfs over NFS.  I point the nfs root to
> /home/karl/Work/yocto/poky-dylan-9.0.1/build/tmp/work/mymachine-poky-linux-gnueabi/mymachine-image/1.0-r0/rootfs
>
> in my custom "mypackage.bb" recipe I have:
>
> DESCRIPTION = "mypackage"
> SECTION = "base"
> LICENSE = "CLOSED"
> DEPENDS = "libnl jansson file"
> SRCREV = "HEAD"
> PR = "r0"
> inherit autotools pkgconfig externalsrc
> S = "/home/karl/Work/mypackage"
>
> So to compile and reinstall mypackage i do:
> bitbake -v mypackage -c clean -f  && bitbake -v mypackage -c install -f &&
> bitbake -v mymachine-image
>
>
> The mymachine-image  deletes and recreates the rootfs, which is lengthly.
> After i do this, I need to reboot my  target board, so the nfsroot gets
> remounted.
>
> Is there any way to quickly get  mypackage  installed on the rootfs?    I'd
> like to be able to quickly recompile/link mypackage after changing a few
> lines of code.
>
>
> I could write a script to copy the binaries over but I'm wondering if there
> is an easier way.
>
AFAIK there is no quick way of updating a rootfs image with a new
version of a package. If there is then please tell us because I would
like to know too ;)
If your are only after package development and testing it on target I
would use the SDK. That is why it exists. The poky tree is so much
more than a simple cross-compilation toolchain. It is a complete
integration/build and package management environment, not a
development tool for individual packages. In our case we build our
packages stand-alone using the SDK toolchain and then upload them to
the board using scp or a special dedicated NFS mount for testing. It
is a very quick way to try out those few lines of code you changed.

To build the SDK, you do bitbake -c populate_sdk <your image>
The result will be a huge .sh script that you run to install the
toolchain somewhere on your host/build machine.
After install you source an environment setup script in the root of
the install path and that is it. Now you can configure/compile your
package from anywhere. The SDK will provide exactly the same header
files and libraries as used when building your rootfs so output from
the build is 100% binary compatible. Just throw it onto the board and
run :)

Hope it helps!
Hans



>
> Thanks,
>
> Karl
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

