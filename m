Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30F1CE00B0B; Mon,  2 Jun 2014 13:48:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF401E00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 13:48:24 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id k14so5771688wgh.7
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 13:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=7d509rTHupMeQdJeblgx9lCyAU+7Yebnn1reKyydGrg=;
	b=gfW4YGKZKaHw9qsLqSs+uDp4YK35+f2MzTBvmsNTWLggiBTqGK9MQZnS0SxwrOCftk
	BNI1TKnH89ka015tUVyDMVLW+gZedCQHYVl0H9it+5CaEXQkUSDPACSkWBkdM9FE+9hc
	2noCBI2zdmOhjoTYoWOEzHF2ilBbaF0XBGyd3xLnloFE3BYNGTp2J5/6PPbGTb6hX+f0
	1Sy9VHooCgkLrgpNe34+OkF5RvvU2MX0uGmNNFLDji1gHhmsfYRc1BOG7z5CqGDTEwJP
	3LNDoqWXqGVXwCoWFIP6EE1UaZ40HCV0gSx7zgOVzx6xK90BhhDF8lBAwLD+QXi8ol8m
	C5aQ==
X-Received: by 10.180.74.78 with SMTP id r14mr25614220wiv.2.1401742103629;
	Mon, 02 Jun 2014 13:48:23 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id
	vp5sm38189992wjc.31.2014.06.02.13.48.22 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Jun 2014 13:48:22 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Mon, 2 Jun 2014 20:48:20 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: opkg-devel@googlegroups.com
Message-ID: <20140602204820.GG7521@gmail.com>
References: <1401706248-32605-1-git-send-email-tom@ewsting.org>
	<1401706248-32605-2-git-send-email-tom@ewsting.org>
MIME-Version: 1.0
In-Reply-To: <1401706248-32605-2-git-send-email-tom@ewsting.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: brendan.le.foll@intel.com, yocto@yoctoproject.org,
	Thomas Ingleby <thomas.c.ingleby@intel.com>, paul.eggleton@linux.intel.com
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg-build: add detection if using GNU tar.
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
X-List-Received-Date: Mon, 02 Jun 2014 20:48:30 -0000
X-Groupsio-MsgNum: 19888
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JbKQpFqZXJ2T76Sg"
Content-Disposition: inline

--JbKQpFqZXJ2T76Sg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 02, 2014 at 11:50:48AM +0100, tom@ewsting.org wrote:
> From: Thomas Ingleby <thomas.c.ingleby@intel.com>
>=20
> * Some options of GNU tar do not exist on other implementations
>=20
> Signed-off-by: Thomas Ingleby <thomas.c.ingleby@intel.com>
> ---
>  opkg-build | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
>=20
> diff --git a/opkg-build b/opkg-build
> index e314712..8abc14d 100755
> --- a/opkg-build
> +++ b/opkg-build
> @@ -159,6 +159,17 @@ ogargs=3D""
>  outer=3Dar
>  noclean=3D0
>  opkext=3D0
> +
> +tarformat=3D""
> +#Probably not the best way to detect if running on a system without full=
 GNU tar
> +set +e
> +tar --help | grep "format" &> /dev/null
> +if [ $? -eq 0 ]
> +then
> +    tarformat=3D"--format=3Dgnu"
> +fi
> +set -e
> +

I wouldn't trust that the word 'format' won't occur in some other context w=
ithin
the help output of tar. I'd search for '--format' instead, both bsdtar and =
gnu
tar include that in the help output but busybox tar does not. The output of
busybox tar also seems to be printed on stderr, so I'd include '2>&1' befor=
e the
pipe.

You also shouldn't need the 'set +e' magic, if you move the command which c=
ould
fail into the if statement then an error should not cause the script to abo=
rt.
Maybe try something like:
    if tar --help 2>&1 | grep -- --format > /dev/null; then ...

The rest of this looks good to me.

>  usage=3D"Usage: $0 [-c] [-C] [-O] [-o owner] [-g group] <pkg_directory> =
[<destination_directory>]"
>  while getopts "cCg:ho:vO" opt; do
>      case $opt in
> @@ -233,8 +244,8 @@ tmp_dir=3D$dest_dir/IPKG_BUILD.$$
>  mkdir $tmp_dir
> =20
>  echo $CONTROL > $tmp_dir/tarX
> -( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -cz --format=3Dgnu -f $tmp=
_dir/data.tar.gz . )
> -( cd $pkg_dir/$CONTROL && tar $ogargs -cz --format=3Dgnu -f $tmp_dir/con=
trol.tar.gz . )
> +( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -cz $tarformat -f $tmp_dir=
/data.tar.gz . )
> +( cd $pkg_dir/$CONTROL && tar $ogargs -cz $tarformat -f $tmp_dir/control=
=2Etar.gz . )
>  rm $tmp_dir/tarX
> =20
>  echo "2.0" > $tmp_dir/debian-binary
> @@ -249,7 +260,7 @@ rm -f $pkg_file
>  if [ "$outer" =3D "ar" ] ; then
>    ( cd $tmp_dir && ar -crf $pkg_file ./debian-binary ./control.tar.gz ./=
data.tar.gz )
>  else
> -  ( cd $tmp_dir && tar -cz --format=3Dgnu -f $pkg_file ./debian-binary .=
/control.tar.gz ./data.tar.gz )
> +  ( cd $tmp_dir && tar -cz $tarformat -f $pkg_file ./debian-binary ./con=
trol.tar.gz ./data.tar.gz )
>  fi
> =20
>  rm $tmp_dir/debian-binary $tmp_dir/data.tar.gz $tmp_dir/control.tar.gz
> --=20
> 1.9.2
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "opkg-devel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to opkg-devel+unsubscribe@googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--JbKQpFqZXJ2T76Sg
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJTjOMUAAoJEBwoJlo7UPQDAyEH/RVsC4mD8o3yx9Wo3Cj/semP
aAJ7iB8qPl77wrxTN3zqErT00Xm/uAGcI8F2eu78PB0Vr+hI4unnx8Ng+SCtix0j
2sw1IOz+OjaMEXExB50hoTlN/tjMbdfd4RSCu/HLT5zKA7TJclp+AtQq6McCLlJf
HS3L3F4dG0kxeAPYDICmPujUqj8dqAAd2GjW42e6qxaWaYST/L0qGtAWYQg21lLg
WFOI440VjpQcvE9a/ZmuxZCy37a14WJ9l6sGcZP+98GnXouCx7lJ7GLcBQoAlmDm
xZeU1MiXvBBTlP2SAKGwyTDHkdMTnrMK7Pc1ZMbHiFRz9BwcMU7eSMfEW3v45F4=
=nNIT
-----END PGP SIGNATURE-----

--JbKQpFqZXJ2T76Sg--
