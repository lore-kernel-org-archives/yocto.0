Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27A18E00C14; Mon,  7 Sep 2015 00:21:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BEBE00AFD
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 00:21:49 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so90805960pac.2
	for <yocto@yoctoproject.org>; Mon, 07 Sep 2015 00:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=sWKswPFly5ae8oEF3sxluB3wke1P45nWDwmWhoqeqsY=;
	b=ihBnaEE8Yh69lp+Pwabu2kMh8Vjfk2fWAm0VJa8fKRl627uP3dV9e6xedzpE2+VWuF
	MvDnBgYB+LtwwsALV53c2qs80/iLi1c/SLtH884VX0TKWFnHBQ0DJTDF2EUnIw8hoV4c
	xzHZnmCb4UbqdkCUerr8n51622M5SrnsFqTmOsWAsXhDpHEDIJpbCb71X/93j4iIiNuQ
	ddSjz5lh42mHjU+7k9rl6NyOwq9K9HOX5/nNqFxtpafohOe3hVD/k1eRTUcdiSeLxUk+
	Ftukii2WcQbozBOvSVFfPOM/NkT7uLkPkgf+93ngY46PP9bcpvC3qpPSaF/MZwCqZufi
	IEDw==
X-Received: by 10.68.103.132 with SMTP id fw4mr43095229pbb.62.1441610509040;
	Mon, 07 Sep 2015 00:21:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:7c54:cfc4:2548:2f79?
	([2601:646:8601:4580:7c54:cfc4:2548:2f79])
	by smtp.gmail.com with ESMTPSA id
	pg5sm10791685pdb.81.2015.09.07.00.21.48
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 07 Sep 2015 00:21:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.1
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <55ECF934.80902@gmail.com>
Date: Mon, 7 Sep 2015 00:21:42 -0700
Message-Id: <31635424-0451-4ECF-A65E-F45B8D316B0B@gmail.com>
References: <55ECF934.80902@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Mon, 07 Sep 2015 07:21:53 -0000
X-Groupsio-MsgNum: 26307
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A68D30C3-4C98-44AD-B2BC-F4DA4E831303";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A68D30C3-4C98-44AD-B2BC-F4DA4E831303
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 6, 2015, at 7:40 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
> I can't explain why, but when I build "core-image-minimal" for
> MACHINE=3Draspberrpi2 I get the following SD creation error:
>=20

which shell do you use for /bin/sh

>    ERROR: Error: The image creation script
>    =
'/z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/core=
-image-minimal/1.0-r0/temp/create_image.rpi-sdimg'
>    returned 2:
>    expr: non-integer argument
>    WARNING:
>    =
/z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/core-=
image-minimal/1.0-r0/temp/create_image.rpi-sdimg:1
>    exit 2 from
>      ROOTFS_SIZE_ALIGNED=3D$(expr 12288.0 + 4096 - 1)
>=20
>=20
> Looking at meta-raspberrypi/classes/sdcard_image-rpi.bbclass, line 83:
>=20
>    ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE} +
> ${IMAGE_ROOTFS_ALIGNMENT} - 1)
>=20
> which looks like the offending line. ROOTFS_SIZE seems to come from =
the
> line immediately above:
>=20
>    ROOTFS_SIZE=3D`du -bks ${SDIMG_ROOTFS} | awk '{print $1}'`
>=20
> But 'du' doesn't return non-integer values, does it? When I invoke the
> host's 'du' I get the correct value:
>=20
>    du -bks
> =
/z/layerindex-master/raspi2/tmp/deploy/images/raspberrypi2/core-image-mini=
mal-raspberrypi2-20150906234844.rootfs.ext3
> | awk '{print $1}'
>    12288
>=20
> Does anyone have any idea why the ".0" is getting tacked on?
>=20
> Best regards,
>    Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A68D30C3-4C98-44AD-B2BC-F4DA4E831303
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXtOwoACgkQuwUzVZGdMxQ0OACfRXBHe/Qvm5CK3dHCeAEkJCR+
DBgAnRiNTqbvnfK0ODG0Z5aRlKo84gRY
=Xxad
-----END PGP SIGNATURE-----

--Apple-Mail=_A68D30C3-4C98-44AD-B2BC-F4DA4E831303--
