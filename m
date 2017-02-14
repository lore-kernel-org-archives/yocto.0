Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E8BE0050B; Tue, 14 Feb 2017 08:25:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19547E004A0
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 08:25:15 -0800 (PST)
Received: by mail-oi0-f68.google.com with SMTP id x84so2880105oix.2
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 08:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=5va2Sd8AbwC5RWKmaSiJpQcbTPFofsCToS3IvZ2c7a0=;
	b=vcmOifGTkD6c8tqI4HPxA83iyUVvKXeOR7LpXZaFxqCIvb0K3ZiIqmrSN0tlZtL7GH
	B7ZVuyH7oliAS2ddN0lfVTliUQ2UITyHaqHiN0vEDBQL+ZvtbKxJ+TJywpRW0kSSrSuB
	JKm9pTJ0geyZN94ElMTy7sbAJPpjp/QnT4zJwkc1bEXKxvikA1FXiFt5Qgo0G/tSpqOJ
	H4xS9OBhLJ48Vr+qfex8IDZfn/fJ+o2i1wfE1LCU5FRqJxF/hseTohC7Vg37yQ8xUtV8
	Ud8WT5v4uEUXUv02jH+iT12pLWpTSdprozXFECpL/Lt8vEZJJAXiXE+4JCmIF5tDmwn9
	AwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5va2Sd8AbwC5RWKmaSiJpQcbTPFofsCToS3IvZ2c7a0=;
	b=td9d/0DeZOjjwWSUZEGjTHkXsFLgEWiB9gKb16ZCAk4MoA1MdDxcivhP3D9bnpvRWy
	UPuU5eCqKzDlsP03g9useIBXml2Aezb9vhnfluHqdUJUzyIyiTWAR7O8Iq8L0efDoiUm
	Q7lsZPldBJp67Oc9gnnc+wygsOT8bvnHg3kAZhjHVRfUOci/I1Gvx2lPsLJdJWCQfum0
	TSp2ysUyl9/E0vbxaYJeDT/9T978OqNwV1fvrHcZBnEhYm9kDBiQB4QIX8Vn1gd2gHNJ
	X1UIpR9ruvPvtOOE1D2d7WmTZXbVYvrGo/v7kT1W5zSCjga/vPoDeazirNmwDThNI8J+
	Vs6w==
X-Gm-Message-State: AMke39mZWH3psKIkpIEATJvSRCxkGeMtmshovwzftudz2soJgmQ4MDjSomJOmjYcYeNYTw==
X-Received: by 10.84.211.7 with SMTP id b7mr37260455pli.82.1487089514683;
	Tue, 14 Feb 2017 08:25:14 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:b420:65dd:6ce9:c9f9?
	([2601:202:4001:9ea0:b420:65dd:6ce9:c9f9])
	by smtp.gmail.com with ESMTPSA id s3sm2227788pgn.55.2017.02.14.08.25.13
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Feb 2017 08:25:14 -0800 (PST)
To: yocto@yoctoproject.org
References: <20170209024427.30212-1-jackie.huang@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <e573202a-a405-1876-ae2e-9885cac21ce4@gmail.com>
Date: Tue, 14 Feb 2017 08:25:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170209024427.30212-1-jackie.huang@windriver.com>
Subject: Re: [meta-security][PATCH] scapy: fix the pickling issue
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
X-List-Received-Date: Tue, 14 Feb 2017 16:25:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

merged.

thanks,

Armin


