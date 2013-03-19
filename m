Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f53.google.com (mail-da0-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C34C5E006C3
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 07:41:44 -0700 (PDT)
Received: by mail-da0-f53.google.com with SMTP id n34so349069dal.40
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 07:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=8UNkj7jbUpJkppvINbERwWzs1TTQBlrwznKNLEKCgqg=;
	b=l05PDe4nc1fe4F2gnFYEVumhai1iA43Z4w8XG5U6vpD6pJw2XUvIN6Fc2/llZLY9gx
	SUleObigTbo1kWAvRPBDprH72ootQJOkDxPVb+3Hy/K/RFSNR5bJ8GreNE0OLbqRpmlP
	cZV99DFqFJiYaKZjH7zDZKUPLLw66pQMT5kTs+ihalO8+Rppq0IiAZNTot9aQqOhf2RI
	B7FLJJGCdGQlGFSYBlRrW7G1Kc56sJ4xCspP1MhmVumRiHhmTwgC1UBUTIjMZx8nX5Cw
	glDu7X9RN6Ahez7XVtXgenEuD3jSHbPdqXWlCS3AbVcFRi+th/7VI55f6Br0oe2cBPRr
	Gv3g==
X-Received: by 10.68.129.135 with SMTP id nw7mr3525328pbb.58.1363704104477;
	Tue, 19 Mar 2013 07:41:44 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id yr10sm12905331pab.6.2013.03.19.07.41.41
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 07:41:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <1363659206-28896-1-git-send-email-kergoth@gmail.com>
Date: Tue, 19 Mar 2013 18:41:35 +0400
Message-Id: <D6FFD006-2105-45E2-B3AF-B9D0B3D24436@gmail.com>
References: <1363659206-28896-1-git-send-email-kergoth@gmail.com>
To: Christopher Larson <kergoth@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org, Christopher Larson <chris_larson@mentor.com>
Subject: Re: [meta-xilinx][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 14:41:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


applied

=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/commit/?id=3Dbbe2cb4=
95fdbfc31eea422021548c0c95401c11a


On Mar 19, 2013, at 6:13 AM, Christopher Larson <kergoth@gmail.com> =
wrote:

> From: Christopher Larson <chris_larson@mentor.com>
>=20
> bitbake handles immediate expansions of LAYERDIR for us automatically.
>=20
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> ---
> conf/layer.conf | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index d1a1a84..f415d2f 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -1,12 +1,12 @@
> # We have a conf and classes directory, add to BBPATH
> -BBPATH :=3D "${BBPATH}:${LAYERDIR}"
> +BBPATH .=3D ":${LAYERDIR}"
>=20
> require conf/distro/include/xilinx-default-revisions.inc
>=20
> # We have a packages directory, add to BBFILES
> -BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
> +BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
> 	${LAYERDIR}/recipes-*/*/*.bbappend"
>=20
> BBFILE_COLLECTIONS +=3D "xilinx"
> -BBFILE_PATTERN_xilinx :=3D "^${LAYERDIR}/"
> +BBFILE_PATTERN_xilinx =3D "^${LAYERDIR}/"
> BBFILE_PRIORITY_xilinx =3D "6"
> --=20
> 1.8.2
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


