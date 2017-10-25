Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1CA6E00D14; Wed, 25 Oct 2017 01:43:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87985E00D0E
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 01:43:35 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id l1so23172637wrc.3
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 01:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=2rh0YoYoEHtCK3gkNFijbVQcxpnq4tKmnUbUnx7+xB0=;
	b=KAtjOfbm8LiL9tzF+b+jNtf1uYG/K6M/vH8aNaNtvoLtjVbVuf/VVZsV9nNZ8DLmqn
	WxZPihjffxDzyfAvUXk4hGibp7NDkTyyuxQrmrIW1pziZ+sbIvakInxxAx8ydJu7OQOp
	BU4hnOi0yLYwQzJN776BozcmQfEnoFZNyVjFnP4z5l3GNzmMF1jZlUSETnhD5PPvGbWR
	Cu532ST/OkC1UGl6328mqdvSlJGI5iBeuvuAZN85Bw+dcx6V4uIPrpMwx7KWGDdoF+1C
	pqtnHZV9+O4Ft7n10o2Gq4ifHu9VTxNkWfXpRKyw2njKpfmseFkKaUpHp/StKL4QQ1Vs
	4Fww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=2rh0YoYoEHtCK3gkNFijbVQcxpnq4tKmnUbUnx7+xB0=;
	b=WOyTc0xluHpqVhGQnVqDRu1praB/zX1kRLD5+axK4yoBL8pwdZDbrHlPBrtne0tgfM
	IcTNfgsdf9gdtiuieKa7DhjT8mS5pnA9YTYaZp3iz/h67pDGBWAH2B10Ca1o9dUOtdEz
	B5mBrdVIv4WG6KeGWlwV8EXkCGevb7yPM5oPaHIOcktuTTDdzVxdNegaFPq/Tb1ChWhf
	aiG51otn7bTnJwnp1v28FvaN2/tXjZ3ruCqCR18bdAbNWj+DWRRMgK39g0+PaWIC2iA+
	twkH7QMt/yugax+ZkJ2O0qEQPzidxwiZH3qGseMSEqgrsnSDJ/jkY99cOVfArCKWjSqV
	LGng==
X-Gm-Message-State: AMCzsaW23AFAywXzTJrw5uSXRxfZrMBipC0HSwSmCXXhlDwa1jgtcn1S
	JSkCAYfSkQQk08P9QXVPH9nwNNsHU9ZaAWwH216odw==
X-Google-Smtp-Source: ABhQp+R77b4PGDIoh5zGWurq0O3z8gW5a20HoRcTF7xmk3r9Be+dxDwAKK8/SgDezyb09geL0Q54QCRKNk7B7AEz+qg=
X-Received: by 10.223.145.165 with SMTP id 34mr1228118wri.140.1508921014414;
	Wed, 25 Oct 2017 01:43:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.20 with HTTP; Wed, 25 Oct 2017 01:43:34 -0700 (PDT)
In-Reply-To: <20171025054330.23222-1-mgloff@emacinc.com>
References: <20171025054330.23222-1-mgloff@emacinc.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 25 Oct 2017 09:43:34 +0100
Message-ID: <CAPyrkgyZz8wSd+JbP84=ELBji8=pCqBhpCUot5V8coSGcaOorg@mail.gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
Cc: Michael Gloff <mgloff@hotmail.com>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux-firmware: Replace /lib with ${nonarch_base_libdir}
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
X-List-Received-Date: Wed, 25 Oct 2017 08:43:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2017 at 6:43 AM, Michael Gloff <mgloff@emacinc.com> wrote:
> From: Michael Gloff <mgloff@hotmail.com>
>
>         Use standard variable name and avoid
>         QA errors when usermerge DISTRO_FEATURE is enabled.
>
> Signed-off-by: Michael Gloff <mgloff@emacinc.com>
> ---
>  recipes-kernel/linux-firmware/linux-firmware_%.bbappend | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend b/re=
cipes-kernel/linux-firmware/linux-firmware_%.bbappend
> index 565b735..daf1dbc 100644
> --- a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> +++ b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> @@ -10,17 +10,17 @@ do_install_append() {
>         # (v7.45.41.46)
>         local _firmware=3D"brcmfmac43430-sdio.bin"
>         local _oldmd5=3D9258986488eca9fe5343b0d6fe040f8e
> -       if [ "$(md5sum ${D}/lib/firmware/brcm/$_firmware | awk '{print $1=
}')" !=3D "$_oldmd5" ]; then
> +       if [ "$(md5sum ${D}${nonarch_base_libdir}/firmware/brcm/$_firmwar=
e | awk '{print $1}')" !=3D "$_oldmd5" ]; then
>                 _firmware=3D""
>                 bbwarn "linux-firmware stopped providing brcmfmac43430 v7=
.45.41.26."
>         else
>                 _firmware=3D"${WORKDIR}/$_firmware"
>         fi
>
> -       mkdir -p ${D}/lib/firmware/brcm
> -       install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio.txt ${D}=
/lib/firmware/brcm
> +       mkdir -p ${D}/${nonarch_base_libdir}/firmware/brcm
> +       install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio.txt ${D}=
${nonarch_base_libdir}/firmware/brcm
>  }
>
>  FILES_${PN}-bcm43430 +=3D " \
> -       /lib/firmware/brcm/brcmfmac43430-sdio.txt \
> +       ${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.txt \
>  "
> --
> 2.14.3
>

All 3 patches look good at first glace. Could you submit them as a
pull request on https://github.com/agherzan/meta-raspberrypi please?

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