On 02/08/2017 06:44 PM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> Backport a patch to fix the pickling issue when save_session:
>
> PicklingError: Can't pickle <type 'function'>: attribute lookup __builtin__.function failed
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>   .../scapy/scapy/scapy-Pickling-issues-fixed.patch  | 111 +++++++++++++++++++++
>   recipes-security/scapy/scapy_2.3.2.bb              |   1 +
>   2 files changed, 112 insertions(+)
>   create mode 100644 recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
>
> diff --git a/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch b/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
> new file mode 100644
> index 0000000..9901f91
> --- /dev/null
> +++ b/recipes-security/scapy/scapy/scapy-Pickling-issues-fixed.patch
> @@ -0,0 +1,111 @@
> +From 331dff6c73f89307d108f9ae89264b9548e22dc6 Mon Sep 17 00:00:00 2001
> +From: Guillaume Valadon <guillaume.valadon@ssi.gouv.fr>
> +Date: Wed, 31 Aug 2016 13:59:21 +0200
> +Subject: [PATCH] Pickling issues fixed
> +
> +Backport from:
> +https://github.com/secdev/scapy/pull/284
> +
> +Upstream-Status: Backport
> +
> +Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> +---
> + scapy/layers/inet.py  |  6 ++++--
> + scapy/layers/inet6.py |  4 +++-
> + scapy/layers/l2.py    | 14 +++++++++-----
> + scapy/route.py        |  1 -
> + 4 files changed, 16 insertions(+), 9 deletions(-)
> +
> +diff --git a/scapy/layers/inet.py b/scapy/layers/inet.py
> +index 4b66946..e35a247 100644
> +--- a/scapy/layers/inet.py
> ++++ b/scapy/layers/inet.py
> +@@ -734,8 +734,10 @@ conf.l3types.register(ETH_P_IP, IP)
> + conf.l3types.register_num2layer(ETH_P_ALL, IP)
> +
> +
> +-conf.neighbor.register_l3(Ether, IP, lambda l2,l3: getmacbyip(l3.dst))
> +-conf.neighbor.register_l3(Dot3, IP, lambda l2,l3: getmacbyip(l3.dst))
> ++def inet_register_l3(l2, l3):
> ++    return getmacbyip(l3.dst)
> ++conf.neighbor.register_l3(Ether, IP, inet_register_l3)
> ++conf.neighbor.register_l3(Dot3, IP, inet_register_l3)
> +
> +
> + ###################
> +diff --git a/scapy/layers/inet6.py b/scapy/layers/inet6.py
> +index ba5674c..195ca9c 100644
> +--- a/scapy/layers/inet6.py
> ++++ b/scapy/layers/inet6.py
> +@@ -474,7 +474,9 @@ class IPv6(_IPv6GuessPayload, Packet, IPTools):
> +             return self.payload.answers(other.payload)
> +
> +
> +-conf.neighbor.register_l3(Ether, IPv6, lambda l2,l3: getmacbyip6(l3.dst))
> ++def inet6_register_l3(l2, l3):
> ++    return getmacbyip6(l3.dst)
> ++conf.neighbor.register_l3(Ether, IPv6, inet6_register_l3)
> +
> +
> + class IPerror6(IPv6):
> +diff --git a/scapy/layers/l2.py b/scapy/layers/l2.py
> +index 3d88961..47fa386 100644
> +--- a/scapy/layers/l2.py
> ++++ b/scapy/layers/l2.py
> +@@ -183,8 +183,10 @@ class LLC(Packet):
> +                     XByteField("ssap", 0x00),
> +                     ByteField("ctrl", 0) ]
> +
> +-conf.neighbor.register_l3(Ether, LLC, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
> +-conf.neighbor.register_l3(Dot3, LLC, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
> ++def l2_register_l3(l2, l3):
> ++    return conf.neighbor.resolve(l2, l3.payload)
> ++conf.neighbor.register_l3(Ether, LLC, l2_register_l3)
> ++conf.neighbor.register_l3(Dot3, LLC, l2_register_l3)
> +
> +
> + class CookedLinux(Packet):
> +@@ -203,7 +205,7 @@ class SNAP(Packet):
> +     fields_desc = [ X3BytesField("OUI",0x000000),
> +                     XShortEnumField("code", 0x000, ETHER_TYPES) ]
> +
> +-conf.neighbor.register_l3(Dot3, SNAP, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
> ++conf.neighbor.register_l3(Dot3, SNAP, l2_register_l3)
> +
> +
> + class Dot1Q(Packet):
> +@@ -236,7 +238,7 @@ class Dot1Q(Packet):
> +             return self.sprintf("802.1q (%Dot1Q.type%) vlan %Dot1Q.vlan%")
> +
> +
> +-conf.neighbor.register_l3(Ether, Dot1Q, lambda l2,l3: conf.neighbor.resolve(l2,l3.payload))
> ++conf.neighbor.register_l3(Ether, Dot1Q, l2_register_l3)
> +
> + class STP(Packet):
> +     name = "Spanning Tree Protocol"
> +@@ -351,7 +353,9 @@ class ARP(Packet):
> +         else:
> +             return self.sprintf("ARP %op% %psrc% > %pdst%")
> +
> +-conf.neighbor.register_l3(Ether, ARP, lambda l2,l3: getmacbyip(l3.pdst))
> ++def l2_register_l3_arp(l2, l3):
> ++    return getmacbyip(l3.pdst)
> ++conf.neighbor.register_l3(Ether, ARP, l2_register_l3_arp)
> +
> + class GRErouting(Packet):
> +     name = "GRE routing informations"
> +diff --git a/scapy/route.py b/scapy/route.py
> +index 52a9562..4bd27b7 100644
> +--- a/scapy/route.py
> ++++ b/scapy/route.py
> +@@ -20,7 +20,6 @@ from error import Scapy_Exception,warning
> + class Route:
> +     def __init__(self):
> +         self.resync()
> +-        self.s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
> +         self.cache = {}
> +
> +     def invalidate_cache(self):
> +--
> +2.8.3
> +
> diff --git a/recipes-security/scapy/scapy_2.3.2.bb b/recipes-security/scapy/scapy_2.3.2.bb
> index 0a42ad9..2965c72 100644
> --- a/recipes-security/scapy/scapy_2.3.2.bb
> +++ b/recipes-security/scapy/scapy_2.3.2.bb
> @@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4
>   
>   SRC_URI = "https://github.com/secdev/${BPN}/archive/v${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
>              file://run-ptest \
> +           file://scapy-Pickling-issues-fixed.patch \
>   "
>   
>   SRC_URI[md5sum] = "00f11df3d6b46fe6ac306efd757486f9"


