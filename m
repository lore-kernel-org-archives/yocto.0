Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70354E008F3; Sun,  2 Oct 2016 16:18:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, URIBL_RED autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: codesourcery.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.68 listed in dnsbl.sorbs.net]
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2484BE00874
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 16:18:42 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id cd13so5764147pac.3
	for <yocto@yoctoproject.org>; Sun, 02 Oct 2016 16:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=uziC0N7RI8Bal7xJeLd9uMZpRaprkN4CHXlzjJZX2jQ=;
	b=haaSw7VBRGCqyw6QINqxLYX955zHeB+igptUkjq8sk2eNs+t4V8A2gkKfiMiL0tE9U
	cjXDvOldIdzpwbvncmMzVwnWToOKu+F4vGHaRCSG7KDz1tSqaPCZ500UyCAJyFfvrBxx
	7dHGd1O0QteAxKO4kV8bCAYtaGcxykDKLmnPmxbvgtfUpLws2Jv+NQQ1Tthg0/w6ESp9
	hprH0be2fTi/xk8r6bsiBzMC01QTxGEVcOeAxnpST9huzNUXi7Vd6UDf/SrDteqZtou2
	s6IyGvyURA6PktLUlebFk5XhICWId5S5kNd7y1KSC0H863dXwsMaP3AGy33CEFjLP9ho
	dY6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=uziC0N7RI8Bal7xJeLd9uMZpRaprkN4CHXlzjJZX2jQ=;
	b=WEZvnpqypdbVGTSnkIbf+kbeOfnJeC5HuDVyk80QJbkL0tEGzMZ+/rxtF1T1UatKhI
	mUN5u19TsRU7hlGeMlgJ6GZJMEAYkN/k1DubuGM6hX+2F9tfHQMfXdk7NeAYf5RGgS/6
	8EDr9mXbPkWqItuQoaMwpSw2qxdd5/wA3b2F6m2gUMz7UVy4HOrzkvGwU6I3VkchUL4Z
	3G1ITzKOZ/FR3m6jazWTejIL9/jHeI4HJLXNYtP8QtezfArJLdrDjHsBAcrzZWG0+oMF
	e+6sTw/UtPNyD2schdktMSrDzGKvCI0UGz7rgRjWltEbBbU4c1TftBk89iNEpOtJMVcx
	/m7g==
X-Gm-Message-State: AA6/9RmXkGHiZszoYHGiHWhXp7LmRelwIYQ+OnEO1ozmybW4l9WlfaQpHqT6a7GXE+TJZw==
X-Received: by 10.66.49.197 with SMTP id w5mr32392119pan.73.1475450322480;
	Sun, 02 Oct 2016 16:18:42 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:4b8:204d:45de:e844?
	([2601:646:8882:b8c:4b8:204d:45de:e844])
	by smtp.gmail.com with ESMTPSA id
	z66sm34310167pfd.11.2016.10.02.16.18.41
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Oct 2016 16:18:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <alpine.DEB.2.20.1609142321590.14953@digraph.polyomino.org.uk>
Date: Sun, 2 Oct 2016 16:18:40 -0700
Message-Id: <73509D8A-9707-46A9-8C2D-F7BB69131961@gmail.com>
References: <alpine.DEB.2.20.1609142321590.14953@digraph.polyomino.org.uk>
To: Joseph Myers <joseph@codesourcery.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] Support x32 libx32 directory
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
X-List-Received-Date: Sun, 02 Oct 2016 23:18:45 -0000
X-Groupsio-MsgNum: 32158
Content-Type: multipart/signed;
	boundary="Apple-Mail=_57FF1F68-909F-4144-8578-554A4E96BF7F";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_57FF1F68-909F-4144-8578-554A4E96BF7F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Mark

have we integrated this patch ?

> On Sep 14, 2016, at 4:23 PM, Joseph Myers <joseph@codesourcery.com> =
wrote:
>=20
> Cross-prelink's prelink-rtld is missing suport for the /libx32
> directory used with the x86_64 x32 ABI.  This patch adds such support.
>=20
> 2016-09-14  Joseph Myers  <joseph@codesourcery.com>
>=20
> 	* src/rtld/rtld.c (load_ld_so_conf): Add argument use_x32.
> 	(main): Update call to load_ld_so_conf.
>=20
> diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
> index 8d7d760..2d72083 100644
> --- a/src/rtld/rtld.c
> +++ b/src/rtld/rtld.c
> @@ -409,7 +409,7 @@ free_path (struct search_path *path)
> }
>=20
> void
> -load_ld_so_conf (int use_64bit, int use_mipsn32)
> +load_ld_so_conf (int use_64bit, int use_mipsn32, int use_x32)
> {
>   int fd;
>   FILE *conf;
> @@ -435,6 +435,14 @@ load_ld_so_conf (int use_64bit, int use_mipsn32)
>       add_dir (&ld_dirs, "/usr/lib32/tls", strlen ("/usr/lib32/tls"));
>       add_dir (&ld_dirs, "/usr/lib32", strlen ("/usr/lib32"));
>     }
> +  else if (use_x32)
> +    {
> +      dst_LIB =3D "libx32";
> +      add_dir (&ld_dirs, "/libx32/tls", strlen ("/libx32/tls"));
> +      add_dir (&ld_dirs, "/libx32", strlen ("/libx32"));
> +      add_dir (&ld_dirs, "/usr/libx32/tls", strlen =
("/usr/libx32/tls"));
> +      add_dir (&ld_dirs, "/usr/libx32", strlen ("/usr/libx32"));
> +    }
>   else
>     {
>       dst_LIB =3D "lib";
> @@ -1195,7 +1203,8 @@ main(int argc, char **argv)
> 	}
>=20
>       load_ld_so_conf (gelf_getclass (dso->elf) =3D=3D ELFCLASS64,
> -		( dso->ehdr.e_machine =3D=3D EM_MIPS) && ( =
dso->ehdr.e_flags & EF_MIPS_ABI2 ) );
> +		( dso->ehdr.e_machine =3D=3D EM_MIPS) && ( =
dso->ehdr.e_flags & EF_MIPS_ABI2 ),
> +		dso->ehdr.e_machine =3D=3D EM_X86_64 && gelf_getclass =
(dso->elf) =3D=3D ELFCLASS32);
>=20
>       if (multiple)
> 	printf ("%s:\n", argv[remaining]);
>=20
> --
> Joseph S. Myers
> joseph@codesourcery.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_57FF1F68-909F-4144-8578-554A4E96BF7F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfxldAACgkQuwUzVZGdMxTGXwCePUCEmZ5Dsg3PkYeZgL6N7umW
rxAAn0i02X3t6xEOZiElrsOIU47VTpWO
=X0m6
-----END PGP SIGNATURE-----

--Apple-Mail=_57FF1F68-909F-4144-8578-554A4E96BF7F--
