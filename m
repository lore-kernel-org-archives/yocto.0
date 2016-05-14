Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9C76E00D4F; Sat, 14 May 2016 00:15:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2AD9E00D48
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 00:15:00 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 145so11046976pfz.1
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 00:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=FhXUtArjWEXPK3sdLr6ddqavBhQeFKRtQhxWXVQSxoY=;
	b=BbUJC4UXeYV16StuIMNgzp9RROynboN34lWbRX+JokCTC8/MIl8lUg7tP/7I7jS64N
	Gft+NU2AgZS7+aRIIy8cVzkY4vMSMvt1Vnb6Z5gOhJphzcYWQa6I2w2YjcRfJIo5DgM1
	JSHzKRUHMTNyBBsK4EAuSeiiWC0+MLgZkDVeD9Wc3fx2Rlpxz/5QyLo2wL+aanXr4/p1
	S0PVm6+56a/Q2x2gHTaw6ESeIOTrwtR1zBIpU98Lfh1LSbDm4aJ2/5yXdsdEnTzVCDsB
	PWkl0DFydtziT9iKdZEQ2Xm2FDvuhYfWRnQPkn8s8BvDiJDuqYiXLQloewNyi7UeI6IF
	VeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=FhXUtArjWEXPK3sdLr6ddqavBhQeFKRtQhxWXVQSxoY=;
	b=NRBxo/8qpGltimYeoajWxvjGZRQaPSophPJqPU8juMmgPaW9ZJlURT61hO+oJs9xvw
	rcGBhVGKf/Iabg5EeT4okeu9iblM/89WSVvhN6whY6cG6+bACeurc/KLrXi92Gt8owmO
	Q0xPVgspFn/oRX5En/hdvkgs7daALjnZYxINcFE/LdI7pOEXjd3zfVKqfNTWL71CDQeI
	+sqlZa5O6Wwet65qC9Ngzi7KDhtrGiYlZeN4LCmRipizTmRb84lyKpQCIEDOB/vtWQrB
	laQRbdUN/cdEV/EMX+OUN8w2vSk3P6xvNZUGAbz0X0QXc4RYD/QXzcghHb+9J+34zySH
	fCcg==
X-Gm-Message-State: AOPr4FXeiJa2DC5+AUFQQdclowElll8Jsrwp7O0D3ac87MXm3Nc8HJorozakXLbJyiFGnA==
X-Received: by 10.98.87.220 with SMTP id i89mr28788849pfj.107.1463210099923;
	Sat, 14 May 2016 00:14:59 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:65db:3361:a37a:e4d0?
	([2601:646:8800:5a9a:65db:3361:a37a:e4d0])
	by smtp.gmail.com with ESMTPSA id
	w15sm32065270pfa.34.2016.05.14.00.14.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 14 May 2016 00:14:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1463208447-48369-2-git-send-email-herve.jourdain@neuf.fr>
Date: Sat, 14 May 2016 00:14:58 -0700
Message-Id: <C4F5069B-468C-4EA3-A349-193B89D695C7@gmail.com>
References: <1463208447-48369-1-git-send-email-herve.jourdain@neuf.fr>
	<1463208447-48369-2-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] Support for .dtbo files for dtb overlays
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
X-List-Received-Date: Sat, 14 May 2016 07:15:03 -0000
X-Groupsio-MsgNum: 29977
Content-Type: multipart/signed;
	boundary="Apple-Mail=_19E819B6-1121-4DA8-9194-C08D75092D3B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_19E819B6-1121-4DA8-9194-C08D75092D3B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

That patch is ok, however you should have not changed the formatting. So =
please send a v2 with original formatting
preserved.

