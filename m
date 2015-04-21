Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92F1DE009A3; Tue, 21 Apr 2015 06:22:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E733FE00952
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 06:22:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Apr 2015 06:20:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,616,1422950400"; d="scan'208";a="683364445"
Received: from ppiorkow-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.9.218])
	by orsmga001.jf.intel.com with ESMTP; 21 Apr 2015 06:20:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marcin =?utf-8?B?S3J6ZW1pxYRza2k=?= <mar.krzeminski@gmail.com>
Date: Tue, 21 Apr 2015 14:20:39 +0100
Message-ID: <1877075.AIEOl3otnI@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CABc_YGBZjNwcPoSwBnPKqoVqoq3iZuf-WVeDLnHL2bEVkjjpRQ@mail.gmail.com>
References: <CABc_YGBZjNwcPoSwBnPKqoVqoq3iZuf-WVeDLnHL2bEVkjjpRQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs image name (INITRAMFS_IMAGE)
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
X-List-Received-Date: Tue, 21 Apr 2015 13:22:24 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Marcin,

On Tuesday 21 April 2015 08:54:49 Marcin Krzemi=C5=84ski wrote:
> I want to set my initramfs image name in my image recipe.
> In local.conf I've set:
>=20
> INITRAMFS_IMAGE_BUNDLE=3D"1"
>=20
> In my image recipe I am setting image name:
>=20
> INITRAMFS_IMAGE =3D "myimage-image-minimal"
>=20
> Unfortunately when kernel recipe is parsed INITRAMFS_IMAGE variable i=
 empty.
> running bitbake -e tells that this variable is properly set.
> I think because image recipe is parsed at the very end kernel recipe =
can
> not see it.
> I tried to use export INITRAMFS_IMAGE (like in example) but this also=
 not
> working.
> Is the any way that I can do this?

In general, one recipe cannot set a variable such that it is seen from =
another=20
recipe, our system doesn't work that way. You need to set it at the=20
configuration level - local.conf, or more appropriately a custom distro=
 config=20
file.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

