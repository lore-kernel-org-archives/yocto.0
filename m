Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62903E00C75; Tue, 29 May 2018 12:43:58 -0700 (PDT)
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
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE745E009D4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 12:43:57 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id c2-v6so20230691qtn.9
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 12:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2NwDr0N0VXf9ShXhHIOGuTlAUhdTRcsfPXFsEMoj+lg=;
	b=DXawPGTQlMMX4Yl4cAD3ZnBALyMZ3NMolvpMsUUGBOLHvaeiCEkjLVHiB7FUn5VOpc
	AUmghWPlDWAUr6k0D7S2v9iL1qNj7G7aE8Dh5KyCehSsaO3dMCD3jiG8rJkFt9esGaT1
	8wXGcglt9aMtPQfZPwU6jsOT/Fz8M9KiQg6a4Kib2CRSiv39qodOR3Bh5M9V2C+0MPYO
	lNhTubA/0c7RMYiC/bBOATiMQKo/JAYS0FiF4kDpxYhCQUh6l6YYIfsq1jJTKj7XeJos
	VTnxDeS4vubhvVYXU4kZ2P7g2RF2IHkbdcT+2y5EJh0rk6tLS4nh8OazPZD6Gzt2NdY1
	z+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2NwDr0N0VXf9ShXhHIOGuTlAUhdTRcsfPXFsEMoj+lg=;
	b=Qwd7XYD0VdRmW7fRcOuREvLD8u451BDJV0HAsJjHUTk4rTec1ysHgzP+BCeC/kiXU7
	CmcCBWlHKdaUYdiegJe1XfWtIhPrNGcDSy3xOwB9g44ivY3JlkAq8TXRXp3I4gn0J8Er
	H5j55Xa1kWk9iKOKo5eGEs3JrAbd58gu/xUwW5JsXlAag3eUbg873nCJY5XQTukzw2mz
	xWm/cuMK7tbGkfdMbeJwlDlkXTJqKKaio2Qg+AZcfE0udGLIR/dTHe6LzuS6Yih2T5Nv
	dcWp94q8PR4qK8mAPqrNxmAi6ISUo7Up+VxCRm3TMqOoaqYH7IbkfloG7DYXiL96sbQb
	t4CA==
X-Gm-Message-State: ALKqPwffVcTWsTlLfeH4KC9TuV/S3a1xts3jcKmR06K/y50hZC7tKlt+
	oG8KsgimJWPeJ3GsSEZ0CeA4Wv3/+yYh63boIGi37A==
X-Google-Smtp-Source: ADUXVKLdn3hEKe5BEXxXt4z7vLXWXDZGx7sdiziW8IjxX00xXbNlBQn5OT0V5IEHNhWiy/JfAkmza8m+qop9mNO+4no=
X-Received: by 2002:a0c:b2c2:: with SMTP id
	d2-v6mr17280631qvf.16.1527623036798; 
	Tue, 29 May 2018 12:43:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9a0f:0:0:0:0:0 with HTTP; Tue, 29 May 2018 12:43:26
	-0700 (PDT)
In-Reply-To: <5D4F2D61-6DE5-480F-AE1F-E1DD377337D3@emagii.com>
References: <VI1PR0301MB2240D44AD76C24B2DBA960A3CE6E0@VI1PR0301MB2240.eurprd03.prod.outlook.com>
	<5D4F2D61-6DE5-480F-AE1F-E1DD377337D3@emagii.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 May 2018 12:43:26 -0700
Message-ID: <CAMKF1speJzyZaTP0rqL_gJcOf-BSCmXieR+ySy9Nu-uN-d4nGQ@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: Yocto Mailing List <yocto@yoctoproject.org>
Subject: Re: image-mklibs.bbclass fails
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
X-List-Received-Date: Tue, 29 May 2018 19:43:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, May 28, 2018 at 2:10 AM, Ulf Samuelsson <yocto@emagii.com> wrote:
> Checked out poky
> git checkout -b rocko origin/rocko
> export MACHINE=beaglebone
> . ./oe-init-build-env
>
> Added to local.conf:
> MKLIBS_OPTIMIZED_IMAGES_append = " core-image-minimal"
>
> Result:
>
> <XXX>/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line
> 133: i586-poky-linux-readelf: command not found
> ...
> Exception: Cannot find
> lib/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot/lib/ld-linux.so.2
> WARNING:
> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363:1
> exit 1 from 'mklibs -v --ldlib ${dynamic_loader} --libdir lib --sysroot
> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot
> --gcc-options
> "--sysroot=/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot"
> --root
> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
> --target `echo i586-poky-linux- | sed 's/-$//' ` -d
> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/dest
> `cat
> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/executables.list`'
> ...
>
> Looks like image-mklibs.bbclass has not been tested since the move to a
> local sysroot happened.

It seems class should be adding a dependency on
virtual/${TARGET_PREFIX}binutils-cross
if that fixes the problem, please send the patch if not file a bug
since there might be more to it.

