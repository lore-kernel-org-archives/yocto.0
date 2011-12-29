Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14912E0030B
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 10:28:09 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so10005474qcs.35
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 10:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=pU8gFjNRWsp351Bifgz098YSQLvQ5e+/CWT2e/0Ity8=;
	b=ajYD1Wu+hG4oPX7WLVByx5DZpMaHtCrBcNsDq9ICsodKvlleBQkWPO19qcOD8tSDzP
	vLdLX989t86XNuOoxarD2VX2hNd52ao1JlpPsYFVZ2cAUs3n5cm3Yu+zfCMgMszuktRg
	09zSU0/15v6b/iTk7KADS50c+HZ5TkQ15HSBI=
Received: by 10.229.75.144 with SMTP id y16mr13527037qcj.87.1325183289266;
	Thu, 29 Dec 2011 10:28:09 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.187.141 with HTTP; Thu, 29 Dec 2011 10:27:48 -0800 (PST)
In-Reply-To: <CADzUK1+qXxsQ445f2nJkvCfEM9+nmFTkop74EMK8EDag5brNpQ@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
	<CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
	<CADzUK1Kqmbrt_o3Dr-YsLPaBg=SSjFZuyWJO_v_2rM7bcQHe9A@mail.gmail.com>
	<CABcZAN=OiDbQT28=R0tak0-1+EdeA-3YbkUVSDnzFZP6R9NOiA@mail.gmail.com>
	<CADzUK1KGOFCQbTFSU5FmjERuUMBft-m5FSgtgrX_NmDF1MfSzg@mail.gmail.com>
	<CADzUK1+qXxsQ445f2nJkvCfEM9+nmFTkop74EMK8EDag5brNpQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 29 Dec 2011 11:27:48 -0700
X-Google-Sender-Auth: SPEHnUjMy4qDI_saxEjZLpuyK74
Message-ID: <CABcZANm6JpOfwUAXiD4f6G9QhfA8daBi2VfaZUsEtDodoUaN3g@mail.gmail.com>
To: autif khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to require image recipe from another layer?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Dec 2011 18:28:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 29, 2011 at 11:14 AM, autif khan <autif.mlist@gmail.com> wrote:
> Can you please help me with setting up my recipes so that all the
> hello world apps are included when I use the following recipe.
>
> require recipes-sato/images/core-image-sato.bb
> IMAGE_FEATURES +=3D "helloworld"
>
> I am guessing that I would have to tell the hw1 recipe that it is a
> helloworld feature. How do I go about doing this?


commit f9f4416a8cfbd37c7d3a8eb19ee82820e2e6b38cAuthor: Chris Larson
<chris_larson@mentor.com>Date: =C2=A0 Mon Aug 8 16:09:37 2011 -0700
=C2=A0 =C2=A0 image: implement IMAGE_FEATURES
=C2=A0 =C2=A0 IMAGE_FEATURES is analagous to DISTRO_FEATURES and
MACHINE_FEATURES, for=C2=A0 =C2=A0 root filesystem construction. Currently,=
 the
only supported features are=C2=A0 =C2=A0 any defined package groups, as use=
d by
the oe.packagegroup python=C2=A0 =C2=A0 module.
=C2=A0 =C2=A0 Example usage:
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PACKAGE_GROUP_myfeature =3D "vim iptables"=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 IMAGE_FEATURES
+=3D "myfeature"
=C2=A0 =C2=A0 Signed-off-by: Chris Larson <chris_larson@mentor.com>--
Christopher Larson

