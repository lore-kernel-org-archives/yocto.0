Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1823CE0179B
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 17:32:41 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id as1so12818737iec.27
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 17:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=MfnBKIoZWkCqM/VNQMd1dxvYRwQu6O9VyjKVmzJQ9nk=;
	b=BCWiuT45H87JXa2M384V5WihhqF5BIWGoieZi6taZSDT9jHtAZ71HrlcZo0XFZaZq3
	IOviqiJktBF+4IE7VsWu2vsTEhtvjEIXMZ/jMxuhv7lLrS0NbIqeitQpqoJM1JYLQ1fv
	kOV5+1i3A6aS9Al+8A5ZVo7oI2WzVTKm8A0J/oaVXowndYnGKRbWEJ6CuSZPCpG0Yyo+
	KQEsXvAyAir+mq58vVPZ+dIdJIdjC5UOqe2gEZr91OVk5lllRJjcKduNDjbXnqien4JL
	VbPeBxdPQ4/ucVbM7LEc/gb2zu7XSrsBJuXZfKP6pYFyjVwPN1aYD44+rxzRX2EoyHts
	Eamw==
X-Received: by 10.50.23.103 with SMTP id l7mr10543888igf.3.1383006760803; Mon,
	28 Oct 2013 17:32:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Mon, 28 Oct 2013 17:32:10 -0700 (PDT)
In-Reply-To: <CAFyqS9o8pzBvi33VuZYkKA7aO=xZgzgvwJdvMArfJV3itme8+A@mail.gmail.com>
References: <CAFyqS9o8pzBvi33VuZYkKA7aO=xZgzgvwJdvMArfJV3itme8+A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Oct 2013 17:32:10 -0700
Message-ID: <CAMKF1spf1bR0Qv_UUXezi+OoUXKmYyx9NQftZHxF9RRB8CUBTA@mail.gmail.com>
To: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with staging dir in Makefile.am
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
X-List-Received-Date: Tue, 29 Oct 2013 00:32:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 25, 2013 at 3:46 AM, Hans Beck=C3=A9rus <hans.beckerus@gmail.co=
m> wrote:
> Hi. I have a package that tries to point to a staged/installed source
> file (shared) in the list of files to be compiled.
> But how should the Makefile.am properly pick-up the current staging
> dir for my target?
> Currently it is simply using /usr/share/foo/foo.c, but obviously that
> will not work when cross-compiling or using native staging dirs.
> Any suggestion to in what way a Makefile.am should be written to
> handle such a case?
> I tried using $(DESTDIR) but that does not seem to be populated in this c=
ontext.

hmm, is this a source from a different package ?
I guess for Makefile.am you could use STAGING_DATADIR  OE variable
if there is some ac_cv_* variable that you can use to bridge this
environments then it will make it portable beyond openembedded.

>
> Thanks.
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

