Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BB47E00C06; Mon, 29 Oct 2018 06:33:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EC2CE00718
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:33:23 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id q12-v6so5250832wmq.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=XK2HNMVRHHTmPYsc1lfSOL4GdaA812o61oUirmjlQRQ=;
	b=lAq9VSr3vNYvRAtk1JlTN6H8oY8gnSVw/PQ14ETrPUFFvjQcZKq86oKnIZzoNx9QAX
	bRdXtdAq3lB9ce8uNqFYFWmLlYMrOqEvdzUtd11m/N68ZN/mQEUoNV+o0qIXpvije8/2
	qsJx2U1lZ7pHcdwpWIHNmgM+1MM/PRun7QwMWZ/YNjxwHeFdAzr6KHKDSG3giQnChEPB
	qSQpDor9Af4URzZRoOz37KGWy+8r5EQEfXQ9og5acL8kIoVQ4fqmYzgNJ+JQ0bpRhgzf
	sVRQfOzJDrs/29aqdLCE7oIUUpzg4ozGpGLhT4ybEXO0jngAg8EmyrZHdYm7mzRbGnyG
	T7Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:from:date:message-id
	:subject:to:cc:content-transfer-encoding;
	bh=XK2HNMVRHHTmPYsc1lfSOL4GdaA812o61oUirmjlQRQ=;
	b=c5Y6rcwVsw1vmVr/12pe+TtJMmTrID74qRqg+jaU1qZklkAJTSqgYvkgZ2Xob8aFJh
	JcbO5NAmDf9hYAMbiNIhJ2wh4G4lT0XqnaMZw7+MPlmDXuDKRqXHHhztscsXAuddbxQv
	jlShB8jHpOVyAbMBbozhEAQSKHBj3RI4G39A0WbixnPkmPQn8cGf9A9iSpunFfgYb9FQ
	OW+jxpPpNR7TtZbx+8bu1/QJBWMCnJWsYfNCZl4AnKzLUVFNe/nYTWVTiHOD2/GE+Wmu
	a/f4kQHS8OWwOigygIdMvpE2EaXltSarP8VZL20aL47uFZV22GWwteWzzk5CW8O7Y7wS
	Bwhw==
X-Gm-Message-State: AGRZ1gKZZHlbtsVIXL1CnR6a81mAveEGmx5Kd8a2kmoZw8CeF3YTEC8R
	NUbSS4j9yTKBFCnDm00njxUcyHCZL3mOrve+sS0=
X-Google-Smtp-Source: AJdET5clMDV5CwpH38cEmsvw56eihh2cHJPwi7hpbm1mLWXEx9ZrED9WuHd36tvlNJ2+6QJID8hLxXTxOhL2i32HBSU=
X-Received: by 2002:a1c:545e:: with SMTP id
	p30-v6mr4787663wmi.69.1540820002287; 
	Mon, 29 Oct 2018 06:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
	<CAKYr3zyS6-wQ48iyz5-5WQ2mLWdaqHLh88rK-NTU12dDAYMg-w@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 29 Oct 2018 20:32:46 +0700
Message-ID: <CAKYr3zzvB6Ky4Ku7CBqHGr8AUVBp1=az26HmyWa_2hYo6vJvJA@mail.gmail.com>
To: zoleelikesdebian@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: adding own shell script to the image
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
X-List-Received-Date: Mon, 29 Oct 2018 13:33:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 29, 2018 at 8:32 PM Outback Dingo <outbackdingo@gmail.com> wrot=
e:
>
> SRC_URI =3D "file://testscript"
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/file:"
>
> and file should be files

crap ... sorry for the top post


> On Mon, Oct 29, 2018 at 8:28 PM Zolee K <zoleelikesdebian@gmail.com> wrot=
e:
> >
> > Hi All,
> >
> > I'm struggling with this:
> >
> > The error message:
> >
> > /home/..../recipes-z/testing/testing.bb: Unable to get checksum for tes=
ting SRC_URI entry testscript: file could not be found
> > Which I don't understand, since the file is definitaly there:-(
> > Could you please help me out with this?
> >
> > #############################################
> > this is my test folder:
> >
> > testing/
> > =E2=94=9C=E2=94=80=E2=94=80 file
> > =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 testscript
> > =E2=94=94=E2=94=80=E2=94=80 testing.bb
> > #############################################
> > cat testing/testing.bb
> > DESCRIPTION =3D "test script"
> > LICENSE =3D "Z"
> > SRC_URI =3D "file://testscript"
> > SRC_URI[md5sum] =3D "e51375ed8c617ea7a6ac39b81c757e39"
> > do_install() {
> >     install -d ${D}${bindir}
> >     install -m 0770 testscript ${D}${bindir}
> > }
> > ###############################################
> > cat testing/file/testscript
> > #!/bin/sh
> > echo "hello world"
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

