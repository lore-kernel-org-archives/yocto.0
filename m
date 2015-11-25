Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 633FCE00BFF; Wed, 25 Nov 2015 04:52:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF0CE00BFD
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 04:52:04 -0800 (PST)
Received: by lffu14 with SMTP id u14so59228687lff.1
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 04:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=SgnDez0ep9RkKgLDm9OjiHFZD/VStlEMlKdUc925Rak=;
	b=RqPQEQKvSZCLHVQpJhmDzWdHgsmDI21zA/eW+pce5NZfhCF9sxOd08o4Es0htQ2MLe
	7et3jE3NtzroUa9jSGaAThiJ1KDPfKxhW/piyGfEbb5QIxGhFYwS+oepAwFySG+Q4WTo
	8fvAt630Tot2vGeKlPvIVRM+eyeMn9sF2qQ5hvwlisQY/oAESpIcLa8ZvcQhLbixskkh
	8rei7adhXMJU14yVgJs0/rCfsTikB+asAJ6q+6mM2vTtXaarHkB1wVOXGSA4ufhcPPFl
	9MQ6T45tojJlwLa5gJ4UXt0DntfIpHkeUW2yDz+ja9LxNTJxWUw8CsKHezd+mEFJlkZE
	8ciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=SgnDez0ep9RkKgLDm9OjiHFZD/VStlEMlKdUc925Rak=;
	b=QLQjO5BkqZg+DaVBPpe8DUdr0zfDOnHxENcBn5MfMdE8lLD4446NnbehHZ310f7QLX
	bcvZ0wFJCF62bW3L8qp28bG8otNVJsFCMSDtgqE6HnrktxhtT4NKKxwCuXUrmioxRqbS
	fwacgMue1bdzu7hnUDLAzflJEH2ZFt97QzTKFwRQyvO6JsSA8ln9dn9YPOY5eVZpV5iH
	wDkTP5Anz6udakEq0TPRFXSZPqkVUm+0YrLzvT5oB/wbpUt2okIviFXTt2CFiLSh4Gl9
	TrpBYQDhCoEwlqvG1yqr1ku9gWfmUllDIkni+EFExjMfQOsO1mnwl8M1VWWm8/z/oXCG
	IUFg==
X-Gm-Message-State: ALoCoQmNdxtNZWPPU8Ni77uhtTQhFCrTcfJF/3T8pApwrV0wZ4hSkS/+REveFOY0GXQ095coLX26
X-Received: by 10.25.162.144 with SMTP id l138mr15437513lfe.30.1448455923976; 
	Wed, 25 Nov 2015 04:52:03 -0800 (PST)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84]) by smtp.gmail.com with ESMTPSA id
	102sm3281158lft.21.2015.11.25.04.52.02 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 Nov 2015 04:52:03 -0800 (PST)
Date: Wed, 25 Nov 2015 13:52:01 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20151125125201.GD10430@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <6AC2D51E0855E34EBDB192F9BA81BFB3A743E819@PTW-EX-37.PEGA.CORP.PEGATRON>
MIME-Version: 1.0
In-Reply-To: <6AC2D51E0855E34EBDB192F9BA81BFB3A743E819@PTW-EX-37.PEGA.CORP.PEGATRON>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: Header files in /usr/include of rootfs
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
X-List-Received-Date: Wed, 25 Nov 2015 12:52:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Andy Hung(=E6=B4=AA=E7=BF=8A=E6=A1=93_Pegatron) <Andy_Hung@pegatroncorp.c=
om> [151125 11:53]:

> Message: 2
> Date: Tue, 24 Nov 2015 14:25:14 +0100
> From: Anders Darander <anders@chargestorm.se>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Header files in /usr/include of rootfs
> Message-ID: <20151124132514.GB2165@ad.chargestorm.se>
> Content-Type: text/plain; charset=3Dutf-8

> * Andy Hung(???_Pegatron) <Andy_Hung@pegatroncorp.com> [151124 11:35]:
> > I was trying to add some pre-built binaries and files by using a recipe.
> > The recipe has something like this:

> > SRC_URI =3D file://files<file:///\\files> ?
> > do_install() {
> >     install ?d ${D}
> > }

>	> What files are you installing? How does those look like?
>	The content of the folder has those sub-folders, sbin, root, lib, etc.
>	Those sub-folders contains files such as executable binaries, config file=
s, kernel modules, .so files ...
>	All these files are actually built from the source code of a specific WiF=
i driver,
>	what I want to do is installing all pre-built binaries/files into corresp=
onding locations in rootfs.

There's no way to build this using OE?...

Though, sure, it's should work as long as the binaries and kernel
modules actually loads and runs.

> > FILES_${PN} =3D ?/*?

>	> Here you add say that anything that has been installed, but not put int=
o any other package, should be added to ${PN}. Is that what you want?
>	Yes, all files are installed in a package.

> > ALLOW_EMPTY_${PN} =3D ?1?

>	> Remove this one unless ${PN} is going to be empty.
>	This line is removed.

> > INSANE_SKIP_${PN} =3D ?debug-files dev-so?

>	> These might be needed if you get certain QA-warnings/error without them.
>	Yes, got some QA-warnings when building so I keep this.

> > The result was all the binaries and files installed and packages are=20
> > created, But I also found kernel header files are also built in under /=
usr/include in rootfs image.
> > For my understanding those header files should be used if I want to dev=
elop/debug applications on the target device but it is not the case.

Could you check if any -dev packages gets installed into the image? If
so which one? Do anything like kernel-src or something similar gets
installed?

> > Also I noticed the use of INSANE_SKIP_${PN} so I check the usage of=20
> > debug-files and dev-so, And it turned out there are .debug folders in t=
he WORKDIR/package folder so I thought that is why debug-files was used.

>	> See answer below.

> > The questions are,
> > Why are those kernel header files installed in rootfs? How do I prevent=
 thisa?

>	> I assume that they aren't in the package you just created? Do you have =
anything in your package that might have a dependency on the kernel headers=
? Do you have anything in your IMAGE_FEATURES?
>	No, header files aren't in the package.
>	I checked the driver source code and many files include kernel headers li=
ke this  "#include <linux/xxx.h>" , is this what you meant by dependency on=
 kernel headers?

Are the source code packaged installed and packaged?

Can you inspect the generated package ${PN}, and see what it's depencies
are?

>	IMAGE_FEATURES was not used in the recipe file.

That would rather be in either local.conf, distro, or in your image.

> > Why are there .debug in the package folder, it should only be in packag=
e ?dbg folder, right?

>	> Where are the .debug directories located? You should add them to:
>	> FILES_${PN}-dbg +=3D "<location>/.debug"
>	I add this line and rebuild but the result seems unchanged.
>	the .debug folders are located in=20
>	${WORKDIR}/package
>	${WORKDIR}/package-split/<package name> - dbg

I don't understand. Were the .debug directories located in
packages-split/<package-name>-dbg? If so, that's where we want them.

Which package do you add to your image?=20
If you remove that package, do you still get the kernel headers
installed?

Cheers,
Anders

--=20
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

