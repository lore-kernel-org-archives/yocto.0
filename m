Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED6ABE00C94; Mon, 29 Jul 2019 07:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49FCE00931
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 07:04:30 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id r6so55531346qtt.0
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 07:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Pehb2x5rlZJf3VxvGXdjKTtlwG5NywaZuGb1HXHFZlc=;
	b=oKH36Ehla52kHTJZxipmTVv85PS9MbOh394Xm/fqAutSGbWTrpnDElNotlU++tfhFN
	6MAMMhA/xSy2IQ2/+t+K2hHpngv8ru5p02p4dc4cEKiLJWJMkHTFwOApW1v+L0Xv6vML
	9+zPk8/ADVbJvmWfznMjMI6tBpU86/ucT2A0IQriSDsdVQWFXZ+ZVPT+cZRETVdU7J5J
	7wWwoPo/0P40adDEGeFBdjo3+45CfJZAWzO0+ejZRtljNvmNq/i9wtNGcRZZAM/BtM+W
	1Tf6HG5khm+WXKAqq52nyNue9hE8n5QiF6nlMH9nT5Z3ikx00Q5D6xsE0WzL2VV52co1
	n/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Pehb2x5rlZJf3VxvGXdjKTtlwG5NywaZuGb1HXHFZlc=;
	b=Nb44sQX35Z26ar8LwEfkS/SPAL8vSbKuacgrszB3xFFqvGfRK06U8rsJ+PODzul5nO
	S3zbnv9kKPVPIufm3Y53hJYOVV6RJA3kl0a0jAYJ52m1JIncqVlikOfYZtvttbQhNPxA
	eFgErbEOxptb/EOd7TM/Gs6+M6gA7uD+glDbIGRDPgX48D5Ul6a60z8AnZJazsxU1art
	tpV4KVN9ZiESfKyVwU8LqVJEJvYcG0gCqXoLARHRSyv1jCxNCi0F5Dm40mmZEV46wi+k
	sj5Vt12NTNm9OuYVsEDA1oa1KrKvI6M1G1coMftMjR/S6pnHFKYhFWCELBii0akaSjV6
	fEMQ==
X-Gm-Message-State: APjAAAV/fQKvm75cIWKQXV5l6SBHiFwN+bZWEX1h+iMdafZ+C6+tNILw
	cSQTVqRuGZcYRtj8cIHCRELkRRe2SDMLuEgbOyaBF16w
X-Google-Smtp-Source: APXvYqzwRw62jGp2/i943h0K0sMOEt60mmx/6omGcHlJtmWqxDar4a95D3ejqxVj55d3+kHXltQd8zJlbzCUAtkmDFE=
X-Received: by 2002:aed:3644:: with SMTP id e62mr75680383qtb.80.1564409069613; 
	Mon, 29 Jul 2019 07:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>
In-Reply-To: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Jul 2019 07:04:13 -0700
Message-ID: <CAMKF1sqd0=K6kqKit-DFSp6hJ_-E37x87NpXZjafBV66kCisJA@mail.gmail.com>
To: Shravan Singh <shravan@bluesparq.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Meta-raspberrypi
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
X-List-Received-Date: Mon, 29 Jul 2019 14:04:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2019 at 2:15 AM Shravan Singh <shravan@bluesparq.com> wrote=
:
>
> Hello All,
>
> I am trying to create a base image for raspberry-pi cm3(compute module 3)
>
> I am using warrior-21.0.1
> I downloaded meta-raspberry-pi from  https://git.yoctoproject.org/git/met=
a-raspberrypi
> I added the layer in bblayer.conf and I have changed the machine variable=
 in local.conf
> to raspberrypi-cm3
> I am using oe-init-build script to generate the base files
>
> Now when I run the command
> bitbake core-image-base
>
> I get the below mentioned error
> Error: No recipes available for:
> /home/blue/yacto/meta-raspberrypi/recipes-bsp/u-boot/u-boot_2019.07.bbapp=
end
> /home/blue/yacto/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1=
.0-omx_1.16%.bbappend
>
>
> Any help with this?

always post the Build Configuration printed by bitbake on top, When
you add layers ensure that the branches
match to core layer e.g. if you are using warrior release for
core/poky then use same branch checkout for
meta-raspberrypi as well.

>
>
> Regards,
> Shravan Singh
> (239) 243-0838
>
> Blue Sparq, Inc.
> 928 NE 24th Lane unit 4 and 5.
> Cape Coral, FL 33993
>
> IMPORTANT: The contents of this email and any attachments are confidentia=
l. They are intended for the named recipient(s) only. If you have received =
this email by mistake, please notify the sender immediately and do not disc=
lose the contents to anyone or make copies thereof.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

