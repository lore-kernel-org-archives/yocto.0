Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99323E009AA; Mon, 29 Oct 2018 06:32:45 -0700 (PDT)
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
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1562BE00872
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:32:44 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id d10-v6so8709206wrs.5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=cNse6pM/F9tO4wGLwUn+xKD1LzQJRsGb2VwqD+2T6to=;
	b=vWqLTWhpenWFU2X6Mym78J9tfP7yRLp6K4cPpFPjvANLSq2rxsvonYy+Id9nUGaOE1
	KU3SX5jNl1vM4yn0M7TM3wkcYq7yWbkd9vp3ZxtyuyEtRfQXZIcNAxP+KLFbHw/3SmFr
	yF+I9vcBdbWYH7mmSBw2Ok8g5v6izHG1wXACZmd7U3VU1u4Kuj+LegcWnu3H9c/fTmf9
	/123BuLYTPZgw9Lz1iMFcLjqJDiN3cd+Z+YA/3pzkYQ2vkeAS28Ej4OHwLBt1bknT/sO
	RY3QiC0WF6rQKKi1Rds2FOLY4tEfBXDeXZjTZrL+nAcn8EKWWRoi9QDS98kOQ8onIrk2
	i69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=cNse6pM/F9tO4wGLwUn+xKD1LzQJRsGb2VwqD+2T6to=;
	b=NNmpgEDs7l7wJGWuF9w0doefqe1FKSlFh8LVZL5wmGJLfghU8xdmPmLTTKTYJYItj4
	mbdGNOX/qr4h0NHbfVQLXBv/d1n8FbptUJZKGZupig4j6TLQeqBxhwwSfD8iYXCYjGPY
	ia6UNKpoxo3HyaefpfC2pylcMdlhXn4tQU0FHD0aUsNewJyGXAMxZKnMiJWM78O2B4ta
	i+KhYW7jAnCJG740di1+Ua/5QXEvhpLhD0bi+ldN+PvwN5Wob+WalRoeVFOqlj3YwfNg
	auaXZErJLkEzVY3S4gZ91gmA67IRjm+t2nIVAXWDqeIOM0fou0qHDIa8UWPsVAewGMhy
	09cg==
X-Gm-Message-State: AGRZ1gIKjEsYfDNUqnXNkwPd5lpAgaRsOPkq8sWBBz7BbMVA0TZWRxCR
	K3w3Z4rSqTcwrXs/m/Zf13N15R7SUgwJ1MTyGa8=
X-Google-Smtp-Source: AJdET5c5qySb9a/KNsiYQafn3LuPN+lbNdorGmBerB36XXTH12qV4TKaYGyp/ATpP32b1JSXBbSKzRkVr8XWnKqziQ8=
X-Received: by 2002:adf:8425:: with SMTP id
	34-v6mr13387413wrf.153.1540819963755; 
	Mon, 29 Oct 2018 06:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
In-Reply-To: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 29 Oct 2018 20:32:07 +0700
Message-ID: <CAKYr3zyS6-wQ48iyz5-5WQ2mLWdaqHLh88rK-NTU12dDAYMg-w@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 Oct 2018 13:32:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

SRC_URI =3D "file://testscript"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/file:"

and file should be files
On Mon, Oct 29, 2018 at 8:28 PM Zolee K <zoleelikesdebian@gmail.com> wrote:
>
> Hi All,
>
> I'm struggling with this:
>
> The error message:
>
> /home/..../recipes-z/testing/testing.bb: Unable to get checksum for testi=
ng SRC_URI entry testscript: file could not be found
> Which I don't understand, since the file is definitaly there:-(
> Could you please help me out with this?
>
> #############################################
> this is my test folder:
>
> testing/
> =E2=94=9C=E2=94=80=E2=94=80 file
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 testscript
> =E2=94=94=E2=94=80=E2=94=80 testing.bb
> #############################################
> cat testing/testing.bb
> DESCRIPTION =3D "test script"
> LICENSE =3D "Z"
> SRC_URI =3D "file://testscript"
> SRC_URI[md5sum] =3D "e51375ed8c617ea7a6ac39b81c757e39"
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0770 testscript ${D}${bindir}
> }
> ###############################################
> cat testing/file/testscript
> #!/bin/sh
> echo "hello world"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

