Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6853FE006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:48:09 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so734945veb.40
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=wnMwRYxmAz00qpBtKhiFSsiWuFCFQLBMGe9UpyQWJr0=;
	b=iOfOjZxDqrIFtb+U29Kgz3V48iaJXZRWgvyUAjdGMfUvihvRvu7NoL7w1+9jL4PR2y
	fMbsRrNVHp8x60bBIoRZkA15JyI6ckMLfoomSqH27zyuBg4+1/BRRCNMOZHybEhOtWGx
	8gkeCq+AeLsJC6OzFGnS+f4G8DDmrBAGIrlZHUetLYC8asWcrWLTUrYG2P0r9U0b7IP9
	+THxrgtNXtd2VbXS29bpjN3r3D54aoI3eMfdBYxnHgA6GU/v1n4ngTrVa9p5AARiezoQ
	AGNwyu5+XITdguHRLogAswLRGSnhNp6xu+Ke65WQkEr3YK93pi0WYD5i/bzVxoshd3GQ
	Jkxw==
X-Received: by 10.52.117.212 with SMTP id kg20mr4926673vdb.55.1369324088772;
	Thu, 23 May 2013 08:48:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Thu, 23 May 2013 08:47:48 -0700 (PDT)
In-Reply-To: <CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
	<CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 May 2013 16:47:48 +0100
Message-ID: <CAJTo0Lbv6RmRN-dO_BRNmSRN49x5Pz8RqXOGf=kB5KcVz0MpyQ@mail.gmail.com>
To: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQk/RKLkfx1CinBbz0S9nSXFh4TH+K4oLWeH75OuN/LdvK2s7UmIJRnUCUH76MLTi4hBIUES
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Thu, 23 May 2013 15:48:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 May 2013 16:25, Hans Beck=C3=A9rus <hans.beckerus@gmail.com> wrote:
> Well, yes and no ;) If I look in /lib there are plenty of libraries
> that comes with .so files so it seems they are needed in some cases,
> right? Also, since part of our system software is doing loading of
> dynamic libraries themselves using dlopen() it is *very* hard to
> enforce removal of .so files since that piece of software does not
> know what particular version of the library it should use. It should
> load whatever .so points to, most commonly the latest version. So, is
> there some way for us to make sure .so files are also part of the
> .rpm? we do not wish to install the -dev variant since it also
> pollutes the system with a lot of other not needed stuff. Since /lib
> is having a lot of of .so files it must be possible, or?
> Actually, I have never seen a system that does not include also the
> .so files? Not even embedded ones. They are only soft links so
> flash/ram/disk space is not really an issue here.

*Every* mainstream linux distribution will not ship .so symlinks
unless you've installed the development files, or they are needed for
some reason (generally, the .so won't be a symlink in that case).  If
a particular library is designed to be unversioned and dlopen'd using
a .so filename, then change the FILES as appropriate.  If your package
is dlopening arbitrary versioned libraries though libfoo.so filenames
then you can either do more work and find the real name, or mess
around with the packaging yourself.

Ross

