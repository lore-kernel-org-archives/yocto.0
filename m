Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E5CE008DD; Sat,  5 Nov 2016 21:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50161E00828
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:41:20 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i88so12391200pfk.2
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=HUO8YhXI1XnRlK36C6/REZR9i0Lf+B7fsBU+9u11TEQ=;
	b=nxs7hh1qSbhmr0ldeajBNf7thIx90gJZITeF7vUyTEPz8uuAQNyT+oqjXOuwXPxBqB
	UDtHvn2eLJQ2BaUJlLiHiFQw9enXoGZdoaB3dnTY0NEWtjnZ43l9W6DXHG6CBNx4d/Tg
	bfVF1A6C2/kJ+x80Mf7QvIaXH1UhU2VPTOCdzpqzQo5qcx/RaZWXI1Luwx7j4UKO6OrK
	CAmVXUISd/dPSi62jeylkXfA9rjxu1twykYxVNXCTKohwfhgY3MWQWxOF78OKcWZj9GD
	pHQ8YrVLLwhh+KsOiFouPkHX3LsWY+g9DK7nLg7oG4NeQpbyDeGH64WoX2GFLVpSqR0i
	zLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=HUO8YhXI1XnRlK36C6/REZR9i0Lf+B7fsBU+9u11TEQ=;
	b=HW+96F+CSpkrt1VNYfMTW5tOU8x2LgkXaQYEKGYRv4+wdiXrwtldCP5CtVOmveLW79
	4gk4uwx8SY74qjF+D/Svjocq4q1ZKVBeuh0vkkEevwVMB5jkFHpmYWrQU4xCXgn4fwCW
	78uVq/nJp0I6khF9Z/MpqxQJPyjD2DaFhu4o3bFrN61PolbEs/8J4rRLzdCrCuIozGVi
	1EOD17zkUhHbJl9TMxrQKAJNL3IpCEwtRUtvcsreQQ+kTUnIau9oi+eEjIsgvavDIRPR
	KImVBaValy1BMnYEuSwVYJqb5y0BCQEYaCVh0v9nY4WUsof/0vCWT6UHy3ng5A8uqZhy
	cAZw==
X-Gm-Message-State: ABUngvcBy7uK4NMG04BnNL3WZJYxDBt9oL9NxnBOiiinB0JWQkztcmNlwfxtkUcynTYpag==
X-Received: by 10.98.159.136 with SMTP id v8mr1795279pfk.82.1478406186209;
	Sat, 05 Nov 2016 21:23:06 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:05 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:22:57 -0700
Message-Id: <20161106042304.3357-1-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 0/7] Updates to meta-mono layer
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
X-List-Received-Date: Sun, 06 Nov 2016 04:41:23 -0000

I have a need to run Mono 4.6.1 on an ARM system.  The last commit to
the yocto meta-mono tree is over six months old so I figured I would take
a crack at it myself.  Hopefully these patches help somebody else.

I would appreciate other people testing them.  I have only ran non-gui apps
on the console, which is my primary use-case.  The 4.6.1 port seems to handle
that fine, but getting wider feedback and testing would be helpful.

Over the last year Mono has migrated from GPLv2 to MIT for the license.  This
required a little restructuring.  I introduced mono-mit.inc and mono-gplv2.inc
to support this.

I also included a previously submitted patch from
http://yocto.yoctoproject.narkive.com/yo6DAY92/meta-mono-patch-mono-4-xx-remove-disable-static-from-extra-oeconf
as I needed it to get Mono compiling on my platform.

I enhanced libgdiplus to allow it to be lighter weight and not necessarily
depend on meta-openembedded/meta-oe.  It now understands PACKAGECONFIG
flags for many common libraries.

Lastly, I have been having issues with Mono 4.6.1 as described at:
https://bugzilla.xamarin.com/show_bug.cgi?id=44918 regarding the
error I get: "No fast tls on device. Using fallbacks....".  I included
the upstream patch which attempts to fix the issue.  I am still
getting console output about TLS, but everything functions.

These commits start from commit bec66698046eb112df0be281e9d3e080e1c61cdb:

 README: add notes on testing mono 4.4.0.148

I am using meta-mono with poky krogoth.

Thanks,

   Barry
--

