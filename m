Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6589BE009A0; Mon, 20 Feb 2017 06:45:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86E4E00867
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 06:45:21 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id 196so22935003wmm.1
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 06:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fE3E7v/+kzqwXULMAHkPd54TiJGYAV07wsU5JtLzNHw=;
	b=L1j0GotR7IE5AnsbxoUg6/ImRUgnUml/N5wI/bYaIcqUgIhizLzcmmaFIcrJ4P7nAD
	r1AmCaLZPgyzFPzm5tOMGyOmeCpXvfo7ztRzjwovm3eY0wmyN5zaOa65tBeVdbSsXtE5
	u18j0/YJ5VmgMMeDdrjVycVieRDUb9Um2nvXPfBUR2T3zoYkr8DpU8ABgTzsGiGkHTnj
	HDMX23qyFeaGtioeYvs02+aV0ftmSSigb/fioUc6JqoFQw7ifFgs/narQicHycV3IZMM
	TSxkJKzTLP67rC59pmYt/fK6U3ztLmXr6JvYslV0DBO496M+tshPqSEcGhOiXmCVYyGi
	am2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fE3E7v/+kzqwXULMAHkPd54TiJGYAV07wsU5JtLzNHw=;
	b=AXfnPQ6TyItGOpEOuduO37D0AeDNVtB66sFAR4xk6RNGxPdYZKK0ge+bRmApVmuqnE
	GpNheyXqtoOpIdE6yql8KOGHzatQyniusszFkrODbuU6tN5QJBwqQspd+T/xX40g+lwj
	uEkgA6ZrW+2DX/WUrHXVFbEOLT+OCI6JjUxLnlOUN8PHYkk5NU7vDWuTa2vbNWkaggRs
	+cVx3ZnEf6OPaQ9O3cwuIj+lLlnh6Z0oLnHUV8fyo4nIUFpvFlZSa1joCiC4JDqmcB6L
	pxiJucR3AvVqD2WJUGEXtEMzWjgp3JvthLO0R5j+BFvxFGLA77DepI3dilVbYV46jSdS
	knSQ==
X-Gm-Message-State: AMke39kx6FzfLakyV+XqcKaFIIwxH0K+6AhbOe27+Y9hhlthz7aG898JN8eeB6RlnjKeOW/CQbS7p7XbbAmJiA==
X-Received: by 10.28.197.142 with SMTP id v136mr19889523wmf.62.1487601920536; 
	Mon, 20 Feb 2017 06:45:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.170.139 with HTTP; Mon, 20 Feb 2017 06:45:20 -0800 (PST)
In-Reply-To: <DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8@dor-sms-xch01.digi.com>
References: <DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8@dor-sms-xch01.digi.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Mon, 20 Feb 2017 15:45:20 +0100
Message-ID: <CAAQYJAv+Sj-f7KhTnMPUmvObkw91piX+FUGtFL4Qvt-byzO3Fg@mail.gmail.com>
To: "Viguera, Javier" <Javier.Viguera@digi.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dependence from image type to image recipe
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
X-List-Received-Date: Mon, 20 Feb 2017 14:45:23 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 20, 2017 at 1:40 PM, Viguera, Javier
<Javier.Viguera@digi.com> wrote:
> Hi all,
>
>
>
> I need a bit of help to add a dependence from an image type to an image
> recipe that build and initramfs.
>
>
>
> A bit of background: I have an image type recovery.ubifs that boots using a
> ramdisk. The ramdisk is generated with a different image recipe
> (recovery-initramfs).
>
>
>
> So whenever I configure any image (core-image-minimal, core-image-sato) to
> generate recovery images, it should build first the ramdisk and add it to
> the final recovery image.
>
>
>
> In Jethro this was working file using IMAGE_DEPENDS in my custom
> image-creation class:
>
>
>
> IMAGE_DEPENDS_recovery.ubifs = " \
>
>     mtd-utils-native:do_populate_sysroot \
>
>     u-boot:do_deploy \
>
>     virtual/kernel:do_deploy \
>
>     recovery-initramfs:do_rootfs \
>
> "
>
>
>
> Now I'm migrating to Morty, and this does not seem to work anymore. When
> instructed to generate a recovery image, it does not detect the dependence
> on the recovery-initramfs image, and fails to generate the final image.
>
>
>
> How should I code such dependence? Remember is not a dependence from any
> other image recipe, it's a dependence from an image FSTYPE.
>

Hello,
I think you have just to adapt to the changes in oe-core [1]

     -recovery-initramfs:do_rootfs \
     +recovery-initramfs:do_image_complete \

Cheers
Andrea


[1] http://cgit.openembedded.org/openembedded-core/commit/?id=59a5f596ca29b1eb8283706e3c60fbb39f9c2c23



>
>
> Hope the description is clear enough. Otherwise please say so and I'll try
> to explain it better.
>
>
>
> --
>
> Thanks.
>
>
>
> Javier Viguera
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

