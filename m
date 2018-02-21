Return-Path: <philippe.gislard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE7FE00816; Wed, 21 Feb 2018 05:45:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.gislard[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52AB3E00816
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 05:45:38 -0800 (PST)
Received: by mail-wr0-f193.google.com with SMTP id n7so4646824wrn.5
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 05:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=KW7E7Btn1YeBeLeH1nkaTEfF2Jc/UjJThzZHBgvfjW0=;
	b=jndAk3pWX7OSw9jffYnFeakrRx41Dtc5UsXdD01dFXZqatS6keZh1ViLqrihu9BPLG
	yO9e9Hnf00InN/6OOg9RUBXuZ6bE9+w4EjCs3/O9nLJYOsxwQF7kPm83Ecx3lSfhcNu/
	Hq8NaYu3QNxQhOvKwIQUV+8cB7yA6bE0ouF8voIrGnyrnhjOqhY2QgIqUXt/qddy3Zcv
	zCf/kErFGN3s0kdHVW/EI6ZQzPIl34fhb5LAwAxy2onhKi0JMRJEF98afJOBVBwcaN9A
	AeiJltey+nKu7Xfl98FGem5iO8Sg/jn+IJmjOR0HIZhFCKPmPHO6zU5pbP4eQ3B3wPHc
	96lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=KW7E7Btn1YeBeLeH1nkaTEfF2Jc/UjJThzZHBgvfjW0=;
	b=j40XMTHofVTvx+e2fKMPmW2UD3vuV/sftjLek/UsTXqMtgb+uSZjQGViamAOlbgND1
	sjeyk2s2J54oWqayIWkreD52gzp7N2YlzoZHBTx5a8HmcoROBo5T8nH2D7F8ezQufUTI
	EoswX01V0F8zRZ32KLK0CvI5V2aq/ZdO/qBcbU/lA0MNSFlHBnrDfC6o8NDAJtH98NA5
	RcmJ3I90OOp2+yOFFxm6h2K9ba7QxOFuOPimO5GB5+BT3BhU40kfIFRF1Nb0lLdLTmkb
	rUNxT+KABSrF6+qDmP0B6UCCRpwApGNfX9gIjNW8MMWj/Eulh+dg8cm+NGvoI7GeGbtu
	xLqQ==
X-Gm-Message-State: APf1xPCpAUS+9B2gXlwJtlMvHVtmr3sJ968vB7CFKuKXaBXxesprfoDY
	4gpNRAyx4ElHvomcTXhhiyg2BfRTTYMa5q78Uwc=
X-Google-Smtp-Source: AH8x2261Bj9lDgig6dmuyN7ZZJCySLYELpUUa3t68YdMP4pbKvDtzmF2lFncP+9lZaBNUmegMk6Xa5FBlb8+7MUalvE=
X-Received: by 10.28.122.12 with SMTP id v12mr2036843wmc.66.1519220737806;
	Wed, 21 Feb 2018 05:45:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.192.139 with HTTP; Wed, 21 Feb 2018 05:45:17 -0800 (PST)
In-Reply-To: <cc0b03a0ba51424bb8245fd4fbbe9ba3@atgrzsw1693.avl01.avlcorp.lan>
References: <cc0b03a0ba51424bb8245fd4fbbe9ba3@atgrzsw1693.avl01.avlcorp.lan>
From: philippe gislard <philippe.gislard@gmail.com>
Date: Wed, 21 Feb 2018 14:45:17 +0100
Message-ID: <CAM0bAiWkiBmwrqw7TrRj3L1bCiY0VH3H3oqc4DvkQpevOBnSQw@mail.gmail.com>
To: "Staffa, Christian AVL/DE" <Christian.Staffa@avl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: behind corporate proxy
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
X-List-Received-Date: Wed, 21 Feb 2018 13:45:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-02-21 14:11 GMT+01:00 Staffa, Christian AVL/DE <Christian.Staffa@avl.c=
om>:
> Hi all
>
>
>
> I have got a problem with proxy settings and the yocto build system.
>
>
>
> I already read the =E2=80=98Behind a Proxy Guide=E2=80=99 and generally i=
t works.
>
> But when it comes to build the linux-yocto package the buildsystem tries =
to
> clone a repo with the git:// scheme.
>
> This results in connecting to git.yoctoproject.org:9418 but this port is
> blocked by the corporate proxy and causes the build to fail.
>
>
>
> Had anyone the same problem? Is there a way to fetch the repo via http(s)=
?
>
>
>
> Regards
>
> Chris
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Hi Chris,

I had the same kind of problem.
I fixed it this way (not sure it's the best solution):
=3D=3D=3D
$ cat ./meta/recipes-bsp/firmware-imx_%.bbappend
SRC_URI_remove =3D
"git://git.freescale.com/imx/imx-firmware.git;branch=3D${SRCBRANCH};destsuf=
fix=3D${S}/git"
SRC_URI_append =3D
"git://git.freescale.com/imx/imx-firmware.git;branch=3D${SRCBRANCH};destsuf=
fix=3D${S}/git;protocole=3Dhttp"
=3D=3D=3D

Note: the git server must support the http (or maybe https) protocole.


--=20
Philippe GISLARD

