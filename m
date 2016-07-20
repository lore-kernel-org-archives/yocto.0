Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20AE2E00D8F; Wed, 20 Jul 2016 02:35:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 429B3E00D82
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:35:35 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id f65so167920277wmi.0
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=R03XSeMwJ4wobY1mU/qiyy3pHHB1ThXq7Pw01r1fgVg=;
	b=DCBNI0TReMk26xxYvynawKUw+MiTrFfWonBfgYswHREnDFdsbeQwvjjXGZ202Oveo/
	sL2hBAPez2RUJaKsONnW+pOvpD1tPL8jZ6Bmdcg/+AdTVHo3dIqFtxX9AaTno5c0yFk3
	ueUe1tYFofKlupEWeHqHotISyP3WCVJQDh6076JnItScTV40oFdWNPhXc0KppSrUllxO
	bVHTB35l5EPTAhJqhtLM2Gt8okbPXJ5lk4CnJdfBpxUVhR8bMKUQhXQYKPyqjwbwt121
	FSbUMTqnkI3azo8cRTG/iqeJtwdyhwBRFnn7fOL+I6urI8wM5521Fs21xVpP07nF/13F
	y2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=R03XSeMwJ4wobY1mU/qiyy3pHHB1ThXq7Pw01r1fgVg=;
	b=ipvTcPlMFGyy+q6aBsOmwthG6/Q07z8cNhhjLcuo8mhPkM8ClioC5cnzpRuy+nwdS5
	V2fO+ygDE5SacI/xuWKWejBwaT7odpgCBBQx2ZhSk/HVGlu01RkEdF3vH2WScwkP2P9G
	bN2pIGkGMKqwCgWoJjFXqzK07aMjwtnILlh6r4DLvtFmnDrblD/oF4EQxbHCubtMAiGf
	NZictu54YzD2zNl1IXZMr5LyLwbo1l5OUKoQeq5zAxSoVQft+fx+w+v8ONxl+rcP1VdU
	zHlB9hsCuN7CmmYgytHvMWc4qA68XnFGWu3QoiGQmPIy4d1aNeWfiS8gwm4FFqEADdZc
	2sgA==
X-Gm-Message-State: ALyK8tICWL++FizYxrwoOnw6jj4xhh1D8fXoqbRcr37q+JClyjtHe8ljh+2yXX8moFaQcw==
X-Received: by 10.28.232.145 with SMTP id f17mr10197405wmi.15.1469007334766;
	Wed, 20 Jul 2016 02:35:34 -0700 (PDT)
Received: from [192.168.2.129] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	u125sm30463585wmg.22.2016.07.20.02.35.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Jul 2016 02:35:34 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1469007075-4945-1-git-send-email-piotr.lewicki@elfin.de>
	<1469007075-4945-2-git-send-email-piotr.lewicki@elfin.de>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <ffdb626a-ff7e-031f-9bd5-d120ce5c8747@elfin.de>
Date: Wed, 20 Jul 2016 11:35:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1469007075-4945-2-git-send-email-piotr.lewicki@elfin.de>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: remove unbuildable task
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
X-List-Received-Date: Wed, 20 Jul 2016 09:35:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

After removing rpi-mkimage we don't have the tool mkknlimg and task 
do_bundle_initramfs fails with the error:

| 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/run.do_bundle_initramfs.19144: 
152: 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/run.do_bundle_initramfs.19144: 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg: 
not found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_bundle_initramfs (log file is located at 
/home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/log.do_bundle_initramfs.19144)

Removing this append fixes this behaviour.

I have tested that with kernel 4.4.13.


Unfortunately I don't know how this behaves with older kernels (3.18 and 
4.1)


BR,

Piotr


On 20.07.2016 11:31, piotr.lewicki wrote:
> Signed-off-by: piotr.lewicki <piotr.lewicki@elfin.de>
> ---
>   recipes-kernel/linux/linux-raspberrypi.inc | 13 -------------
>   1 file changed, 13 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 6184402..98229d9 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -54,16 +54,3 @@ do_deploy_append() {
>       fi
>       echo "${CMDLINE}${PITFT_PARAMS}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
>   }
> -
> -do_bundle_initramfs_append() {
> -    if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" = x1 ]; then
> -        if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
> -            if test -n "${KERNEL_DEVICETREE}"; then
> -                # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> -                for type in ${KERNEL_IMAGETYPES} ; do
> -                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
> -                done
> -            fi
> -        fi
> -    fi
> -}


