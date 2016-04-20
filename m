Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1FE8E00F8E; Wed, 20 Apr 2016 14:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8403E00F46
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:05:44 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id e201so64843983wme.0
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=BcwTkvGQcX9CIYxY6wsz7F3f7rOmcSycoVMIZsEtDGc=;
	b=LRVtwCmzSXIkpzk9P0ee4vnTM1hpBSgU8ggB7x/dE8S/QZyKoyFGJuG9tEWJsYypGb
	odsHymvdBV+2jT94/1sVDx9+YTS1sfXlr6hNb7QeBBQKK2IHmS+JqR6rcPGGvmIhCFYT
	MoHJbcc2jXDiy2lIeTMvjS6ys7Tf3OO9wa79waUT+mdd9evBeEM+bO4uwvg7YfZXXHZJ
	MXU2O9dxD4tpAGvWMwYXvxFSTYXZcEqvj9hcy+C52YBuFk5l4ZnYqxpiEi86MMe6jgJQ
	BNZZpuedQmX5G3kPbDcwf7sWdHm/vy6uI72SyJyH5R6Tei73y8P9R3W/xcFC8i5BzP3P
	+qhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=BcwTkvGQcX9CIYxY6wsz7F3f7rOmcSycoVMIZsEtDGc=;
	b=G38aUD05jvj7rjoCSX5FmyWN/4PA7UKzBSflxtqMgh+KRRHNUL224s9eDzTQmUoNcd
	xMYwQycw6Hc8vSmcwqyNz+0H3nP6DZXD9Mz5x40xjZueH4kH53XMkrf/PbXSSJZTbBBj
	J/nei4Ei7U5dnEowIBxEZ8mipsIAUhbmTXp2wkcbQ9kVG3m1krTw6AGKQdogo+VfdUNC
	ajL/nyZkp0hcuNobZCgYEmq9pCsLoJY7bDvh6YS5A+hOzOhh8ZUvU6yOY30DiTv/4l8K
	6cEmjcykMnkpExK+fGua5JA1fB1QaaZwR+ur9C/i/KKh11XDXdjYNh1QEiZYUtey5pqt
	OzAQ==
X-Gm-Message-State: AOPr4FWz4x44GlPQ6Gz+M/k1j7FevSo+1o8V9OhNrZNhFJQedTzKmc9M7NMrdEBbccoLNA==
X-Received: by 10.28.111.217 with SMTP id c86mr30888862wmi.81.1461186343655;
	Wed, 20 Apr 2016 14:05:43 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	wa1sm7408049wjc.45.2016.04.20.14.05.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Apr 2016 14:05:42 -0700 (PDT)
Date: Wed, 20 Apr 2016 23:05:40 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: toolmmy <toolmmy@googlemail.com>
Message-ID: <20160420210540.GL1588@resin>
References: <1460813485-1801-1-git-send-email-toolmmy@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460813485-1801-1-git-send-email-toolmmy@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, Tom Doehring <toolmmy@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] userland: Fix passing of wayland-native to cmake while configuring
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
X-List-Received-Date: Wed, 20 Apr 2016 21:06:04 -0000
X-Groupsio-MsgNum: 29532
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4e5ZDkbgLEOfWmLx"
Content-Disposition: inline

--4e5ZDkbgLEOfWmLx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 16, 2016 at 03:31:25PM +0200, toolmmy wrote:
> From: Tom Doehring <toolmmy@gmail.com>
>
> While having 'wayland' set DISTRO_FEATURES 'wayland-native' is handled as a cmake parameter which breaks the do_configure:
>
> $ cat /data/builds/rpi3-sandbox/tmp/work/raspberrypi2-poky-linux-gnueab i/userland/git-r5/temp/run.do_configure
>  cmake \
>           ${OECMAKE_SITEFILE} \
>           [...]
>           -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'                  wayland-native \
>           -Wno-dev
>
> $ CMake Error: The source directory "/data/builds/rpi3-sandbox/tmp/work/raspberrypi2-poky-linux-gnueabi/userland/git-r5/build/wayland-native" does not exist.
> | Specify --help for usage, or press the help button on the CMake GUI.
>
> Assuming that wayland-native should only be defined as a DEPENDS package this patch moves it to the correct PACKAGECONFIG position.
>
> Signed-off-by: Tom Doehring <toolmmy@gmail.com>
> Signed-off-by: toolmmy <toolmmy@gmail.com>
> ---

Merged to master. Thanks.

--
Andrei Gherzan

--4e5ZDkbgLEOfWmLx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXF+8kAAoJEHO76Gt+erfPio0QAKWI7M8W4c9Zf14dkvj6poVT
FBqsa49y74OvChrJzBHpQsLCWrSMoF5C7J/FwRMjLZvCkylM7AHStlsh+aS3IfRl
y3XaPlC6bRxzrkyOgFUNk1lmS4Q3F6Csetf/RrD3l7yFtxoHcGNIOm0OINnYYFHM
QfonY7bTTKO3T6s4a35gX7GbkuTLlQIWSabth4ih9MzhHqzZKx5OoBtWHNkloAgX
8YKX0pImCdNYBRXEmy7JnaoPYIC6kHlG+90OxpFSqemgvyBkXCSiA1pL9absect4
OfpSoQbOGt5Ol21QnkZZPa4bFdYQp63gNzdkwr7vSceKlWQvUBImmjnsz/M49cvr
rUu6lqwMEna2GFA8LlYHDC+K3eH85Nk44PsOu3pjFxyzq+tMR7pR5lCPm/QPx15D
gxkAY0aIpsSRsZViOFKafGi3g7b13gogo/zKv9aMBnElwNpTe5Oa0Y0AHIv++shq
Ys8b/ZLuuu+8YU96zyADSwTffAoU+C/xt8z3FFxMgrT4LwvqHBvpfsYJ2Q1w5DYd
Df+txuAJND6Qn+UcXn0WBbkFIcym8DOqs1fbDE0bDPJO3Zk/R/41fxJBTVUCCCOw
2FAU55wIDwrP3BpPRn/H6ppW/QIsFhv0nvNf0ftBLF6+I2rpUVSTbBz8huk8H0hR
ZR9N54PomJj+H6C2zVYW
=f3MX
-----END PGP SIGNATURE-----

--4e5ZDkbgLEOfWmLx--
