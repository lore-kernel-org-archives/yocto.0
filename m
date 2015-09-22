Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE38E00DD0; Tue, 22 Sep 2015 00:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2D5CE00992
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:12:20 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so1434285pac.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=7nQ3wyZbgTgOMVXpJjyDmldNfN8BZkFLzS/mS0DU5sg=;
	b=o2YBV6zGeXoGTOHF6vvJa1fJMOUTMBiungrcAWO8XPeGr0JyqYkw8T8tpEMXVJEqMU
	p5lnqgGvfz6/dYZ9OCIf+c5x1iu186EwYsNJlEez6+YzHD3AXM0jgOOv371pK9MzZGyr
	ixI4tkN7zkzNs+TKbrnOSVaX9bpQJYM3G18z9lRze+50M8xteV7kNqyiNPCiAyAaEnP6
	82QkTepUs4IZH7wggDQuOaHR7IdpZQuKZbu2aY90b1Rm2rpKw+RPAdFe1koBKrtL69aZ
	2u9FCgGAbye/0R3TEHLDwrhdPsCo7bjjACdCoetMn9PHwqIduddqwyEj/DRDJQQTVhUl
	uQsw==
X-Received: by 10.66.136.102 with SMTP id pz6mr29922532pab.52.1442905940496;
	Tue, 22 Sep 2015 00:12:20 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:1d30:3dc9:9cc5:501d?
	([2601:646:8601:4580:1d30:3dc9:9cc5:501d])
	by smtp.gmail.com with ESMTPSA id gd2sm317800pbb.41.2015.09.22.00.12.19
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 22 Sep 2015 00:12:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAKjpqyLYek-qdQh-ZbrHwZ5xVw-BuLNw3R9Up8Sh1xPwj6y84w@mail.gmail.com>
Date: Tue, 22 Sep 2015 00:12:19 -0700
Message-Id: <05A69F34-5099-4FB9-873D-CF7EB2870822@gmail.com>
References: <CAKjpqyLYek-qdQh-ZbrHwZ5xVw-BuLNw3R9Up8Sh1xPwj6y84w@mail.gmail.com>
To: Mayank Agarwal <mayank77fromindia@gmail.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 07:13:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Sep 22, 2015, at 12:08 AM, Mayank Agarwal =
<mayank77fromindia@gmail.com> wrote:
>=20
> Hi=20
>=20
> While installing gstreamer-1.0 i am facing following errors in =
do_rootfs:
>=20
> Configuring xfsprogs-mkfs.
> Configuring packagegroup-rdk-oss-mediaserver.
> Configuring gst-plugins-bad-linsys.
> Configuring gst-plugins-good-isomp4.
> Collected errors:
>  * opkg_install_cmd: Cannot install package gst-plugins-base-version.

is this empty by any chance ?


