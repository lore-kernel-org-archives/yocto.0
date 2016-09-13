Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99C84E006D8; Tue, 13 Sep 2016 13:19:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64822E00563
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:19:17 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id z84so29870pfi.2
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=iT9GcJhjKK5WWJ7Wczen94dz/8tsgsT/X9sNgDakFVc=;
	b=MNEZvo3vfFno7xhRvDMW3yVpUbAWOSWau9HwDdvU6tkwt8silun7aCTQhfcTpLiVw+
	7Nl4UfttE6gEcrqmpFCfDx811Mrwd1abWlFQ4eTaBhnA+qHq7PYdFRl4GGT7xpmjW1gi
	ZaNwRdtbbAtZUwbn4Uvse2Tjp0ao1oyJfHJMJ1nre3xHx9i3ctzXlecm4U0ysuHLCBKK
	z/5HCbEcKlTUwGmOMD9zHxEYflqjd940HdEjg/SnXfXCFf0m1iBf9J13/wkeEw1qa49b
	Y8TULVn9k6Ryrszs4pWYzQvjh3RWhwEhmp92q0+saxylJ91xSqCb+GpVnv3ShNrk4yiX
	4LYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=iT9GcJhjKK5WWJ7Wczen94dz/8tsgsT/X9sNgDakFVc=;
	b=GcyZgECin59go3gb71MiS8yTfLaeKCAOzLGtjlcSOgkG0FgPHBwihJLwySCpNn7jLM
	gQKAv3fr6uTK4LBWJxTTFo0vyZni6DpSvggDjOQ/tCdPhjUC+b1ispljHY2u+4ml3huk
	MFTC270AEVEWWQOWJAX9v5wGZ8bmLJSpQGDVn2JEiWQz3F6TjMyMW/618JYieqTIt3r3
	fWwXliw0MoKlzkYG3gAbFDETLLGO63Oee7vDRONKCZ49RzDlbpZ12QuKuTLpz1kBWWaH
	Hr2RouFGMGX15z+vZaB1oOFcmWNGgdFh1LPNASD5NXtnaFnPREKGO2B4OHG/pQdNMSLg
	khpw==
X-Gm-Message-State: AE9vXwMFQd4QJeUESMsnjIO6blc+2wKT+LK8lieuhICAhcJLr8raItVPsQ17HdfAf+p8fA==
X-Received: by 10.98.70.80 with SMTP id t77mr4568130pfa.110.1473797955822;
	Tue, 13 Sep 2016 13:19:15 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	d26sm23397960pfe.37.2016.09.13.13.19.14
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 13 Sep 2016 13:19:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALbNGRTByd6NXiH+4UtnAHM_25vZbxUVy+gfDBJm-zvKTZbzeA@mail.gmail.com>
Date: Tue, 13 Sep 2016 13:19:14 -0700
Message-Id: <4A307D50-39DA-4FA0-B35C-30DB35242254@gmail.com>
References: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
	<1473725946-7854-2-git-send-email-schnitzeltony@googlemail.com>
	<CALbNGRTByd6NXiH+4UtnAHM_25vZbxUVy+gfDBJm-zvKTZbzeA@mail.gmail.com>
To: =?utf-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: avoid corrupted images with latest oe-core
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
X-List-Received-Date: Tue, 13 Sep 2016 20:19:20 -0000
X-Groupsio-MsgNum: 31910
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C197B362-2550-476E-BFAE-2D15DD7105C5";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C197B362-2550-476E-BFAE-2D15DD7105C5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 13, 2016, at 1:05 AM, Andreas M=C3=BCller =
<schnitzeltony@googlemail.com> wrote:
>=20
> On Tue, Sep 13, 2016 at 2:19 AM, Andreas M=C3=BCller
> <schnitzeltony@googlemail.com> wrote:
>> oe-core's commit d54339d4b1a7e884de636f6325ca60409ebd95ff creates =
image in
>> IMGDEPLOYDIR and copies through sstate to DEPLOY_DIR_IMAGE. That =
causes
>> DEPLOY_DIR_IMAGE not valid when calling IMAGE_CMD. Therefore use
>> IMGDEPLOYDIR for sdcard creation too.
>>=20
>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>> ---
>> classes/sdcard_image-rpi.bbclass | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/classes/sdcard_image-rpi.bbclass =
b/classes/sdcard_image-rpi.bbclass
>> index f506858..1acf9d8 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT =3D "4096"
>>=20
>> # Use an uncompressed ext3 by default as rootfs
>> SDIMG_ROOTFS_TYPE ?=3D "ext3"
>> -SDIMG_ROOTFS =3D =
"${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>> +SDIMG_ROOTFS =3D =
"${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>>=20
>> IMAGE_DEPENDS_rpi-sdimg =3D " \
>>                        parted-native \
>> @@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg =3D " \
>>                        "
>>=20
>> # SD card image name
>> -SDIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>> +SDIMG =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>=20
>> # Compression method to apply to SDIMG after it has been created. =
Supported
>> # compression formats are "gzip", "bzip2" or "xz". The original =
.rpi-sdimg file
>> --
>> 2.5.5
>>=20
> Forgot to mention: Handy links on sdcard images are properly created
> with this patch.

Staged into kraj/master

>=20
> Andreas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C197B362-2550-476E-BFAE-2D15DD7105C5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfYX0IACgkQuwUzVZGdMxQ8vwCeL1onyRiWxBQmvKlx25xQ6sQu
N/sAoIk6TLcoWKAV+D6fxDiOAGgKlgqX
=U9vQ
-----END PGP SIGNATURE-----

--Apple-Mail=_C197B362-2550-476E-BFAE-2D15DD7105C5--
