Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 583C7E005B4; Mon, 12 Jan 2015 01:53:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA2D0E003E3
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 01:53:14 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 12 Jan 2015 01:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,742,1413270000"; d="scan'208";a="660407694"
Received: from fcrouzet-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.21.81])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2015 01:53:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Mon, 12 Jan 2015 09:53:11 +0000
Message-ID: <2573410.MtKzVNeoZz@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1420998982-3732-1-git-send-email-akuster808@gmail.com>
References: <1420998982-3732-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] libcap-ng: fix checksums
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
X-List-Received-Date: Mon, 12 Jan 2015 09:53:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Armin,

On Sunday 11 January 2015 09:56:22 Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/libcap-ng/libcap-ng_0.7.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
> b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb index 3f225ba..8823dad
> 100644
> --- a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
> +++ b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
> @@ -12,8 +12,8 @@ SRC_URI =
> "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
> 
>  inherit lib_package autotools pythonnative
> 
> -SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
> -SRC_URI[sha256sum] =
> "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
> +SRC_URI[md5sum] = "55c57c0673b944ea1a755bcb2636dabd"
> +SRC_URI[sha256sum] =
> "48a2083276f9820cb92dcb05d001b30733bcbf48c14c230303cac3cd08b45b6b"
> 
>  DEPENDS += "swig-native python"

Could you please note in the commit message why these are being changed? It 
looks like they weren't changed at the last upgrade, which is fine, but that 
should be noted so that it's clear that it wasn't a matter of the files being 
changed upstream.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

