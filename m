Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2402FE0095C; Wed, 15 Jul 2015 12:49:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F309AE0086E
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 12:49:40 -0700 (PDT)
Received: by iecuq6 with SMTP id uq6so41403007iec.2
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 12:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=4bYhDS17lqhqA7Z1s+qeDfWnoOe0NzMm9na32ewZXwM=;
	b=a51GOTFM+JUZRXi8qMmZLimY3NhAd0cZahI1GIHVVZWUKIqy215Gcfrs0JbldCmfZd
	BxjgssIWnVJrRgXxrXxfS1FDsut0S5uHu1O6ESjwPvV9oKKgGyS5FEpSNf0YqyCagNqD
	si4WjB6oP7m3O0YxOyx+AzkvBBnqepR+d+utypkg1KwsOjZGnzAsMJD/NMFJZRLex7cL
	RQE3atdJvgW1j27scmkBZOThpdZ0AFolmjYiTTcOftpOzUQVseY7ldbO4EdT2W9z4Fhc
	Hy4B6ndSsSkHUfsO4XPrEe+m8GXNx6a3WSIRxTJwvtXjGzRy2YSLKaZS1czEVWFIB3Bk
	rf4g==
X-Received: by 10.50.28.78 with SMTP id z14mr28654577igg.61.1436989779430;
	Wed, 15 Jul 2015 12:49:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.83 with HTTP; Wed, 15 Jul 2015 12:49:10 -0700 (PDT)
In-Reply-To: <18f7ce035aef414a9f831b93f7891401@MDBA.ALTICAST.COM>
References: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
	<18f7ce035aef414a9f831b93f7891401@MDBA.ALTICAST.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Jul 2015 12:49:10 -0700
Message-ID: <CAMKF1sonpFNZJo4W6hr9tZgwYFLK=FQTYRm-nqonzWgqYMJPyg@mail.gmail.com>
To: Dave Kimble <dkimble@alticast.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using gdb with externalsrc
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
X-List-Received-Date: Wed, 15 Jul 2015 19:49:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 15, 2015 at 9:36 AM, Dave Kimble <dkimble@alticast.com> wrote:
> We've got a component of an existing Yocto project under active developme=
nt
> that we'd like to debug with gdb.
>
> We=E2=80=99ve added these features to get gdb and the debug symbol packag=
es into the
> image:
>
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug"
>
> IMAGE_FEATURES =3D "ssh-server-openssh dbg-pkgs"
>
>
> We=E2=80=99ve added these variables to build the component under active d=
evelopment
> from the local code:
> INHERIT +=3D "externalsrc"
> EXTERNALSRC_pn-[component] =3D =E2=80=9C[local source code path]/[compone=
nt]=E2=80=9D
>
> All seems well, as the build succeeds and the component in the image
> reflects local code changes. However, the component source code never mak=
es
> it into the image, so it can=E2=80=99t be referenced in gdb.
>
> Is there a secret to using dbg-pkgs and EXTERNALSRC together?

Can you check if -dbg package for extrnalsrc component is installed ?
secondly, does the debugging work if you dont isue externalsrc for
this particular component.

