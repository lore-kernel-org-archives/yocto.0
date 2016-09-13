Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57B78E006D8; Tue, 13 Sep 2016 13:27:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50BDFE00563
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:27:35 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id pp5so34884pac.2
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=bxdcZH4yWCDgYcpUw6Feo3yfukHJ74syCvU0HCmrx2E=;
	b=OZvQ0FxWi4QNMYDuijksO0ypX9kl5OHjTnmmyTSLAJ7imt+Rc6G+Bz+U8hn/H7ZpeI
	WLZ7Ed2mjL19+DHgghJsoaR+RrDp/6tQarhnhZ57BuUeP/RR/62PqXvYBhLZdrfn1JVX
	rxj2YcXnaV/gj0TTe33Dfu4Ym5vYRI++UGPNzMDXm6cSk/4l9l9Duw1JNVFiyISxhFHY
	sibeTpzNdgpxVwzI3+aXK9l770zcrDr+t6TqY7cm6dwPnYIKv4AWltYTsYjDczjX0/E2
	0MzgQPhZmIiCGNya9t+1Sro10oT93gzm0mnu+WoB7czju+rQWqoyv7uz5zQ6R0teIHAL
	5OQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=bxdcZH4yWCDgYcpUw6Feo3yfukHJ74syCvU0HCmrx2E=;
	b=hJgcM7e6g7ZyTDaLE0mZUcbSHCcXaLDXAOam3gNbN7ZMzdDWSZ1r+7Uwnu4sIaZSWa
	BSF18w7mbOSppU9DCHBe/+6ZRV5zxFYTlTO/buKzDj9ITkYRw9M9PXkDie/TiyXwu9Et
	onGqNK4tGZHQGGw+ygycU++N1CmPExMv0uIgjQ+UdyiJ8D5uuL6ZWyzhjPJU3keY9h+a
	R6QX7JQg7QC2ZXCkd2pdruK8kcOkpzo3Hu3mmldIVOhBkMI0uIIfGBh5TljiwztPAXnp
	ZxxWZj4bEkdnhQSgMAW8cL1LxDRgDN9lbIaYP9mSwG15u4dX9rYT6oHpZgAhxzpHyvMY
	bzcw==
X-Gm-Message-State: AE9vXwNDvRF/F79k6wrw2p9W9juBYLdwe2EC156WN6ACMru+8NtlCTTHR8JdTYyhUEoY/w==
X-Received: by 10.66.254.170 with SMTP id aj10mr4653250pad.124.1473798455096; 
	Tue, 13 Sep 2016 13:27:35 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m82sm32969850pfk.64.2016.09.13.13.27.33
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 13 Sep 2016 13:27:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALbNGRQFTfcPkzzgbaJxTQcmnj7GUuF=KF8L=qu2opHonm_CCw@mail.gmail.com>
Date: Tue, 13 Sep 2016 13:27:28 -0700
Message-Id: <5CD611CF-BB8F-42FC-A600-4CDC00BD9B4E@gmail.com>
References: <20160913020611.9265-1-net147@gmail.com>
	<CALbNGRQFTfcPkzzgbaJxTQcmnj7GUuF=KF8L=qu2opHonm_CCw@mail.gmail.com>
To: =?utf-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Tue, 13 Sep 2016 20:27:37 -0000
X-Groupsio-MsgNum: 31911
Content-Type: multipart/signed;
	boundary="Apple-Mail=_48AFDFB3-C314-490F-8919-44690C770ED0";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_48AFDFB3-C314-490F-8919-44690C770ED0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 12, 2016, at 11:40 PM, Andreas M=C3=BCller =
<schnitzeltony@googlemail.com> wrote:
>=20
> On Tue, Sep 13, 2016 at 4:06 AM, Jonathan Liu <net147@gmail.com> =
wrote:
>> The IMAGE_NAME variable already contains the date and time so it is
>> redundant to also include the date again with IMAGEDATESTAMP
>> when writing to image-version-info in the boot partition.
>>=20
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>> classes/sdcard_image-rpi.bbclass | 8 ++------
>> 1 file changed, 2 insertions(+), 6 deletions(-)
>>=20
>> diff --git a/classes/sdcard_image-rpi.bbclass =
b/classes/sdcard_image-rpi.bbclass
>> index 57cefea..388398b 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -71,10 +71,6 @@ SDIMG =3D =
"${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>> # Additional files and/or directories to be copied into the vfat =
partition from the IMAGE_ROOTFS.
>> FATPAYLOAD ?=3D ""
>>=20
>> -IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>> -IMAGE_CMD_rpi-sdimg[vardepsexclude] +=3D "IMAGEDATESTAMP"
>> -IMAGE_CMD_rpi-sdimg[vardepsexclude] +=3D "DATETIME"
>> -
>> IMAGE_CMD_rpi-sdimg () {
>>=20
>>        # Align partitions
>> @@ -143,8 +139,8 @@ IMAGE_CMD_rpi-sdimg () {
>>        fi
>>=20
>>        # Add stamp file
>> -       echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > =
${WORKDIR}/image-version-info
>> -       mcopy -i ${WORKDIR}/boot.img -v =
${WORKDIR}//image-version-info ::
>> +       echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
>> +       mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info =
::
>>=20
>>        # Burn Partitions
>>        dd if=3D${WORKDIR}/boot.img of=3D${SDIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>> --
>> 2.9.3
>>=20
> Yes this is better solution than Khem's and mine

seems so, I have staged it into kraj/master

--Apple-Mail=_48AFDFB3-C314-490F-8919-44690C770ED0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfYYTUACgkQuwUzVZGdMxTbgwCggTMoFBpT1MEBF1530qbRaTUV
Uy0An1dy+zYMYfIdPndZ0C5wpHgaO0Ca
=714c
-----END PGP SIGNATURE-----

--Apple-Mail=_48AFDFB3-C314-490F-8919-44690C770ED0--
