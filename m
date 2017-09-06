Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5549E00C7B; Wed,  6 Sep 2017 02:18:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 351A2E00C45
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 02:18:45 -0700 (PDT)
Received: by mail-wr0-f175.google.com with SMTP id a47so10942595wra.1
	for <yocto@yoctoproject.org>; Wed, 06 Sep 2017 02:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=oXjb3ejXJlzZbbT8wpHjAXJuv/1inCKInVAfKida9Bo=;
	b=h7V1a4VQoj/tvHC88ciXP4U6D4o3XBz/9kJRu9UVENdK6EobLPCuGQMlmNGRlnywNa
	9L68zyZN6PwybzsnXt8ljX37CjUQ+1+ocBHxpixG3GDc9Gkr76BMmOzIZwh8KP6xsWiR
	qJQQPWbghdkuhkFCb/TzMIlv8++0+o+97h5yypS/7/ybdclqw2ElblXm8Rhm+3cwdXiH
	SCUQPa/cFPkgVqPrUMkspwLPL7lzlmcpdIwItITdBj++O9DAQbw8PuhbduN8kXcWx+IV
	/ReCAJbHaU2TFLWF3DFtp3xdaH2M79HRPBa1lMZRgIXzIVE8isLiLCi+Ng63a7gEw66U
	I7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=oXjb3ejXJlzZbbT8wpHjAXJuv/1inCKInVAfKida9Bo=;
	b=ZZIr6J+DWSGZbcVpZeQACu5PCZumC8b9vTcsiZ/EiCFR6TiRxBNhDEHqKo4MgTevZz
	y0oiQMgshF/W9n6VxmmAb7+Lczz+AqrJCI6rbLUCkwlUr37gqXAznE0bmHUNY8rlvR/j
	5Kqsg9mEj95Yf+Tlkk7MLuP+DMJRGmCzpJXnsG+PVGnh1IxGVIEDnXKPbTUt+ZaXdZxF
	BwGq9rIrnAockvyKKcWd83CuFVHF6MM6XypTr8YRz5l2ZX0XYgO82BHxmEYHzP5OZyyS
	pLc/GzVUBWsi3AJzTbmoLfBpSqjkCJMd1eFXEfFXtibmwZGegVEEwuT5d9wIdEEagjoI
	5+JQ==
X-Gm-Message-State: AHPjjUhPZILMLT+467Tlq0G77dGOuzv28CcSfp1p4q5ubH9HaA9e6sKY
	cL6jcJPchSDuiPrWBGDKqF8rJP0hTgSo
X-Google-Smtp-Source: ADKCNb7n5Jpr81EujXCPCkY7nAqNbtHMZyUrGA6a+XhEwa7fPwma42/MRN9d/3hrXA1DiMmcs5L9Dx/+Ktac8nbzFcU=
X-Received: by 10.223.157.139 with SMTP id p11mr1144270wre.28.1504689523182;
	Wed, 06 Sep 2017 02:18:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.53 with HTTP; Wed, 6 Sep 2017 02:18:42 -0700 (PDT)
In-Reply-To: <1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 6 Sep 2017 10:18:42 +0100
Message-ID: <CAPyrkgyu0G4WWbjTgz_N4ErrpA9QsCVvPmJPE1hP4J56h5kTEA@mail.gmail.com>
To: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] bluez5: add functions/variables to enabling bluetooth on another raspberrypi
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
X-List-Received-Date: Wed, 06 Sep 2017 09:18:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 5, 2017 at 11:34 PM, Yusuke Mitsuki
<mickey.happygolucky@gmail.com> wrote:
> functions/variables in this bbappend implemented for only raspberrypi3.
> But these must be able to used to enabling bluetooth on another raspberry=
pi that has bluetooth feature such as raspberrypi0-wifi.
>
> The simple solution is a duplicating these but it is not good ideas for m=
aintainance.
>
> Add functions/variables follows to simplify to enabling bluetooth on anot=
her raspberrypi that has bluetooth.
> - BCM_BT_SOURCES
> - enable_bcm_bluetooth()
> - BCM_BT_FIRMWARE
> - BCM_BT_SERVICE
>
> Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
> ---
>  recipes-connectivity/bluez5/bluez5_%.bbappend | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-conn=
ectivity/bluez5/bluez5_%.bbappend
> index 956d776..b2fbf22 100644
> --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
> +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
> @@ -1,6 +1,6 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> -SRC_URI_append_raspberrypi3 =3D " \
> +BCM_BT_SOURCES =3D  " \
>      file://BCM43430A1.hcd \
>      file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
>      file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.pat=
ch \
> @@ -9,7 +9,7 @@ SRC_URI_append_raspberrypi3 =3D " \
>      file://brcm43438.service \
>      "
>
> -do_install_append_raspberrypi3() {
> +enable_bcm_bluetooth() {
>      install -d ${D}/lib/firmware/brcm/
>      install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM=
43430A1.hcd
>
> @@ -19,8 +19,18 @@ do_install_append_raspberrypi3() {
>      fi
>  }
>
> -FILES_${PN}_append_raspberrypi3 =3D " \
> +BCM_BT_FIRMWARE =3D  " \
>      /lib/firmware/brcm/BCM43430A1.hcd \
>      "
>
> -SYSTEMD_SERVICE_${PN}_append_raspberrypi3 =3D " brcm43438.service"
> +BCM_BT_SERVICE =3D  " brcm43438.service"
> +
> +SRC_URI_append_raspberrypi3 =3D " ${BCM_BT_SOURCES}"
> +
> +do_install_append_raspberrypi3() {
> +    enable_bcm_bluetooth
> +}
> +
> +FILES_${PN}_append_raspberrypi3 =3D " ${BCM_BT_FIRMWARE}"
> +
> +SYSTEMD_SERVICE_${PN}_append_raspberrypi3 =3D " ${BCM_BT_SERVICE}"
> --
> 2.7.4
>

This and the follow up patch look excellent, should be easy to modify
in the future if we need to.

We have switched to using github pull requests for meta-raspberrypi.
Could you open a pull request on
https://github.com/agherzan/meta-raspberrypi with these changes
please? Let me know if you have any issues doing that.

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

