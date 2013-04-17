Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FABEE01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:56:26 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cy12so439024veb.22
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:56:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=3ANYMvxy+NbQs5GYszFH22TK9K1ehJTZd574fsjat0k=;
	b=bmUhRwhYKlikXsoSRe5N+5A9Z5LH4IoG6Wbf5lZM01IsCpVMlv3hbxoQU69erUfc7x
	9Xwr4Q1LtE8KwtPm3QjYVBZWPL2dEJhTqFLbZu/Kaj7gLAhpAuDt5runTd7VTo3ZZoj8
	2300lK8KnfWXM3ujocH51+x1xyykbUOLQL2+nXuHuQnuPrYkLxIJIV/ABxH9zeIFNJw1
	52HYvidAIUd0Z5bPYr2T8FwgVcoQzcSGSIhFZK5jj+qOYEzNqSssa+n+6ODuB4/jYqlL
	kGHALw4QOpuxNOSSh397TZ4i2bhcbBqqJRk1zyy6v+uqSVb0CLNEWhnyP2776DHjO8SX
	q2cA==
X-Received: by 10.52.108.10 with SMTP id hg10mr4500299vdb.34.1366214185486;
	Wed, 17 Apr 2013 08:56:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Wed, 17 Apr 2013 08:56:05 -0700 (PDT)
In-Reply-To: <CAFyqS9q9YBd+hCRjn-gzeJj3nv=AVY0Qj3PKDyBajnRWoQDMxg@mail.gmail.com>
References: <CAFyqS9q9YBd+hCRjn-gzeJj3nv=AVY0Qj3PKDyBajnRWoQDMxg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Apr 2013 16:56:05 +0100
Message-ID: <CAJTo0LYn7tXnr_AX-jDsBEJJsaVj+5rudU4izuZ_LaQuZn6ihQ@mail.gmail.com>
To: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQmE9FmLQARAd362atGrT2zHTvZzDaI8R8ksXiJp24had07y/QFVn1E0oUz/BFTV5VvF6YBn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disable stripping of binaries in do_package phase, is it possible?
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
X-List-Received-Date: Wed, 17 Apr 2013 15:56:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 17 April 2013 16:31, Hans Beck=C3=A9rus <hans.beckerus@gmail.com> wrote:
> I have a package for which some parts of it consist of pre-built
> binaries, already stripped. When building I get lots of warning about
> strip failing because the file(s) are already stripped.
> Is there some simple way to turn off stripping during this phase?
> I tried to disable do_package using the [noexec] attribute but that is
> the wrong approach surely since it causes the rootfs build to fail
> since the .rpm is not compiled properly ;)

Use INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1" to turn off the generation of
-dbg packages, as this is where the splitting and stripping happens.
As your binaries are already stripped, -dbg packages are pointless.

Ross

