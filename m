Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A1A8E00CDF; Sun, 14 Jul 2019 17:56:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60B4FE00B9C
	for <yocto@yoctoproject.org>; Sun, 14 Jul 2019 17:55:59 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id n11so13963989qtl.5
	for <yocto@yoctoproject.org>; Sun, 14 Jul 2019 17:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/1cngpWaeP/P6U38lQ93Cnyts3pTKDTCvTOEFRzdngg=;
	b=VNGE7D7vFWZ3MXoALvQbjkENUxBtJce4wu3g/MOifJHkCNkNdxbTUJXta15BEseSs9
	GU8kOeLGWenAaxNN8oJ3vs22tLiG2y8BwaxK9nZE4t2vWw6gHxtibp2MnCqraraLMxRD
	qb537uk2HUVUi9Ooxroogi7lPuf/kq9v/CFXcMCaA0pZdw8mTZx2j/pS93n25KWDLHip
	bMRaFbE1iO1IlMupRENs4zyhtfspsYNafUuwMiPq1o8LIRlmpV4SrokcEaN6CzYLAXxq
	nCfyqkG2QaD1ikBYQuVOMtWcr/jZi+LCO8se81RW6C2cw9FKCRsknpe4Io58OkHvPS7F
	vJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/1cngpWaeP/P6U38lQ93Cnyts3pTKDTCvTOEFRzdngg=;
	b=D1F4bvsv/WX1UesE5Qx7woSn+oAPxDzITY+MAd/xrURJY96t91SdvZ8aUrS/8wiKF1
	tqoqMs5pblNEhKRJGVHJQQc9RLoFrIX08w0oAb0HiaaTrM059zFftkmcYhz11mygFbqP
	pFhQzFR0EcpCXfvGUz5o/SOXfz3QEF3C32Kyff1HrEkan4qpy+68QSRNHqLP8emfPifz
	5ZAJ7zuMKF3cJbmiyrYhVG86b14cFnO/Ecp39C+WCrkrB0SFW8856mknPxtBqPxZJPFg
	hMvAF6sxRYlLf243G6J3tLxZZp0Z+F/rkGYmsInYVTKpoCC5yWDT8ijU3JVDbHT2SFz2
	91rA==
X-Gm-Message-State: APjAAAUDdc2Z7kf3/C18JcHgXSFKG+3NQn5fM4Qs0vF/puwQwhenlaRi
	fr9kaMu1z0o13YS0q/8z5e7fw5QbLHcgW8C7df+78oLibW8=
X-Google-Smtp-Source: APXvYqzvbQVw+Av6/AQSSRH6MAyXio2f3dW4+YROK5TargCC/JF4zn0AcnuWKANgQ3S8gTbreixJtXpoJMo2za8K3C4=
X-Received: by 2002:ac8:764f:: with SMTP id i15mr15658509qtr.194.1563152158549;
	Sun, 14 Jul 2019 17:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
In-Reply-To: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 14 Jul 2019 17:55:32 -0700
Message-ID: <CAMKF1soen1zoyD=eE73Vod4pG_OBSSVLb2mpWE50VVsjObas2w@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Mon, 15 Jul 2019 00:56:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 8, 2019 at 10:59 PM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello All,
>
> I have talked to my BSP provider and they have solved the conflict files =
issue with an update. Now I am able to create and boot a Yocto Image with M=
eta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a toolchain. =
Nor with I guess it is trying to compile something before qtdeclarative, bu=
t these 'something' depends on qtdeclarative.
>
> My image is core image is Weston. I added the line 'inherit populate_sdk_=
qt5' to my core-image-weston.bb file. And tried both commands 'bitbake meta=
-toolchain-qt5' and 'bitbake -c populate_sdk core-image-weston'. The result=
 is the same.
>
> I cut just the error part of my output:
>
> | cd qdeclarativefolderlistmodel/ && ( test -e Makefile || /home/closx/po=
ky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUT=
OINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake -o Makefile /hom=
e/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.1=
0.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativefolderl=
istmodel/qdeclarativefolderlistmodel.pro ) && make -f Makefile
> | Project ERROR: Unknown module(s) in QT: declarative widgets
> | Makefile:88: recipe for target 'sub-qdeclarativecomponent-make_first' f=
ailed
> | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
> | make[2]: *** Waiting for unfinished jobs....
> | Project ERROR: Unknown module(s) in QT: declarative
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first' fa=
iled
> | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first' fai=
led
> | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
> | Makefile:63: recipe for target 'sub-parserstress-make_first' failed
> | make[2]: *** [sub-parserstress-make_first] Error 3
> | make[2]: Entering directory '/home/closx/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tes=
ts/manual/declarative'
> | make[2]: Nothing to be done for 'first'.
> | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/manual/declarative'
> | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/manual'
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first' fail=
ed
> | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
> | Project ERROR: Unknown module(s) in QT: declarative
> | Makefile:188: recipe for target 'sub-qdeclarativefolderlistmodel-make_f=
irst' failed
> | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
> | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/auto/declarative'
> | Makefile:45: recipe for target 'sub-declarative-make_first' failed
> | make[1]: *** [sub-declarative-make_first] Error 2
> | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/test=
s/auto'
> | Makefile:45: recipe for target 'sub-auto-make_first' failed
> | make: *** [sub-auto-make_first] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile_ptest_base (log file is located at /=
home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/=
5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
> ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:do_=
compile_ptest_base) failed with exit code '1'
>
> What do you guys think the reason of this issue may be? Any solution offe=
rs?
>
> My full output:
> https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
>
> Another source issue again?
> Have a lovely day!

qtquick1 has been removed but I am guessting you are on an older
release. Can you try adding DEPENDS +=3D "qtdeclarative"  to qtquick1
recipe and see if that helps ?
secondly you can stop build ptest for this package since thats where
its failing, that might be a workaround.

> Onur
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

