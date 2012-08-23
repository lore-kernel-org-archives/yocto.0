Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F09FE0027E
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 07:42:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Aug 2012 07:42:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,300,1344236400"; d="scan'208";a="190459387"
Received: from unknown (HELO helios.localnet) ([10.252.121.121])
	by orsmga002.jf.intel.com with ESMTP; 23 Aug 2012 07:42:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
Date: Thu, 23 Aug 2012 15:42:36 +0100
Message-ID: <1925298.QoNRmVcqIq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <1345731602-47313-2-git-send-email-bjst@enea.com>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
	<1345731602-47313-2-git-send-email-bjst@enea.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] Add -ptest package group
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
X-List-Received-Date: Thu, 23 Aug 2012 14:42:39 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 23 August 2012 16:20:00 Bj=F6rn Stenberg wrote:
> This patch creates a new package group -ptest to contain the tests fo=
r
> each package.
>...
> @@ -242,7 +246,7 @@ HOMEPAGE =3D "unknown"
>  # Ensure that -dev packages recommend the corresponding -dev package=
s of
> their # deps, and the same for -dbg.
>  DEPCHAIN_PRE  =3D ""
> -DEPCHAIN_POST =3D "-dev -dbg"
> +DEPCHAIN_POST =3D "-dev -dbg -ptest"

Is this really what you want? Surely the tests for a particular piece o=
f=20
software are mostly independent of those of its dependencies?

Rest of it looks good.

Cheers,
Paul
=20
--=20

Paul Eggleton
Intel Open Source Technology Centre

