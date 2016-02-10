Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2972AE00872; Wed, 10 Feb 2016 08:26:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37B46E007F2
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 08:26:06 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id p63so36534941wmp.1
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 08:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:user-agent; bh=X2SF9A+760VpHucdsRaYtDWMPq/egaOj2EIW3jpI1Bo=;
	b=c/LUhge06L/5Uit/Iv2A43zCDD/Ofs7s38LISbkGech7OkQRqH13EnKC0901AD0JzY
	EqttAg2n006xKrk75p9tGgJI/oQ8rd1lkmgiyuk+CqvU1hAOIwGfhdqaCjJGdc32cZ9S
	Eyze1CAdT3XqmOklX0ZEbKFBAmmsi7usKTVjwn7D9MkW/meSFJIrRgYXz9hJWNGAtHse
	s7sfx5Y0VNlJJddFd0nKjvnsIuOnWmfbWo25r5sifpPRNwMKskw3+mweQr5bpzqmRtON
	e7DTvZtbjuao78xtNU1tFP27EPbLRm5lmoBXcg8iJQjRV938Gp9pdUOZ4rrDpAPAxqQk
	YeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:user-agent;
	bh=X2SF9A+760VpHucdsRaYtDWMPq/egaOj2EIW3jpI1Bo=;
	b=JLrZ8P1ZH3RTeVZ/kTFZogL/H7GvBu8woGCYzv4t9VErE5xoNoKpRKYGjSRZkwz5Xv
	fKPBbUH+pwBdW7WR0r9tHcVyE+ZNgiUKLW/AmC7+O8eW2W/rrjBGzjz+Z53UwqJ9jewd
	PjPrgm1FzszoNGLYDOz2KvZAJNNEyDvjKyoCrU+JPxJXoyTt2Xf5chtjurCw/FfNlxGM
	RA/eh4I4oOaXsdLF5/xl+tF+csmBLar4hWS+aT5Jf5Mdox8YtUKMMyzIvOg7ynN/+r8Z
	Wql8fkvsNpaTn/DjcleGvg9jtQnql0yaN7X9DyspMf2FvDEfzQTsZ5RnFObHmn87nmZM
	3+jg==
X-Gm-Message-State: AG10YOSOf5bpX9XOaCeNOWBHeQwxJ3n8Wt2mALGmHc4nUJENZKHbJXS98oBVp0ZJydU3pg==
X-Received: by 10.194.83.136 with SMTP id q8mr40585525wjy.51.1455121565793;
	Wed, 10 Feb 2016 08:26:05 -0800 (PST)
Received: from localhost (x55b1eae5.dyn.telefonica.de. [85.177.234.229])
	by smtp.gmail.com with ESMTPSA id w66sm4136179wmd.2.2016.02.10.08.26.04
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 10 Feb 2016 08:26:05 -0800 (PST)
Date: Wed, 10 Feb 2016 17:16:59 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160210161659.GC27824@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: dtb filename mismatch prevents booting
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
X-List-Received-Date: Wed, 10 Feb 2016 16:26:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello list,

if I try to boot from my yocto generated SD-card image my u-boot can't
start the kernel because the imx6ul-14x14-evk.dtb is missing.


reading boot.scr
** Unable to read file boot.scr **
reading zImage
5072288 bytes read in 328 ms (14.7 MiB/s)
Booting from mmc ...
reading imx6ul-14x14-evk.dtb
** Unable to read file imx6ul-14x14-evk.dtb **
Kernel image @ 0x82000000 [ 0x000000 - 0x4d65a0 ]

Starting kernel ...


In my /boot folder I saw a dtb file, but the filename is a bit different.

zImage-imx6ul-14x14-evk.dtb instead of imx6ul-14x14-evk.dtb

So I changed these filename manually and my Image is booting.

mv zImage-imx6ul-14x14-evk.dtb imx6ul-14x14-evk.dtb
»zImage-imx6ul-14x14-evk.dtb“ -> »imx6ul-14x14-evk.dtb“

What is the right way to define these dtb filename?

I saw the IMAGE_BOOT_FILES in local.conf

#IMAGE_BOOT_FILES = "zImage zImage-imx6ul-14x14-evk.dtb"
IMAGE_BOOT_FILES = "zImage imx6ul-14x14-evk.dtb"

but after I changed it my build fails.

ERROR: Error: The image creation script '/home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/work/imx6ulevk-poky-linux-gnueabi/fsl-image/1.0-r0/temp/create_image.wic' returned 1:
Error: exec_cmd: install -m 0644 -D /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/deploy/images/imx6ulevk/imx6ul-14x14-evk.dtb /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/deploy/images/imx6ulevk/fsl-image-imx6ulevk-20160208144228/build/boot/imx6ul-14x14-evk.dtb returned '1' instead of 0
Checking basic build environment...
Done.

Creating image(s)...

WARNING: /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/work/imx6ulevk-poky-linux-gnueabi/fsl-image/1.0-r0/temp/create_image.wic:1 exit 1 from
  BUILDDIR=/home/graute/5411_IBIS/yocto/build-imx6ulevk wic create $wks --vars /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/sysroots/imx6ulevk/imgdata/ -e fsl-image -o $out/

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/graute/5411_IBIS/yocto/build-imx6ulevk/tmp/work/imx6ulevk-poky-linux-gnueabi/fsl-image/1.0-r0/temp/log.do_rootfs.17681
ERROR: Task 7 (/home/graute/5411_IBIS/yocto/os-meta-dnt/meta-fsl/recipes-fsl/images/fsl-image.bb, do_rootfs) failed with exit code '1'

some ideas whats going wrong here?

Best regards,

Oliver

