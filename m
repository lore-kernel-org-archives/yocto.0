Return-Path: <jkridner@beagleboard.org>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5502E011C6
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 05:32:16 -0700 (PDT)
Received: by ewy22 with SMTP id 22so28276ewy.35
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 05:32:15 -0700 (PDT)
Received: by 10.14.145.12 with SMTP id o12mr1069586eej.54.1314102735151;
	Tue, 23 Aug 2011 05:32:15 -0700 (PDT)
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx.google.com with ESMTPS id o54sm79408eeh.27.2011.08.23.05.32.13
	(version=SSLv3 cipher=OTHER); Tue, 23 Aug 2011 05:32:13 -0700 (PDT)
Received: by ewy22 with SMTP id 22so28258ewy.35
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 05:32:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.213.30.7 with SMTP id s7mr1102773ebc.63.1314102732634; Tue, 23
	Aug 2011 05:32:12 -0700 (PDT)
Received: by 10.213.17.135 with HTTP; Tue, 23 Aug 2011 05:32:12 -0700 (PDT)
In-Reply-To: <0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
References: <cover.1313792192.git.dvhart@linux.intel.com>
	<0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
Date: Tue, 23 Aug 2011 08:32:12 -0400
Message-ID: <CA+T6QP=tEUnF+-S8+uDFVdWX9EF_3SO0_7mubfeCji1s5oYdkw@mail.gmail.com>
From: Jason Kridner <jkridner@beagleboard.org>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Tue, 23 Aug 2011 12:32:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 19, 2011 at 6:23 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> Fixes [YOCTO #1203]
>
> Using the hard floating point abi is incompatible with some binary libari=
es and
> 3D support for the Beagleboard. As we do not provide these in poky and
> meta-yocto, we can take advantage of the hard floating point abi. This ca=
n be
> easily disabled by anyone building on top of meta-yocto if they need the =
soft
> abi by overriding DEFAULT_TUNE.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Jason Kridner <jkridner@beagleboard.org>
> CC: Koen Kooi <koen@dominion.thruhere.net>
> ---
> =A0meta-yocto/conf/machine/beagleboard.conf | =A0 =A05 +++++
> =A01 files changed, 5 insertions(+), 0 deletions(-)
>
> diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/m=
achine/beagleboard.conf
> index 0b3cebc..8f11732 100644
> --- a/meta-yocto/conf/machine/beagleboard.conf
> +++ b/meta-yocto/conf/machine/beagleboard.conf
> @@ -18,6 +18,11 @@ MACHINE_EXTRA_RRECOMMENDS +=3D "beagleboard-audio"
> =A0# Allow for MMC booting (required by the NAND-less Beagleboard XM)
> =A0EXTRA_IMAGEDEPENDS +=3D "u-boot x-load"
>
> +# Use the hard floating point abi. This breaks some binary libraries and
> +# 3D. Since poky and meta-yocto do not provide these by default, enable =
the
> +# hard floating point abi. Comment out the following or override it to d=
isable
> +# it.
> +DEFAULTTUNE ?=3D "cortexa8hf-neon"

I'm not really fond of what this breaks, but I don't yet have a vision
of what I'd be doing with meta-yocto yet and therefore am open to this
project giving test coverage to new conditions like this.

> =A0include conf/machine/include/tune-cortexa8.inc
>
> =A0IMAGE_FSTYPES +=3D "tar.bz2 jffs2"
> --
> 1.7.6
>
>

