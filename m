Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA261E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:25:35 -0700 (PDT)
Received: by mail-qe0-f41.google.com with SMTP id b4so1987898qen.28
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=bGZ/uzXorNuITLG1jKKkpOZ95ZDBsOUosNQUc5sSnKQ=;
	b=ZnupD8BV8V+IRuCRwYWELBeupkQwwL0OU3htU8MHoqfXsGnduNQSay7P2VaLDOc/D3
	XVTOQvV5+1k+S4SH0zak5AFlEJvVCtMDlYrVkzlSnP83JjH2ZnAiC61V4NKfwSxS6GBD
	CFhIV1iH9asO3PKQulisZSFQ3hWY5Yr/wdfIRwbXTik1FBtHc9T+LrHfF1tVAwJhYRGL
	YSZEOzbT80Y+42Nm8wxZgXLzEpwpVUxJzDQxrYPnAvpa7NNq3nzlX6K7uroq/9woS+2o
	RYt3jYFULjroP5ZmRK5ILhFV5k/73RGCWDvQSACmVkQKzFXdXIMvNLhfBMuuyZfeGf1i
	u+GA==
MIME-Version: 1.0
X-Received: by 10.49.96.104 with SMTP id dr8mr6472432qeb.43.1369322734865;
	Thu, 23 May 2013 08:25:34 -0700 (PDT)
Received: by 10.49.24.142 with HTTP; Thu, 23 May 2013 08:25:34 -0700 (PDT)
In-Reply-To: <CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
Date: Thu, 23 May 2013 17:25:34 +0200
Message-ID: <CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Thu, 23 May 2013 15:25:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, May 23, 2013 at 4:55 PM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 23 May 2013 15:50, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>> But in the rpm, the libs are packaged incorrectly (or at least not as ex=
pected)
>
> There (should) also be a linx-dev package, that contains the .so
> symlinks.  .so symlink files are only needed at compilation time for
> properly versioned libraries.
>
> Ross
Well, yes and no ;) If I look in /lib there are plenty of libraries
that comes with .so files so it seems they are needed in some cases,
right? Also, since part of our system software is doing loading of
dynamic libraries themselves using dlopen() it is *very* hard to
enforce removal of .so files since that piece of software does not
know what particular version of the library it should use. It should
load whatever .so points to, most commonly the latest version. So, is
there some way for us to make sure .so files are also part of the
.rpm? we do not wish to install the -dev variant since it also
pollutes the system with a lot of other not needed stuff. Since /lib
is having a lot of of .so files it must be possible, or?
Actually, I have never seen a system that does not include also the
.so files? Not even embedded ones. They are only soft links so
flash/ram/disk space is not really an issue here.

Hans


On Thu, May 23, 2013 at 4:55 PM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 23 May 2013 15:50, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>> But in the rpm, the libs are packaged incorrectly (or at least not as ex=
pected)
>
> There (should) also be a linx-dev package, that contains the .so
> symlinks.  .so symlink files are only needed at compilation time for
> properly versioned libraries.
>
> Ross

