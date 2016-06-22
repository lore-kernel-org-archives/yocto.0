Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A16A7E009CF; Wed, 22 Jun 2016 05:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2014E009BF
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 05:57:10 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id t7so7639382vkf.2
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 05:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=CLxi7D+eVqV9NizxzjQLTmqXR2orgkqIzAhF+3C6sSM=;
	b=RyR6xlGBZwbnRltf9ObivcDOm2vVyqRWwGmoy7WcpF/82JwC3RGW5fX3Lxu0bgWiI8
	3xO2elTh3tjxyksEMu0hNMvdqEzpDS129//5z7d22kkslQfkvbxvOKxjkeKhLtOTMXl8
	nIHCSK3o6IR7k/bpPfnI4sAK3hEC7sKmM0K4NIncsOt11pNba5NNYGhqA5r8cVZZY6Sr
	+D09xaG5bTtmsVYoIEie1eC3/nfNR7KBRp4uNyNxNdaAevEbI2TwgUguGBDtUICnyVLj
	AYyNr80SxGjlUnxN+RprX7ri/5DWB4Vq7PWOk6AtgUTOKEXUqY8A5+zU/SHYZSRrd3fo
	RQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=CLxi7D+eVqV9NizxzjQLTmqXR2orgkqIzAhF+3C6sSM=;
	b=KZZXmECEtgNYSOzcGVDy7qaXTdUOk/LPDKmLzVLfb+dZUf2vhXpfV9dHixVLiXxI0u
	ueBcuArAqv4x/gwZ3FZJB9Ao+h3eUWe0RZVBmWHwisq/ulZ+pJvCcBBAbOEMflW1sjKF
	qad+EY2HAaYpjvENQSVG+eeHUf+/WoWXUspNngMsXTTvy3LhZ2Og6pWdZAa7tSOLlEFt
	dm8GoloSBvh6kuBoammSZc0xYVkksvlmguLbYW6kjHxOAVgBS9K4gluE4ShoRHWNSRjJ
	AcFBiBEcbLF8YYl2yumnza4/CQS245c/sRoRQCXaYOY1hPUwsUIZ6/JR8kBdQFWqFb40
	IlSw==
X-Gm-Message-State: ALyK8tJS30w/ImGgYMTsuSm1fHfoLrAN8K32L7eU12K8lRSR42rI9VU+8RUAwsK+ZFV0xw+byKuMlixPcVfGMQ==
X-Received: by 10.159.41.229 with SMTP id s92mr12673060uas.73.1466600229628;
	Wed, 22 Jun 2016 05:57:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 22 Jun 2016 05:57:09 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1606220556090.21955@localhost.localdomain>
References: <alpine.LFD.2.20.1606220556090.21955@localhost.localdomain>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 22 Jun 2016 09:57:09 -0300
Message-ID: <CAF3SDA56FGwK7inSaOxdr9s4gZMX6V65WzNmjmjafJkebT72YQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there really an "INITRD_IMAGE" variable?
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
X-List-Received-Date: Wed, 22 Jun 2016 12:57:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Well I'm in Daisy and I can see that variable, so I think that the
documentation is out of date :)

[geckos@csi24 yocto-daisy]$ find sources/ -name "*.bb*" -exec grep
--color -H INITRD_IMAGE {} \;
sources/poky/meta/recipes-extended/images/core-image-testmaster.bb:INITRD_I=
MAGE
=3D "core-image-testmaster-initramfs"
sources/poky/meta/classes/image-live.bbclass:INITRD_IMAGE ?=3D
"core-image-minimal-initramfs"
sources/poky/meta/classes/image-live.bbclass:INITRD ?=3D
"${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE}-${MACHINE}.cpio.gz"
sources/poky/meta/classes/image-live.bbclass:do_bootimg[depends] +=3D
"${INITRD_IMAGE}:do_rootfs"
[geckos@csi24 yocto-daisy]$

2016-06-22 7:03 GMT-03:00 Robert P. J. Day <rpjday@crashcourse.ca>:
>
>   (asked about this on the OE list recently, but no response, so i'll
> harass this list.)
>
>   poking around initramfs content and recipes, and noticed this in the
> latest poky checkout:
>
> $ grep -rw INITRD_IMAGE *
> documentation/ref-manual/ref-variables.xml:        <glossentry id=3D'var-=
INITRD_IMAGE'><glossterm>INITRD_IMAGE</glossterm>
> documentation/ref-manual/ref-variables.xml:                INITRD_IMAGE[d=
oc] =3D "When building a "live" bootable image (i.e. when IMAGE_FSTYPES con=
tains "live"), INITRD_IMAGE specifies the image recipe that should be built=
 to provide the initial RAM disk image."
> documentation/ref-manual/ref-variables.xml:                    contains "=
live"), <filename>INITRD_IMAGE</filename>
> meta/recipes-extended/images/core-image-testmaster.bb:INITRD_IMAGE =3D "c=
ore-image-testmaster-initramfs"
> $
>
>   so ... a bit of documentation on the alleged variable INITRD_IMAGE,
> and a single assignment, and no usage.
>
>   but if i drop the requirement that it be a word:
>
> $ grep -r INITRD_IMAGE *
> documentation/ref-manual/ref-variables.xml:        <glossentry id=3D'var-=
INITRD_IMAGE'><glossterm>INITRD_IMAGE</glossterm>
> documentation/ref-manual/ref-variables.xml:                INITRD_IMAGE[d=
oc] =3D "When building a "live" bootable image (i.e. when IMAGE_FSTYPES con=
tains "live"), INITRD_IMAGE specifies the image recipe that should be built=
 to provide the initial RAM disk image."
> documentation/ref-manual/ref-variables.xml:                    contains "=
live"), <filename>INITRD_IMAGE</filename>
> meta/recipes-extended/images/core-image-testmaster.bb:INITRD_IMAGE =3D "c=
ore-image-testmaster-initramfs"
> meta/classes/image-vm.bbclass:# Using an initramfs is optional. Enable it=
 by setting INITRD_IMAGE_VM.
> meta/classes/image-vm.bbclass:INITRD_IMAGE_VM ?=3D ""
> meta/classes/image-vm.bbclass:INITRD_VM ?=3D "${@'${DEPLOY_DIR_IMAGE}/${I=
NITRD_IMAGE_VM}-${MACHINE}.cpio.gz' if '${INITRD_IMAGE_VM}' else ''}"
> meta/classes/image-vm.bbclass:do_bootdirectdisk[depends] +=3D "${@'${INIT=
RD_IMAGE_VM}:do_image_complete' if '${INITRD_IMAGE_VM}' else ''}"
> meta/classes/image-live.bbclass:INITRD_IMAGE_LIVE ?=3D "core-image-minima=
l-initramfs"
> meta/classes/image-live.bbclass:INITRD_LIVE ?=3D "${DEPLOY_DIR_IMAGE}/${I=
NITRD_IMAGE_LIVE}-${MACHINE}.cpio.gz"
> meta/classes/image-live.bbclass:    initrd_i =3D d.getVar('INITRD_IMAGE_L=
IVE', True)
> meta/classes/image-live.bbclass:        bb.error('INITRD_IMAGE_LIVE %s ca=
nnot use image live, hddimg or iso.' % initrd_i)
> $
>
> suddenly, i see references to "INITRD_IMAGE_VM" and
> "INITRD_IMAGE_LIVE". so is "INITRD_IMAGE" correct? i don't see how
> that makes sense unless "VM" and "LIVE" are some weird form of
> override.
>
>   thoughts?
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Do or do not. There is no try"
  Yoda Master

