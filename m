Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69080E009E7; Wed, 12 Sep 2018 07:21:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FB98E00566
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:21:31 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id g13-v6so1196872qki.9
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6bbuStmBs8L5OF/v4B2tZwel8C2zwamY3N06UNSHSuU=;
	b=fDZfK62Fnox8wNB0j0s1S6QRlqdrbtAx1GKi+z68jEPRocmJ8mPDo6l5VZHgamLqeu
	A5EHfn0/3lNE7eEoiipudea0D+Uklbj13pgakM/nFfcokXJmJgOd50geofNtKFa6i2I8
	dXb51in2DLjZWnnaVm1rwNK/g8jdipC8vGUJE0KQTgFSVN3d2wHWhIhQUCJxeErssxTn
	pvmwUD7P8o0LB9wYhPDk+ZYvEVV5xW6lFsCSMWxmzV9Qe1m2FweT2+Y0UTCOnEzmWv/C
	bQRKUWbPsuX3khIQlKLiScYKrjz1pZXdhWFHw2gKJEa/aQ2H9Mac4cni0UrGSlcg26kt
	h0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6bbuStmBs8L5OF/v4B2tZwel8C2zwamY3N06UNSHSuU=;
	b=OQa+jH0h4ubHTZKUiFm4hL3ZL0JCmpb3nr7auMlKXUUgLh73QuIRrBXj4o65sbhirz
	yYYj2SctCl05qnWU/KZqVM8IshBfcoFv4PjmQVFKJi+shT/AaTq7/E3QwNor7GQPXZZP
	5JZs28KnpxzGBOSQlne0X33V4QUQIepAfiQSNSy6Q8vS0aS1elRl7JGxdVojeZH06o7D
	VOykC0GHNB0uYmcEBfRKTL3KUQDKqlv6RqCxSnj863ORcDr1BBEpVCGFIINii8SKQasG
	3oGFYk8XZHS0s4OOY4TCab9t7OpgZ081ikiXKzJDffu4+ZaNriApXjswLfKQtVlWEpVO
	pr2w==
X-Gm-Message-State: APzg51BoiuSm9j3SyhOSS3k9IXuRhMcHB+MnZ/OC1fx4tVB2Ca4u6PAd
	Z03zAorNGGG8A1SI7PZ7/jEWzsajsQ3KvE+Mv10=
X-Google-Smtp-Source: ANB0VdY2QF/70WII1pQfW9r8vgbta7iiPUkUT63rFFXS3tY12zUf6d0El/2KEXPzzRsoQ0Dpwi0w783oOZ6ldF3nGiU=
X-Received: by 2002:a37:c5d2:: with SMTP id
	k79-v6mr1627313qkl.206.1536762090471; 
	Wed, 12 Sep 2018 07:21:30 -0700 (PDT)
MIME-Version: 1.0
References: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
	<2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
	<op.zo7vnwb2mnlnty@pc-mls.ecafaros.local>
In-Reply-To: <op.zo7vnwb2mnlnty@pc-mls.ecafaros.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Sep 2018 07:21:04 -0700
Message-ID: <CAMKF1spcgQt7Rm39iJzqhLnrT6==COhFsz-9a=JHf1q5L_b-Mw@mail.gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry]rpi-config
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
X-List-Received-Date: Wed, 12 Sep 2018 14:21:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2018 at 12:12 AM idealsim <idealsim@laposte.net> wrote:
>
> Hi, this patch didn't resolve this issue.
>
> On my image, i just add rpi-congig on IMAGE_INSTALL +=3D
> The recipe is builded witout error but after can't build my image !
>

ideally this should no be done because this recipe inherits nopackage
which means
it not meant to be added to images as package.

> regards
>
> Le Tue, 11 Sep 2018 18:43:22 +0200, Khem Raj <raj.khem@gmail.com> a =C3=
=A9crit:
>
> >
> >
> > On 9/11/18 8:17 AM, idealsim wrote:
> >> Hi i'm trying to build an image for a raspberry-pi 3 on branch sumo bu=
t
> >> i have an error when i try to include rpi-config. See the issue under =
:
> >>
> >> ERROR: Task do_populate_sdk in
> >> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/reci=
pes-xxxx/images/console-image-xxxx.bb
> >> rdepends upon non-existent task do_package_write_rpm in
> >> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspberr=
ypi/recipes-bsp/bootfiles/rpi-config_git.bb
> >>
> >> ERROR: Command execution failed: 1
> >>
> >> Do you have an idea how i can resolve this please ?
> >>
> >
> > can you try this patch and report back if it helps or not
> >
> > https://github.com/kraj/meta-raspberrypi/commit/095f642e7c064b44d128549=
66468cc5a2699d8fd
> >
> >> Regards,
> >>
> >> Micka=C3=ABl
> >
>
>
> --
> Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

