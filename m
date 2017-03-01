Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA8E1E008D0; Wed,  1 Mar 2017 02:32:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A678E00726
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 02:32:07 -0800 (PST)
Received: by mail-qk0-f195.google.com with SMTP id u188so9457330qkc.3
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 02:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=AiyQMbZiQ7O0sfnnrw8NkLRX24lpPGWgrCKO1j1wW50=;
	b=NJr1tHRU6E/eC/P/MxiBRlumQ7O5BWPGFaGezqhrfEl3KYclMmIInqMYtoxpRwq158
	GANAbkWGjihWCLvV3Sz9c/uZ6D3opQKmw2A1zdraISEUE6O5HJFO+gz9Ng9Dy6o6ZHfR
	xKpufNZqW3KjlCDTkJHXX1OwSGT9IJclDva0oA6JPaYDnFyzMShTDVmkS1KQ6A/BZL8v
	XNxwyZsG/8ktpLa8mhye3A39jFn/eMfOvJMJWUVWCmfTpWPHndhhD/7WADu9S7R/Isq6
	/0E+njMpzXuKiQAOIjlqAr58LpJTrqKClRXzfGSJ9ZFEVvAcbSQc4tT/23vR6yFP4AzC
	semA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=AiyQMbZiQ7O0sfnnrw8NkLRX24lpPGWgrCKO1j1wW50=;
	b=QEROxqq8eQV7o2RJSIat73T+jrpKl8JuUpS5YogB51wijOYCFXMMY7kANEWkA5tHVP
	AR5TYieLJ56bChRYTAWZTUT5c42peQk0HFBwTIy8PgSaej0Vgkl/IPfK62wdy8ntdAMJ
	nrvJOm+mKk5U2JYo7/qG9tqZ7vHjD6POJxoj5cj671ozrZPcExLhor9xTayFE0XBtlD4
	tY+MwhlW0Elcxs6vh129M6G0py5Pi5/AaC/F3ah1pP4nVdEqSVeAtHE0kFARjGvOqnx8
	7/r132k86BAWhPRBbGF5lpWIFAICVNVOB6Y3GmkSNXXRRbbx4XNPBLcRnCH4aiLX76mU
	54/A==
X-Gm-Message-State: AMke39kssNlWewMYmjiaf5lj+9cetRUqVNIpp4mRkT8ljI4Ie3aMRmgyCbksa2qB2KrZbplDAakfB4PGeVh4eQ==
X-Received: by 10.200.36.194 with SMTP id t2mr9076891qtt.61.1488364327176;
	Wed, 01 Mar 2017 02:32:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.104.145 with HTTP; Wed, 1 Mar 2017 02:32:06 -0800 (PST)
In-Reply-To: <1488363782-15062-1-git-send-email-jacob-chen@iotwrt.com>
References: <1488363782-15062-1-git-send-email-jacob-chen@iotwrt.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Wed, 1 Mar 2017 18:32:06 +0800
Message-ID: <CAFLEztR+o6usNa+Vb-oDcW6SAUjh1iyv2mycK6ryM799mw7KYQ@mail.gmail.com>
To: yocto@yoctoproject.org, Eddie Cai <eddie.cai.linux@gmail.com>, 
	Romain Perier <romain.perier@gmail.com>,
	Trevor Woerner <twoerner@gmail.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [PATCH] udev-extraconf: add rockchip specific rules
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
X-List-Received-Date: Wed, 01 Mar 2017 10:32:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

oh=EF=BC=8C i forget to add meta-rockchip too.

2017-03-01 18:23 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com>:
> This rules file help to set suitable mode for device node.
>
> vpu-service, vpu_service, rkvdec, hevc-service are different ip.
> mali0 is mali-midgard and mali is mali-utgard.
>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  recipes-core/udev/udev-extraconf/10-rk.rules |  6 ++++++
>  recipes-core/udev/udev-extraconf_%.bbappend  | 13 +++++++++++++
>  2 files changed, 19 insertions(+)
>  create mode 100644 recipes-core/udev/udev-extraconf/10-rk.rules
>  create mode 100644 recipes-core/udev/udev-extraconf_%.bbappend
>
> diff --git a/recipes-core/udev/udev-extraconf/10-rk.rules b/recipes-core/=
udev/udev-extraconf/10-rk.rules
> new file mode 100644
> index 0000000..2308c9a
> --- /dev/null
> +++ b/recipes-core/udev/udev-extraconf/10-rk.rules
> @@ -0,0 +1,6 @@
> +KERNEL=3D=3D"hevc-service", MODE=3D"0666", GROUP=3D"video"
> +KERNEL=3D=3D"rkvdec", MODE=3D"0666", GROUP=3D"video"
> +KERNEL=3D=3D"mali0", MODE=3D"0666", GROUP=3D"video"
> +KERNEL=3D=3D"mali", MODE=3D"0666", GROUP=3D"video"
> +KERNEL=3D=3D"vpu-service", MODE=3D"0666", GROUP=3D"video"
> +KERNEL=3D=3D"vpu_service", MODE=3D"0666", GROUP=3D"video"
> diff --git a/recipes-core/udev/udev-extraconf_%.bbappend b/recipes-core/u=
dev/udev-extraconf_%.bbappend
> new file mode 100644
> index 0000000..4691a31
> --- /dev/null
> +++ b/recipes-core/udev/udev-extraconf_%.bbappend
> @@ -0,0 +1,13 @@
> +# extra configuration udev rules
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +
> +SRC_URI_append =3D " \
> +    file://10-rk.rules \
> +"
> +
> +do_install_prepend () {
> +       install -d ${D}${sysconfdir}/udev/rules.d
> +       install -m 0644 ${WORKDIR}/*.rules ${D}${sysconfdir}/udev/rules.d
> +}
> +
> +PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> --
> 2.7.4
>

