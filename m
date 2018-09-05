Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1EEEE00A85; Wed,  5 Sep 2018 13:17:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F91E00A54
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 13:17:17 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id b11-v6so4046993pfo.3
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2018 13:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=tA8e5ZfZVVUnyFSFPC1jmH9E80Dt/sp++NepOowNjtk=;
	b=m1AHh51kmWJruo9STBUH3fLi6ds4gJDT6GnuUAo9lpkXU/Fg5hHa405sI4OzXpuUMz
	8842XqkKzIjGi45KczERRPG8cSIx0VNXl8k+HEZlah9rn+iEZp939ryENFP7+XMtxd7b
	lGtdK3P+xndMPKRTAsPyd4kA99T8zVixga63GJb4z0bbG3BGET/RB/kBjScBYSyLf15i
	5Hf8x1sT6jfkx7x0jZFuDbHu6MMar77b3zanOa8edR0a17SJtL04Mv7V/kKQmt0Zm7aM
	yiybklDEBmkjHhI1D+5Ik+Wae4GLRgvcpVYc79q09lWjLVlD96wizxxKzWPHeUZWy7tY
	KHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to;
	bh=tA8e5ZfZVVUnyFSFPC1jmH9E80Dt/sp++NepOowNjtk=;
	b=U7XoM33dYqvji60oQuR8y5PaeCJgTZ7FoAL9IqvpLDpzyDmHFMIphcUCHA+Mc/3mT+
	k6Sz6x/Ogw6g6HJk46Y8nVLRcYWq98HX8lX/4JI38MWTDGuNxIuZ1iWydZTlA2UIXMNm
	tC1FmW9N4HruHSRq5AzJROcJkq/MwO8MLNs6bm/IdwZbvv5JhBQt4BpJvFwru7i624Mm
	GjRT5JRjXkc1ewXhcU6ziQVmg3bCeVoGCYh5DFxRWoCKPw9cDWQarmoTPc0e20/F3gY9
	70ToFr7Ts4u03LEKWJILcvZt+QkQf36pYsPS78UF/Tp0IH2sySh83he2OMTNwRDjXvXK
	i9AQ==
X-Gm-Message-State: APzg51BznsMJGfG+i30UUwTkCKyA72QB3maqZHpP5dULuzvq/Dl8ziqT
	Cpb510MV2hyKR16JzoI7jwwmlj/V
X-Google-Smtp-Source: ANB0VdahlCtfrCoJTjc8iFXYzG1UgRbRt7ucWrKX2vhMBg9HwTHdpzlX9pjNpb83JAIMzAQZOBuvfQ==
X-Received: by 2002:a62:225d:: with SMTP id
	i90-v6mr42185643pfi.246.1536178636939; 
	Wed, 05 Sep 2018 13:17:16 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:3dff:4b7f:4b07:1058])
	by smtp.gmail.com with ESMTPSA id
	k69-v6sm2907556pgd.9.2018.09.05.13.17.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Sep 2018 13:17:16 -0700 (PDT)
