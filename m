Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03BD1E00C1A; Fri, 25 Aug 2017 01:51:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA87E00B87
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 01:51:06 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id r187so3422509wma.1
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 01:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=10UOFlqsy9o8O6lyNPEdrlNI+vqafnGpKm1GZsKT2mM=;
	b=d8bqkVH/MTz2y8QR9NXtXoUqDqleHDTEZK9UzAcv9Fs6zu3SncwDAGP3aQvfWf0ohq
	JdQ4IpwbM+7hh2/glSglq+9nCTDBlB9d9iXiXlv1sc5mcsg82OoVBTuSBygCKy1m5KJ1
	7wQrgXSejBK39BkvO6B2XJw1lM5RPDysgz/7XF/FJ5wRweXoWk3oJOAwT40WCRaLA45R
	Igy+Uo6T5LDiOEX1p1MknPQE9JGMWmgrHxEczGet/F4tWz69MUkQBZmiGV9/KnJa2V71
	bS04gkG7GMh++E2ful5you3f2kMw6QaTmeL5Uyy22ciUEBk0CroDSYCAZ2ZyLyTnk3DA
	uU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=10UOFlqsy9o8O6lyNPEdrlNI+vqafnGpKm1GZsKT2mM=;
	b=j0Dpcr/NIn1f2ZHaz/yYBQkAaBRC8v/Z1P85vPjaJipr+eg7I7R2R8l80XyH6zrvDZ
	1As9dGnMW51EbYnyOqiJaOskhmvZl2klmpV58NiPyjsDvAcu5M6rzG6rBsfDixa1PTS+
	rvDkWubV3XmZKXniHyqlEBSf184/PAXRriFniTmBYQVbXCs0nDE+aM+DYdy+cF7/xRro
	MkUp7gcUZ4IMNj/wFQI3bQxdCEBEqfm4VCoZcJ6AP4eB3YUY5iszh0wUDNlISNPZSdld
	3p2CLj5DskfYSbiAGn2MkIPfj3UBkytD7uI3TjS43RrW9AqIRzmxrOls4fe7L/FI1ZgP
	pT5A==
X-Gm-Message-State: AHYfb5j6f+0lkZfmhe+09PAEE8gb3mAyV4nZ/3+mpEP6jxWSzxfFq2LO
	OfSUzEQXF7KgxWDq/JHOiu2zXyRN9QQA
X-Received: by 10.28.26.3 with SMTP id a3mr800910wma.60.1503651065790; Fri, 25
	Aug 2017 01:51:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.195.131 with HTTP; Fri, 25 Aug 2017 01:51:05 -0700 (PDT)
In-Reply-To: <1503576301-18920-2-git-send-email-mickey.happygolucky@gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1503576301-18920-2-git-send-email-mickey.happygolucky@gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 25 Aug 2017 09:51:05 +0100
Message-ID: <CAPyrkgz_zRA3+FL6v9yrvaZNeEGh5OH+j6edbusjU1xooB6+qA@mail.gmail.com>
To: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] bluez5: add functions for raspberrypi0-wifi
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
X-List-Received-Date: Fri, 25 Aug 2017 08:51:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2017 at 1:05 PM, Yusuke Mitsuki
<mickey.happygolucky@gmail.com> wrote:
> hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not found=
.
>
> Paches that in order to use bluetooth with BCM43430 are not enabled.
> Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like as=
 follows:
>
> - SRC_URI_append_raspberrypi3
> - do_install_append_raspberrypi3()
> - FILES_${PN}_append_raspberrypi3
> - SYSTEMD_SERVICE_${PN}_append_raspberrypi3
>
> These should be enabled with raspberrypi0-wifi too.
>
> Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
> ---
>  recipes-connectivity/bluez5/bluez5_%.bbappend | 25 +++++++++++++++++++++=
++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-conn=
ectivity/bluez5/bluez5_%.bbappend
> index 956d776..075dc2b 100644
> --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
> +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
> @@ -24,3 +24,28 @@ FILES_${PN}_append_raspberrypi3 =3D " \
>      "
>
>  SYSTEMD_SERVICE_${PN}_append_raspberrypi3 =3D " brcm43438.service"
> +
> +SRC_URI_append_raspberrypi0-wifi =3D " \
> +    file://BCM43430A1.hcd \
> +    file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
> +    file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.pat=
ch \
> +    file://0003-Increase-firmware-load-timeout-to-30s.patch \
> +    file://0004-Move-the-43xx-firmware-into-lib-firmware.patch \
> +    file://brcm43438.service \
> +    "
> +
> +do_install_append_raspberrypi0-wifi() {
> +    install -d ${D}/lib/firmware/brcm/
> +    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM=
43430A1.hcd
> +
> +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false=
', d)}; then
> +        install -d ${D}${systemd_unitdir}/system
> +        install -m 0644 ${WORKDIR}/brcm43438.service ${D}${systemd_unitd=
ir}/system
> +    fi
> +}
> +
> +FILES_${PN}_append_raspberrypi0-wifi =3D " \
> +    /lib/firmware/brcm/BCM43430A1.hcd \
> +    "
> +
> +SYSTEMD_SERVICE_${PN}_append_raspberrypi0-wifi =3D " brcm43438.service"

I don't like the amount of duplication here. Could you define some
common variables and use those in the appends? This will make it
easier to change/upgrade in the future and avoid risk of the
duplicates falling out of sync with each other.

Eg.

    RPI_WIFI_SOURCES =3D "...."

    SRC_URI_append_raspberrypi3 =3D "${RPI_WIFI_SOURCES}"
    SRC_URI_append_raspberrypi0-wifi =3D "${RPI_WIFI_SOURCES}"

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

