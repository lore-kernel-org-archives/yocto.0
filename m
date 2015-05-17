Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D93C3E00988; Sun, 17 May 2015 15:46:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 847C6E007B6
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:46:41 -0700 (PDT)
Received: by wicmx19 with SMTP id mx19so76392901wic.0
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:46:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=DI4D9ryZ/sg8ivHfotJi5vWDFR3Clr5xmgYgI/Mn6+M=;
	b=E1sewuEKPQnZ+7l0An8CItnLZQaLnFpYSG5Ihm0y+Wgise26vLy7HLb/oWzWS1rVzA
	CyEHF2wabzjHSK6HahR/+KiTz5w/rrauwdHlFE26TuUNoY/B9hBTgjsRY1D4s6tWPvJT
	vC7k0qkO6e5vCLuHeytJJk8jNkBLMjsxR63ggg3EskiOltw264XrP1HByLnM8CeB0z8z
	rS3n/yr54i+N928UOnrAdtX58REzunKiiNhvkcq+WnB2oDHghowVOKfnqh+EZ4z06SKJ
	+p7jMfO285hyAzsoXbkTpMoPLQh8vhfkvmXC1izx1fwhc2kqNHLY8lp4FtqXxsCnLUOt
	6GLg==
X-Gm-Message-State: ALoCoQkTQF0ISdtLHtGmozRYPu434SbmYvMUL8Pyv5Mp30RXpF0bo589jDsVumZ/aMFLDd5J+/hJ
X-Received: by 10.194.59.46 with SMTP id w14mr38955172wjq.106.1431902800362;
	Sun, 17 May 2015 15:46:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.61.87 with HTTP; Sun, 17 May 2015 15:46:19 -0700 (PDT)
X-Originating-IP: [87.63.77.14]
In-Reply-To: <b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
	<b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 18 May 2015 00:46:19 +0200
Message-ID: <CAK18fxEsdz9SFurpRx7wpxwu1S_EFMzGoO8se-ULxObaPOmmOw@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/5] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Sun, 17 May 2015 22:46:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi Petter,

> +       # Check if we are building with device tree support
> +       DTS="${@get_dts(d, None)}"
>
>         # Initialize sdcard image file
>         dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
> @@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () {
>                 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
>                 ;;
>         *)
> -               if test -n "${KERNEL_DEVICETREE}"; then
> +               if test -n "${DTS}"; then
>                         # Copy board device trees to root folder
>                         for DTB in ${DT_ROOT}; do
>                                 DTB_BASE_NAME=`basename ${DTB} .dtb`

I started to review these patches and test. I have one concern related
to this patch. More specifically the fact that even though you check
for DTS now, we are still using DT_ROOT (and co) for the next loops
which use KERNEL_DEVICETREE. Maybe a better way to do it would be to
move
DT_ALL = "${@d.getVar('KERNEL_DEVICETREE', True) or ''}"
DT_OVERLAYS = "${@oe.utils.str_filter('\S+\-overlay\.dtb$',
'${DT_ALL}', d)}"
DT_ROOT = "${@oe.utils.str_filter_out('\S+\-overlay\.dtb$', '${DT_ALL}', d)}"
... after you define DTS and define these based on DTS variable.

Regards,
Andrei