> On May 13, 2016, at 11:47 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
> meta/recipes-kernel/linux/linux-dtb.inc | 66 =
+++++++++++++++++----------------
> 1 file changed, 35 insertions(+), 31 deletions(-)
>=20
> diff --git a/meta/recipes-kernel/linux/linux-dtb.inc =
b/meta/recipes-kernel/linux/linux-dtb.inc
> index 651a19e..44782d8 100644
> --- a/meta/recipes-kernel/linux/linux-dtb.inc
> +++ b/meta/recipes-kernel/linux/linux-dtb.inc
> @@ -31,44 +31,48 @@ do_compile_append() {
> }
>=20
> do_install_append() {
> -	for DTB in ${KERNEL_DEVICETREE}; do
> -		DTB=3D`normalize_dtb "${DTB}"`
> -		DTB_BASE_NAME=3D`basename ${DTB} .dtb`
> -		DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | =
sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		DTB_PATH=3D`get_real_dtb_path_in_kernel "${DTB}"`
> -		install -m 0644 ${DTB_PATH} =
${D}/${KERNEL_IMAGEDEST}/devicetree-${DTB_SYMLINK_NAME}.dtb
> -	done
> +    for DTB in ${KERNEL_DEVICETREE}; do
> +        DTB=3D`normalize_dtb "${DTB}"`
> +        DTB_EXT=3D${DTB##*.}
> +        DTB_BASE_NAME=3D`basename ${DTB} ".${DTB_EXT}"`
> +        DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed =
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        DTB_PATH=3D`get_real_dtb_path_in_kernel "${DTB}"`
> +        install -m 0644 ${DTB_PATH} =
${D}/${KERNEL_IMAGEDEST}/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT}
> +    done
> }
>=20
> do_deploy_append() {
> -	for DTB in ${KERNEL_DEVICETREE}; do
> -		DTB=3D`normalize_dtb "${DTB}"`
> -		DTB_BASE_NAME=3D`basename ${DTB} .dtb`
> -		DTB_NAME=3D`echo ${KERNEL_IMAGE_BASE_NAME} | sed =
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | =
sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		DTB_PATH=3D`get_real_dtb_path_in_kernel "${DTB}"`
> -		install -d ${DEPLOYDIR}
> -		install -m 0644 ${DTB_PATH} ${DEPLOYDIR}/${DTB_NAME}.dtb
> -		ln -sf ${DTB_NAME}.dtb =
${DEPLOYDIR}/${DTB_SYMLINK_NAME}.dtb
> -	done
> +    for DTB in ${KERNEL_DEVICETREE}; do
> +        DTB=3D`normalize_dtb "${DTB}"`
> +        DTB_EXT=3D${DTB##*.}
> +        DTB_BASE_NAME=3D`basename ${DTB} ".${DTB_EXT}"`
> +        DTB_NAME=3D`echo ${KERNEL_IMAGE_BASE_NAME} | sed =
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed =
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        DTB_PATH=3D`get_real_dtb_path_in_kernel "${DTB}"`
> +        install -d ${DEPLOYDIR}
> +        install -m 0644 ${DTB_PATH} =
${DEPLOYDIR}/${DTB_NAME}.${DTB_EXT}
> +        ln -sf ${DTB_NAME}.${DTB_EXT} =
${DEPLOYDIR}/${DTB_SYMLINK_NAME}.${DTB_EXT}
> +    done
> }
>=20
> pkg_postinst_kernel-devicetree () {
> -	cd /${KERNEL_IMAGEDEST}
> -	for DTB in ${KERNEL_DEVICETREE}
> -	do
> -		DTB_BASE_NAME=3D`basename ${DTB} | awk -F "." '{print =
$1}'`
> -		DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | =
sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		update-alternatives --install =
/${KERNEL_IMAGEDEST}/${DTB_BASE_NAME}.dtb ${DTB_BASE_NAME}.dtb =
/boot/devicetree-${DTB_SYMLINK_NAME}.dtb ${KERNEL_PRIORITY} || true
> -	done
> +    cd /${KERNEL_IMAGEDEST}
> +    for DTB in ${KERNEL_DEVICETREE}
> +    do
> +        DTB_EXT=3D${DTB##*.}
> +        DTB_BASE_NAME=3D`basename ${DTB} | awk -F "." '{print $1}'`
> +        DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed =
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        update-alternatives --install =
/${KERNEL_IMAGEDEST}/${DTB_BASE_NAME}.${DTB_EXT} =
${DTB_BASE_NAME}.${DTB_EXT} =
/boot/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT} ${KERNEL_PRIORITY} || =
true
> +    done
> }
>=20
> pkg_postrm_kernel-devicetree () {
> -	cd /${KERNEL_IMAGEDEST}
> -	for DTB in ${KERNEL_DEVICETREE}
> -	do
> -		DTB_BASE_NAME=3D`basename ${DTB} | awk -F "." '{print =
$1}'`
> -		DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | =
sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
> -		update-alternatives --remove ${DTB_BASE_NAME}.dtb =
/boot/devicetree-${DTB_SYMLINK_NAME}.dtb ${KERNEL_PRIORITY} || true
> -	done
> +    cd /${KERNEL_IMAGEDEST}
> +    for DTB in ${KERNEL_DEVICETREE}
> +    do
> +        DTB_EXT=3D${DTB##*.}
> +        DTB_BASE_NAME=3D`basename ${DTB} | awk -F "." '{print $1}'`
> +        DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed =
"s/${MACHINE}/${DTB_BASE_NAME}/g"`
> +        update-alternatives --remove ${DTB_BASE_NAME}.${DTB_EXT} =
/boot/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT} ${KERNEL_PRIORITY} || =
true
> +    done
> }
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_19E819B6-1121-4DA8-9194-C08D75092D3B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc20HYACgkQuwUzVZGdMxQ7MACcDscRnk5wc+oFIGssYL+QQQrH
xh8An08WSnJXh/V7/htJVV41K+JBpz3p
=SoI9
-----END PGP SIGNATURE-----

--Apple-Mail=_19E819B6-1121-4DA8-9194-C08D75092D3B--
