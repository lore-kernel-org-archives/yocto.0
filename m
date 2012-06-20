Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D8EEE01423
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 22:53:25 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2837338eek.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 22:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=qhjSUAJmxWxiT8u6+o3s6VlDdym2smO4jlG0nWv6M90=;
	b=vFhPO5c7Jihh7NcBIXh8VvEzkr5jL7nDv3J94iquTj2l1lUv9gzOqrPIrFQd7vNI9K
	2EiPQhX4+7zuFexu4TE1YCw8dFd/vZTtwuya2JTm3Dqc2QFPgc8cEF/px1ND4oLGyP97
	Jt7E4HEs/xzlkRsxo/DvLh6fB71G7GfWcKhfQP77u9aq5Pavf3Q/UquL461QFUjycyhp
	14oGtWOpHt5HXem7o6SzxFmgTOOixlWr6RsD/M0noDSt7cn1UqjWOfcgrCLXS65uNjqe
	BNrpOp8SSyBCaWKqanfFHG3RgiPS6UfEWE2YlMvbipAYj3uFGUSAkjqg221eTw2wXPJv
	YKvw==
Received: by 10.14.37.206 with SMTP id y54mr5069643eea.218.1340171604346; Tue,
	19 Jun 2012 22:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Tue, 19 Jun 2012 22:52:54 -0700 (PDT)
In-Reply-To: <CAE9DZURgGbWuEL5FuwvXAj3NOdq-KE2uUUGEQuq4MWK8usYCcw@mail.gmail.com>
References: <CAE9DZURgGbWuEL5FuwvXAj3NOdq-KE2uUUGEQuq4MWK8usYCcw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Jun 2012 22:52:54 -0700
Message-ID: <CAMKF1sr7W4tYmeC81spK+mV0myb15SsDUaZtowTeHCLfCD22SQ@mail.gmail.com>
To: Dallas Clement <dallas.a.clement@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: using a custom pre-built toolchain
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
X-List-Received-Date: Wed, 20 Jun 2012 05:53:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 19, 2012 at 9:28 PM, Dallas Clement
<dallas.a.clement@gmail.com> wrote:
> I have a cross-toolchain supplied by an ARM SoC vendor which I need to
> use to build my distro. =C2=A0What is required to use a toolchain like th=
is
> instead of one of the yocto cross-toolchain tarballs?
>

I answered this question just today for another mail thread please
search the ml for the same.
> Thanks
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