Barry Grussling (7):
  Add a base .gitignore
  Separate license from mono-4.xx.inc
  mono-4.xx: Remove --disable-static from EXTRA_OECONF
  Add the MIT license inc
  mono: add support for mono 4.6.1.5
  Allow PACKAGECONFIG to configure libgdiplus
  Add ARM patch for fast-tls

 .gitignore                                         |  7 +++++
 README.md                                          | 21 ++++++++++++---
 recipes-mono/libgdiplus/libgdiplus_2.10.8.bb       |  8 +++++-
 recipes-mono/mono/mono-4.6.1.5.inc                 |  2 ++
 .../ARM-Disable-fast-tls-on-embedded-mono.patch    | 30 ++++++++++++++++++++++
 .../mono/mono-4.6.1.5/dllmap-config.in.diff        | 29 +++++++++++++++++++++
 recipes-mono/mono/mono-4.xx.inc                    |  8 +++---
 recipes-mono/mono/mono-gplv2.inc                   |  3 +++
 recipes-mono/mono/mono-mit.inc                     |  3 +++
 recipes-mono/mono/mono-native_4.0.1.28.bb          |  1 +
 recipes-mono/mono/mono-native_4.0.1.34.bb          |  1 +
 recipes-mono/mono/mono-native_4.0.1.bb             |  1 +
 recipes-mono/mono/mono-native_4.0.2.4.bb           |  1 +
 recipes-mono/mono/mono-native_4.0.2.5.bb           |  1 +
 recipes-mono/mono/mono-native_4.0.3.13.bb          |  1 +
 recipes-mono/mono/mono-native_4.0.3.19.bb          |  1 +
 recipes-mono/mono/mono-native_4.0.3.20.bb          |  1 +
 recipes-mono/mono/mono-native_4.0.4.1.bb           |  1 +
 recipes-mono/mono/mono-native_4.2.0.179.bb         |  1 +
 recipes-mono/mono/mono-native_4.2.0.207.bb         |  1 +
 recipes-mono/mono/mono-native_4.2.1.102.bb         |  1 +
 recipes-mono/mono/mono-native_4.2.1.36.bb          |  1 +
 recipes-mono/mono/mono-native_4.2.1.60.bb          |  1 +
 recipes-mono/mono/mono-native_4.2.2.10.bb          |  1 +
 recipes-mono/mono/mono-native_4.2.2.29.bb          |  1 +
 recipes-mono/mono/mono-native_4.2.2.30.bb          |  1 +
 recipes-mono/mono/mono-native_4.3.2.467.bb         |  1 +
 recipes-mono/mono/mono-native_4.4.0.122.bb         |  1 +
 recipes-mono/mono/mono-native_4.4.0.148.bb         |  1 +
 recipes-mono/mono/mono-native_4.6.1.5.bb           |  4 +++
 recipes-mono/mono/mono_4.0.1.28.bb                 |  1 +
 recipes-mono/mono/mono_4.0.1.34.bb                 |  1 +
 recipes-mono/mono/mono_4.0.1.bb                    |  1 +
 recipes-mono/mono/mono_4.0.2.4.bb                  |  1 +
 recipes-mono/mono/mono_4.0.2.5.bb                  |  1 +
 recipes-mono/mono/mono_4.0.3.13.bb                 |  1 +
 recipes-mono/mono/mono_4.0.3.19.bb                 |  1 +
 recipes-mono/mono/mono_4.0.3.20.bb                 |  1 +
 recipes-mono/mono/mono_4.0.4.1.bb                  |  1 +
 recipes-mono/mono/mono_4.2.0.179.bb                |  1 +
 recipes-mono/mono/mono_4.2.0.207.bb                |  1 +
 recipes-mono/mono/mono_4.2.1.102.bb                |  1 +
 recipes-mono/mono/mono_4.2.1.36.bb                 |  1 +
 recipes-mono/mono/mono_4.2.1.60.bb                 |  1 +
 recipes-mono/mono/mono_4.2.2.10.bb                 |  1 +
 recipes-mono/mono/mono_4.2.2.29.bb                 |  1 +
 recipes-mono/mono/mono_4.2.2.30.bb                 |  1 +
 recipes-mono/mono/mono_4.3.2.467.bb                |  1 +
 recipes-mono/mono/mono_4.4.0.122.bb                |  1 +
 recipes-mono/mono/mono_4.4.0.148.bb                |  1 +
 recipes-mono/mono/mono_4.6.1.5.bb                  | 11 ++++++++
 51 files changed, 158 insertions(+), 8 deletions(-)
 create mode 100644 .gitignore
 create mode 100644 recipes-mono/mono/mono-4.6.1.5.inc
 create mode 100644 recipes-mono/mono/mono-4.6.1.5/ARM-Disable-fast-tls-on-embedded-mono.patch
 create mode 100644 recipes-mono/mono/mono-4.6.1.5/dllmap-config.in.diff
 create mode 100644 recipes-mono/mono/mono-gplv2.inc
 create mode 100644 recipes-mono/mono/mono-mit.inc
 create mode 100644 recipes-mono/mono/mono-native_4.6.1.5.bb
 create mode 100644 recipes-mono/mono/mono_4.6.1.5.bb

-- 
2.10.2


