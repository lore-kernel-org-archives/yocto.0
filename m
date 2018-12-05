Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14683E00C91; Wed,  5 Dec 2018 02:48:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A3F0E00C75
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 02:48:12 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id m19so16292652ioh.3
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 02:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=5mbXcW317pHVFCIzqUWevYzXiRS/Ve2IK1yZef7lKXI=;
	b=VB7k2fPWsHTVbG3JawXFCbpyTtA59hU8EredhonYun59E+4GEBHyMowHMXYuFCd9Wq
	aaK1+ns00sMso/h8ueeuHLQVVZypW4M0n2zSnKPkf23/VQrVN1R3Xxjx4Y0b/t1VjViA
	qwRedVOuu/XHNyEz13BjCyyPXsByHK2g70wvKwejAu8+LLA+poJDDA/WUHrLaCyeL2Jr
	X5yTvhy9GTF0rvm92i00SOWtWH0ZGpl4eqKbosclQz2RgrXOk7tx8pwnpuQVqxhQuqRs
	8sK2X+LyAJkD1NeYnqw0sczd9lcI9LNDLPY1kXIvwuTyl6+q1fFei2LWc7c/BkBtpqd6
	snGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=5mbXcW317pHVFCIzqUWevYzXiRS/Ve2IK1yZef7lKXI=;
	b=XxtVnf2s9sKtutmmiTlILjZFH4nxTL4pvtSPS9HrDEzHiz5EOdnWOFdQafvU3qus5C
	MlW2aXN41hbX5u6z6G/UvuH5FspTDaLpHsteddlgfaO5tkcuP0Lw8MRy34JAnFNrgo4U
	6Cz7iLb8G0UkZWBJFNjHPZOIToPPWJUiKx4sq9f/7BIppDWxjUpm9aGi9EwurLc1EaM5
	y3Ls3XpTZgC5Q++8JSS1j28Q6pIGTl0cngcawGNFba+hHEdOWkxdM7hT9187eGj9Iqn2
	9oAM0GBQV9Qg+B1xKaB502fiZb6gX4CgihRHshXGDoHT0tDNFNbS/4942YjdWeavyQNi
	Se2A==
X-Gm-Message-State: AA+aEWZfoMgfIEXRbLXCqyADg5sL6PjHIgzUzhCnEQWwQNCMKCJ9q+SD
	O7NujkClz1vSduKoGGNVWW16h4KW3yvP+5/szcwGWQ==
X-Google-Smtp-Source: AFSGD/XsDPpPKIRBevLfg7Qh2jhhhgSlc3ycclsjvq1SHcXne9w9aznKr1sSAi7XN/B3lK+hXzn4Ol8ZRj/Q7IcEAyE=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr18286689iog.270.1544006891863;
	Wed, 05 Dec 2018 02:48:11 -0800 (PST)
MIME-Version: 1.0
References: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E27AC@KEMPMAIL2.woodward.com>
In-Reply-To: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E27AC@KEMPMAIL2.woodward.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Dec 2018 10:48:00 +0000
Message-ID: <CAJTo0LZVZmHgDcszKaatkziQMsY3cWGTHD5MaoddLJSZ0E4y0w@mail.gmail.com>
To: Georgi.Georgiev@woodward.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Missing headers in /usr/inlcude for software developers
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
X-List-Received-Date: Wed, 05 Dec 2018 10:48:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 5 Dec 2018 at 10:37, Georgi Georgiev
<Georgi.Georgiev@woodward.com> wrote:
> Thank you Ross.
> Everything went fine with makefile. It works in yocto and from cl
> Now another issue arise. The software guys will need the headers and when=
 I "populated" sdk they were not in the rootfs. The symbolic links also wer=
e not there. The symlink (so.0) and the library is present in the image roo=
tfs. Here is my recipe libanybus-m40.so_0.0.1.bb:

Headers and symlinks for what recipe?  This one?

> DESCRIPTION =3D "Anybus M40 Library"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D  "file://${THISDIR}/files/LICENSE;md5=3D5959e502cb44=
bafc53b2cc9400e3d4cd"

Checksum a file in the source tree.

> PR =3D "r0"

Redundant, you can remove.

> PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg"

Redundant, remove.

> # This is to satisfy yocto QA
> TARGET_CC_ARCH +=3D "${LDFLAGS}"

Better to fix your makefile so it doesn't override LDFLAGS
assignments: your makefile is what is broken here.

> do_compile() {
>     oe_runmake
> }

That's the default, you can remove this.

> do_install() {
>     install -d ${D}${libdir}
>     install -m 0644 ${PN}.${PV} ${D}${libdir}
> }
> Obvously I am missing something else....

You're not installing the headers or library symlinks, which is why
they're not in the SDK.

I suggest you move from raw makefiles to a build utility such as
autotools, cmake, or meson.

Ross

