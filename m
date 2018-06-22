Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EA59E00CDE; Thu, 21 Jun 2018 18:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3733E0097C
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 18:58:58 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id c23-v6so3328475uan.3
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 18:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=g3p5NbJXZSfWRsgUGzbzFnyqmf3hsPdwomMPgg660ag=;
	b=YQKRr2f1E5ZrH0GD21B2xUXuDU0R+MgKz+EyeoLK28+xTwnIoRRuy1B0NR2RhyNOXG
	RIPsZT9HpCxmdf1CF7FPtAXcaewRQdQ0p+GXNWOVKraY+NR+dmpG5fsEWQZMXrFLVXPu
	dIWl8AMbipwV4Bwh7zM5bistHJ4NEQacP/MXRH8ALSTOyRhc2dwswV4z23mRnC2uT4vC
	uZnrEW8sptIbPHnsSR+RwuEy7laFSDkiAcFEjmwWwUD0GiAD79VRp58hB+YtQPqElKqQ
	LbNozTevO0sBFcLpyNBJf5PjBjPdZ2P6s2wNxGK06kB9WQr5b+uaSXGBfE0n7oorzNFu
	yTUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=g3p5NbJXZSfWRsgUGzbzFnyqmf3hsPdwomMPgg660ag=;
	b=o1b0r1W492IU7AQqOwqInQwUKECjnHYYH0LnfxT0Rwz8pv2NQgABvn6IF5JPjt5znw
	YAzleUmePJuE91rU/Cw+KZXUSk5zOKi7SqF8OugzFXvt3glaeJbxcYzOlxPbRaToWbL0
	IA635YC8As1a6AcTrzDW8mmayGecfL4oLfSlCl6N7L4mXaLP7JgFYL9sSQ+GjIct8+v2
	R1B7CuZ4ABpDIR15NClhUnMHMl76cZ+EkEpQPwZcalgEGC97QVsfdqnLrm6bNhQyPk+1
	H+hML1RDNMaDuHLmDW1C5v2wMwpE1wc31mJO9raldoKng6/rchC02ExLDCxeYntvyxMq
	uQdA==
X-Gm-Message-State: APt69E1baA07NbhJdCw1saJ9OWWoi5qKNkpGTWPZRYdjmLJ7JgeXcNCa
	QDHPtA8SFIWv47qGrZtxKNfLf9pQcLB/N4jLwFQ=
X-Google-Smtp-Source: ADUXVKIHcci6lXG/yMQlAh9FimaUMvQTigGI4s4lpxiHUb+goI4mYplY+g/wvMZsv4AJSW8WdDC2Q5sAhpIFDRwBWxY=
X-Received: by 2002:ab0:5323:: with SMTP id
	x32-v6mr17994976uax.139.1529632737637; 
	Thu, 21 Jun 2018 18:58:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAP8ZA7FsroZ=zs-j-OUkYshp-t+9nm_rpQsTkdae5fYmqPfjNA@mail.gmail.com>
In-Reply-To: <CAP8ZA7FsroZ=zs-j-OUkYshp-t+9nm_rpQsTkdae5fYmqPfjNA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jun 2018 18:58:31 -0700
Message-ID: <CAMKF1srx2PVV46Uysq+hGdgMY9JdWrLAsVp4tY5zjghiR9RtAQ@mail.gmail.com>
To: peddikrishnapriya@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding GCC to system root image
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
X-List-Received-Date: Fri, 22 Jun 2018 01:58:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 21, 2018 at 4:02 PM Krishna Priya
<peddikrishnapriya@gmail.com> wrote:
>
> Hello all,
>
> I am trying to add gcc to the system image by modifying the following fil=
es.
> poky/meta-qti-bsp/recipies-products/images/ BASE_IMAGE.inc
>
> + IMAGE_INSTALL +=3D"opkg"
> + IMAGE_INSTALL +=3D"packagegroup-core-buildessential"
>
> poky/build/conf/local.conf
> + EXTRA_IMAGE_FEATURES =3D "tools-sdk dev-pkgs"
>
> When I build the whole image, I get the following errors :
> update-alternatives: Error: cannot register alternative cmp to /bin/cmp s=
ince it is already registered to /usr/bin/cmp
> update-alternatives: Error: cannot register alternative diff to /bin/diff=
 since it is already registered to /usr/bin/diff
> update-alternatives: Error: cannot register alternative cmp to /bin/cmp s=
ince it is already registered to /usr/bin/cmp
> update-alternatives: Error: cannot register alternative diff to /bin/diff=
 since it is already registered to /usr/bin/diff
> update-alternatives: Error: cannot register alternative ar to /usr/bin/ar=
 since it is already registered to /bin/ar
> update-alternatives: Error: cannot register alternative strings to /usr/b=
in/strings since it is already registered to /bin/strings
> .
> .
> .
> .
> .
> ERROR: Multilib check error: duplicate files poky/build/tmp-glibc/work/XX=
X80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_co=
ntrol.h poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/1.0-=
r0/rootfs/usr/include/fpu_control.h is not the same
> ERROR: Multilib check error: duplicate files poky/build/tmp-glibc/work/XX=
80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_con=
trol.h poky/build/tmp-glibc/work/apq8096-oe-linux/machine-drone-image/1.0-r=
0/rootfs/usr/include/fpu_control.h is not the same
> ERROR: Function failed: do_rootfs
>
> Please let me know the workaround to solve this error. Thanks.

perhaps providing more information about which target arch and which
release etc. would be helpful.
If you post Build Configuration thats emitted by bitbake at beginning
of build, it provides good information on baseline.

> Regards,
> -Priya.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