To: Ravikiran J <ravikiran.j@mistralsolutions.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CALDHXte7Z+dLUv4LDZAuQMJSRQMmjAp=3AoSQCtnM5LrC99mhA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	xsDiBEqXaJERBACUvFofpD3FsxD9675wcPv+rzguIfsRWilrrpSZ61JHjLHwkUnmDLpLSdfv
	Zw2ZDXeaQbGU2thctxXTyYf6N1fY6P5Tww6mWKInuGU3yAv8Mg5p+Xd8itwOoVR41DOBkftV
	miO2G7FtXsnqonB6F43a2yvc+h9OwPRVxAFss5mSmwCglSXPWndN1Ka4M/hzt7g+FmeyEssD
	/1V/G8lLeAS9gQCNjS7jch+uHMFJuWgHzMXdw99e1ywlIkvXN77NPkW+FLVxKxNAHyWZZ3wO
	4BQ9/GVR2y0s/rrF1lQSIcfnUmzZrh/Bh0b1wVOSLhl0Vx4MI0/MbdL3xx17JAWy+s67evuK
	ER4Y8ycTq3gbIGJtVrIJjWPCzWF8BACAA2u52uDmJ2pS8SIhEW0jMK/zYQ5Od9l9fM6BmS6Q
	jnIlzzcuMvRdZn2IrnuE/YoC8yyzBK3mN+MVc2jWN9rfSg6ml7r14Zjem9Ee0O5Ca7Jg3ZvN
	6g3vSlrRJqKgsnq3vdatDF+5rd0NJ7ZKUy6x2i1Pavgtv3qaAgPGa1qQdM0dS2hlbSBSYWog
	PHJhai5raGVtQGdtYWlsLmNvbT7CYAQTEQoAIAIbAwYLCQgHAwIEFQIIAwQWAgMBAh4BAheA
	BQJTBC0aAAoJELsFM1WRnTMUul4An282FaN7oYXM2A8JzQt1ZWeUTlJZAJ0eOgup2Eqxx6gZ
	FOQE7EkRmOb6iM7DTQRKl2iREBAAjjbVQ55RAouAe0l0nPsKkWdtMuUHwBdLBkpF3rGM/f0u
	DlPaQzYGLjKT7xDoyRh8x2tFwWvOfiqrZFArxX8e4fsACmJdL0kahTbxC/8SmSWVHXi10JUX
	2fmZ5ufzlXAnl0ivXkWnrUfLX9DdNwL6DR4DeFK9qBFqtHmK5TQXMu87G+MJwgNJIwCKQX4i
	I9YJILMuqInVwaxg5/ALdKfE3QPmtadnKb/cuUm4gICdaJeyQfI6qdYLcSuyBWCbAEMM1wmh
	RAhw5RgzMRRIquZlxPt7lZkXXjals7M6juh87VGRoIJwYoQi97Q1ZHzPBo3AlMPe3haNihkd
	6D3lwvdB4pmjYG4I6bHCgtEhEss3hHvsBaqV9jV1dMUSs95ZxQtT9qtkOxydHgOlwRX3CG+r
	584J/s4vWm+iPQtLvDY1u4UFwOLjCOFe709BcLJdPR2GQiOPoyZF7lVY8nu/dtTrAEuiZFk4
	HD7afUlcr/IKwPWID1V9kRLoDlzdbNuoUy/XfVErK8wcoiGowerEMed4ajNoKxCxBweIkjxq
	KMt8CKgp30n9UxljglEcgf+/UumwSHxqZcCPVbWXtdhy/hwMk27shOdUvaiynep8OsVGqAzS
	seL4qZIJ5XzCcyV4KJCmwmdQzt5+ZylcVmeq6R4ob+d8JIDU0ELqdwxwIDiTj0cAAwUP/inN
	3/r8IFDms4g5xafPrCw31o2jIYahkIfN0WVPWI5K/hFCo2PczPStzDcTsZx7mN2qwpGOe3Lz
	9/0krZeksrz1ZIHNi5LTasuzXyFJbO05Y+eiHgV1rV7VVEipOrpV1496w112Y/0SZ/FhOfEm
	EA1TeDejy2sZiTOUW4gyzewbHMpE07d27F2qM2NfMMhKQCcvzr+N0VJmAOeATEivxPUHn+Dp
	X/NniBWOcWv++wHlxv0Xr63gsRKSt62eFKGjgF50hHD5lM31ziqycc42sbgcqAZ+rYFlb9k0
	3JcKyq1XdVUSm+xcC2DMSstTI6iqFMGo6FnEO+gyE5VdceajbuZ1GOmJXJUCyYIdGuvCyIoK
	jTE9lcIYSEEDZQej5xdiGk9eUz0MPmZEUwSR/nLmmwjHDJi0prVvs9xqe5bvS3ddPAqepvZ5
	UrisgtWD+TDI8ktkt5VLh3XsG9FuXUVAaahOvFMGiZtsioDXTorL4AfMeuA9f+yLwrCVQO3x
	mH/WA0Tgf/5gYB3t9KoHPjLBNruVOuQbAjubi0pvRAOUcMdBfmPofksK4uWS1zGtPWS7Uu1c
	suq7Hnb7vszlFYdbzeqjY81LSyxA0kcpgJxdLv9o7UuCEnHDZLPbHdQ83PmyyBKSI31AKe7R
	XlQNlB5grwH9o6uNtPbV7q/uRqmKq5EiwkkEGBECAAkFAkqXaJECGwwACgkQuwUzVZGdMxR1
	VACcCkdaO3rb8/gRprldmAH6eR49eo4AnjD3h3aTwv/1bl+BAz1twmZmz8ul
