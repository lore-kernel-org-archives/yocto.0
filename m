Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63CE4E01514
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 07:28:58 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id c13so7236621vea.7
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 07:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=+NavOrUhJWUyyGRSkv8+I9ara1LhTcH+dsUYuXAO2KA=;
	b=cVNGUe1CD7dBm4y7K41IdG8bqdn2MifRjaWwNUA1Osu1csFkYGoURN3y2PNxcgX4Ba
	NzLdYilnNmeADucII75VUQxrbtom+5fAfRm2OUTcdiL2pQ4LPQedNCn6vf/HYZjDtpLz
	cDmef5su3tcUL8qWP1o+0A5mN7gZSdg0dMMBsgl2qXmDVUYPtuVaRjh663Vz6M+iXeAE
	RO8ZQEeEIN8OVfCB1OBmBlYNr+NDPlx5tyjoVDGXSsh2kkk71nM0Q4x9nRRUSD6HaIKE
	1YzD4EdfoyKAibybfn9ZYJ71hWMsCFCdSO3Zr72urLDIwgmbl66En7ox8PTfKteR4bzb
	KZuw==
X-Received: by 10.52.164.227 with SMTP id yt3mr18381596vdb.107.1373552938440; 
	Thu, 11 Jul 2013 07:28:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Thu, 11 Jul 2013 07:28:38 -0700 (PDT)
In-Reply-To: <7941E07E1E020448937ACA7D4279E632018398AF5C63@powerhog>
References: <7941E07E1E020448937ACA7D4279E632018398AF5C63@powerhog>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Jul 2013 15:28:38 +0100
Message-ID: <CAJTo0LZQsZxN=Hobd3DYonKc=zUbYRGfEdP8FWbGvXOQyTSxaw@mail.gmail.com>
To: Brian Karcz <briank@russound.com>
X-Gm-Message-State: ALoCoQlzGH0W1uqBWTjKPuRprt0Iwa9O4Rv7pRIXuwF+JI3F8CnMGWpVN4gVaxwU4ctpItkwr1zw
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: only -dbg and -dev packages being built
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
X-List-Received-Date: Thu, 11 Jul 2013 14:28:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11 July 2013 15:20, Brian Karcz <briank@russound.com> wrote:
> I created a recipe (xyz) to assemble together an externally built executa=
ble
> and some configuration files that are local to recipe. It consists of a f=
ew
> SRC_URI specifications for the files and a do_install function to place a=
ll
> the pieces in the root filesystem. When I bitbake the recipe, the only
> packages that show up in the tmp/deploy/ipk area are the xyz=E2=80=93dbg =
and xyz=E2=80=93dev
> versions and not the plain xyz version. Because of this, when I add xyz t=
o
> the POKY_EXTRA_INSTALL variable of my image recipe, the do_rootfs task fa=
ils
> because it can=E2=80=99t find the xyz package.

The usual way to debug this is to read the log.do_install and check
it's installing where you expect, and dig around the temporary
directories in the work directory.  Specifically, the files you
install in your do_install() should end up in
tmp/work/[arch]/[package]/image.  If image/ is missing files your
do_install() is probably broken, otherwise you FILES_* are probably
broken.

Ross

