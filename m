Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C7E4E00DD7; Wed, 24 Jul 2019 12:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10306E00D90;
	Wed, 24 Jul 2019 12:11:20 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id k10so46685568qtq.1;
	Wed, 24 Jul 2019 12:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6jkPtKIf1/4WLlpL1lVk5ZdC40wd1xhorFzPmwOPVHk=;
	b=X3+t6sSaPAqI86PVa5NpPJWi6/Lz23BktjNLslGmvtN3z6FnBD4kNSTfTZSFu/AQSI
	TJnY4IMq6hcsn4SZtMiOFKKKMHR2cxgEZsg3W6dHbeKYt6nfv9H7XQVcO5ku6524LRUr
	Kx7mI/L0WX65/9GJ43wSBUDXfGaG768f4c3tQ/Vu1ZFlGt1ORQZvMGfzCJ/XizQ91Flt
	4XiOFkGJRAl4qqHpJwE0M9zouDOBlmo8rGo4uDQaEaeP+EuQ41w6R9Izw0rqun4v29SU
	KNph8O2AA+zDn0aPYOv9BMGvBE34vC/vhqD+tn8e3gu2AdqH3ASlfRjVSIjhAsg7uhI6
	7gDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6jkPtKIf1/4WLlpL1lVk5ZdC40wd1xhorFzPmwOPVHk=;
	b=aURfdFC9bJFDvc8O05oHvw4yV8dU6KLPOq6vexoWJYBSbBW8DN35fDhhdSXxEYyjYn
	gyrItBdU7hBk5qI0u3ErBx6zn/jA3LoIWuqxYk+GBk+vSXzNhI8Pl4cs6Ue66QUHPkGw
	yiiDwy3CGRynmCknSuXLc1NIX3qIvCYU4ARxFbQzpT7A9wd6qpm/346Tp3/l77Sh9C5k
	LZLq2L+T1Levqz/BLbPKUZQgxg9okH8aqMfUbv3+WqY9Ei62AG6e1/NzmNBDoGKZm6DT
	5Bc7mXakenz7mrWQU76l9y/j4WpDmoSpOdyGRQNWl9VuetAYQzgqNHNE8Oq5ALv6ZgqE
	zWEQ==
X-Gm-Message-State: APjAAAW9tW7hMtY6XEJcEggnCUouNmejie5RgDcrHy4RYkC2rH5YuxOh
	3zJJCcTU9J0xl/Mfibo7kkwdSUqgwwR/uf9L3rnEALFrPcU=
X-Google-Smtp-Source: APXvYqxDsKiBNrfZrg7TfToS+5IT9y5fylVAiIqThPPYVRZcjmN5Tu3/iHnZRLgb5l43qlPFSDPa9xVUS4lVCYhgA4A=
X-Received: by 2002:ac8:290c:: with SMTP id y12mr57283835qty.141.1563995480378;
	Wed, 24 Jul 2019 12:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <em8e44e63f-388a-4ff6-ace9-d28ccd87f383@andys-imac.local>
In-Reply-To: <em8e44e63f-388a-4ff6-ace9-d28ccd87f383@andys-imac.local>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 24 Jul 2019 21:11:09 +0200
Message-ID: <CAGAf8Lxd-9COj_=9bnmxxi9uXcXj-PYjik=PS4AODaapxUrdiQ@mail.gmail.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: meta-ti@yoctoproject.org, Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Building for AM335x with meta-ti and meta-qt5
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
X-List-Received-Date: Wed, 24 Jul 2019 19:11:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I am trying to build a Yocto (warrior) image for the AM335x using meta-ti
> and meta-qt5 that will render directly to the GPU.  Initially this will b=
e for the
> Beaglebone Black but then ultimately will be for a custom hardware platfo=
rm.

For the starters, check this out! Not really what you want, but maybe
good starting point.
https://github.com/ZoranStojsavljevic/bbb-yocto
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh

Zoran
_______

On Wed, Jul 24, 2019 at 7:54 PM Andy Pont <andy.pont@sdcsystems.com> wrote:
>
> I am trying to build a Yocto (warrior) image for the AM335x using meta-ti=
 and meta-qt5 that will render directly to the GPU.  Initially this will be=
 for the Beaglebone Black but then ultimately will be for a custom hardware=
 platform.
>
> In broad outline, I think, the software stack needs to look a bit like:
>
> Qt Application
> QtBase, QtWebEngine, etc.
> Qt-OpenGL
> ti-sgx-ddk
> AM335x GPU
>
> I have included meta-ti and meta-qt5 into my belayers.conf and added ti-s=
gx-ddk-km, ti-sgx-ddk-um, qtbase and qtwebengine to IMAGE_INSTALL_append.  =
When I try to bitbake core-image-minimal I start to get a failure to compil=
e ti-sgx-ddk-km with a number of, what appear to be, warnings of the form:
>
> KBUILD_EXTRA_SYMBOLS=3D
> | grep: /home/me/Yocto/BeagleBoneBlack/tmp/work-shared/beaglebone/kernel-=
source/include/linux/amba: Is a directory
> | grep: /home/me/Yocto/BeagleBoneBlack/tmp/work-shared/beaglebone/kernel-=
source/include/linux/avf: Is a directory
>
> It then ultimately appears to give up with:
>
> | ******* Multiarch build: no
> | ******* Primary arch:    target_armel
> | ******* Secondary arch:  none
> | ../config/core.mk:513: $(KERNELDIR)/vmlinux does not exist. Kbuild may =
fail.
> | eurasiacon/build/linux2/toplevel.mk:230: eurasiacon/build/linux2/module=
defs/target_armel.mk: No such file or directory
>
> Is there a specific kernel I need to define in local.conf that the GPU dr=
ivers build against?
>
> Also, is there any specific configuration I need to do in order to get Qt=
 to use the SGX OpenGL drivers?
>
> I have had a search on the web but not found anything for recent Yocto ve=
rsions, only very old stuff.
>
> -Andy.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