Organization: HIMVIS LLC
Message-ID: <83d74c67-18d3-df69-89ce-8c2408e53f21@gmail.com>
Date: Wed, 5 Sep 2018 13:17:06 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CALDHXte7Z+dLUv4LDZAuQMJSRQMmjAp=3AoSQCtnM5LrC99mhA@mail.gmail.com>
Subject: Re: ERROR: No manifest generated
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
X-List-Received-Date: Wed, 05 Sep 2018 20:17:20 -0000
X-Groupsio-MsgNum: 42389
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="3JtvgF0JHJ3HMyUOTakUEMYvXrJA2Z58f"

--3JtvgF0JHJ3HMyUOTakUEMYvXrJA2Z58f
Content-Type: multipart/mixed; boundary="jl6ydZwcxjjko2djTGdo1gz5A6K11a08u";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Ravikiran J <ravikiran.j@mistralsolutions.com>,
 Yocto Project <yocto@yoctoproject.org>
Message-ID: <83d74c67-18d3-df69-89ce-8c2408e53f21@gmail.com>
Subject: Re: [yocto] ERROR: No manifest generated
References: <CALDHXte7Z+dLUv4LDZAuQMJSRQMmjAp=3AoSQCtnM5LrC99mhA@mail.gmail.com>
In-Reply-To: <CALDHXte7Z+dLUv4LDZAuQMJSRQMmjAp=3AoSQCtnM5LrC99mhA@mail.gmail.com>

--jl6ydZwcxjjko2djTGdo1gz5A6K11a08u
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 9/4/18 10:39 PM, Ravikiran J wrote:
> Dear Yocto team,
>=20
> We have developed some recipe file to install=C2=A0 the firmware binary=
 in
> the file system of Yocto.
> Recipe file is working fine in *Yocto morty* version but when we tried
> the same in the *Yocto sumo* version we got the following error for
> *bitbake core-image-minimal*.
>=20
> *ERROR: core-image-minimal-1.0-r0 do_rootfs: No manifest generated from=
:
> rtl-firmware in
> /home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/p=
oky/meta-graco/recipes-graco/firmware/rtl-firmware.bb
> <http://rtl-firmware.bb>*
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/p=
oky/build/tmp/work/rzn1d400_graco-poky-linux-gnueabi/core-image-minimal/1=
=2E0-r0/temp/log.do_rootfs.28035
> ERROR: Task
> (/home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-Linux/sumo/=
poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
> failed with exit code '1'
>=20
>=20

which version of yocto project release is in use here ?


> Recipe file*rtl-firmware.bb <http://rtl-firmware.bb> *content*
> *
> *
> *
> DESCRIPTION =3D "RTL 8723BU BT firmware"
>=20
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> "file://${COREBASE}/LICENSE;md5=3D4d92cd373abda3937c2bc47fbc49d690"
>=20
> PACKAGE_ARCH =3D "all"

perhaps using inherit allarch  is better here.

>=20
> SRC_URI +=3D " \
> =C2=A0=C2=A0=C2=A0 file://rtl8723b_fw.bin \
> "
>=20
> do_install () {
> =C2=A0=C2=A0=C2=A0 install -d ${D}${base_libdir}/firmware/
> =C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/rtl8723b_fw.bin ${D}${base=
_libdir}/firmware/
> }
>=20
> FILES_${PN} +=3D " \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${base_libdir}/firmware/rtl8=
723b_fw.bin \
> "*
> *
>=20
> What needs to be done for to avoiding manifest error=C2=A0 ?
> Kindly help us to resolve this issue.
>=20
>=20
> Thanks and Regards,
> Ravikiran J J
>=20
>=20


--jl6ydZwcxjjko2djTGdo1gz5A6K11a08u--

--3JtvgF0JHJ3HMyUOTakUEMYvXrJA2Z58f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCW5A5xQAKCRC7BTNVkZ0z
FOXzAJ9w1SGJi10AEkzNfbqEI2fEzmBALwCfbtEUJ5oEPXRM96uWZgpoh9cAszg=
=TB5v
-----END PGP SIGNATURE-----

--3JtvgF0JHJ3HMyUOTakUEMYvXrJA2Z58f--
