Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55042E00D45; Wed, 29 May 2019 02:13:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.54 listed in list.dnswl.org]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D68BE00798
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 02:13:11 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id u27so1392518lfg.10
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 02:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=nds+oPAY+iLS8aXJppVsjJ054+UQs5zVsG6TOVqoETk=;
	b=Id+iQP450oygkCSecdUKAxdOOLzPW7l/ECViPiT/Pc1Q2Gm6M8BdK9r9lIgwTW46fx
	/EYXk5Mn+K2Srm2VgOZ3Kolz6R+WZOpmMyWj1SRJ/n8XTWSUvrVU5yB09ndM2VYt61Tq
	TFnpB+vZR7lm7eatkSpQjt/b6ZjgkwCE8OvE8KofPFtr+wJfLI2QM7w+UiYyuzTdGs2w
	t1kzWaMYtJxw1iT54cg1LPAKr4oaDcNJkY3xXi/cp+QIaFDh+Flv3dt+TPoXBTeXOeKn
	Cw2qxYY7rvdbWclYoMgxI2X9SwV8anPONHNlvYGdtmb8WEEocbA540tCgRGGH2g+xxZc
	XwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=nds+oPAY+iLS8aXJppVsjJ054+UQs5zVsG6TOVqoETk=;
	b=o/fhi+Zdh3Ab2njA7b6CsPGForUIOVPEPeOFCa4zYZV5FgSYD4Xllahw3TpMYDJVL5
	ID9ITdjnoHq1MTPMt91+rJ1OGXRcVKMhM2CCx+FI8STI6ZzIOzcTQXNhNDQZAR2aZLt3
	zHNnxuf6jMiDFrXKrlKZBJ+IsFnagRafXpmdem/rWKO3YRCSkjW4mm9S2/ZzP+p+Tjao
	ckymwBBUA7oE4gvj2vjEGpXVeQKrS/mhzQBxqNyOuGlrHUlkDC68Nik/jYp/dbqAzv/9
	77aNuCEbG61cmK83PmhUj7forAu/VgTiblpmqQHgnN6ohESOZkhKFbrUw459M6pDr419
	3+1Q==
X-Gm-Message-State: APjAAAWEqCa+0LmyPtTke/dKntIvINTXF/XZIERyn/VIVeG8A907HMRj
	uIU4QeQollUGnyYKNyDxng2WbPju8b8wNbbpH0/prndz+nU=
X-Google-Smtp-Source: APXvYqxDGNq3NS6pU1nnjtdrQm3qoUyaGLaS4/y6AXaRkrN0sZmdF3HdUU6lw0qS4OdGJ+r3O1nwA6CiiyRb3VCSpdU=
X-Received: by 2002:ac2:599b:: with SMTP id w27mr15077778lfn.184.1559121190014;
	Wed, 29 May 2019 02:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=fqT3e5a5Y5ZdZsiRQwWwDLSyMk42GaD3ue1qV-mGRyw@mail.gmail.com>
In-Reply-To: <CAEhQi8=fqT3e5a5Y5ZdZsiRQwWwDLSyMk42GaD3ue1qV-mGRyw@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 29 May 2019 11:12:59 +0200
Message-ID: <CAEhQi8msceqbGBCpX2j4kUxc7wt-xuQ55iPHXs7MeGXiLsULhg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Using the SDK and CMAKE GNUInstallDirs for multilib target
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
X-List-Received-Date: Wed, 29 May 2019 09:13:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I found in cmake.bbclass

cmake \
      ${OECMAKE_GENERATOR_ARGS} \
      $oecmake_sitefile \
      ${OECMAKE_SOURCEPATH} \
      -DCMAKE_INSTALL_PREFIX:PATH=3D${prefix} \
      -DCMAKE_INSTALL_BINDIR:PATH=3D${@os.path.relpath(d.getVar('bindir'),
d.getVar('prefix'))} \
      -DCMAKE_INSTALL_SBINDIR:PATH=3D${@os.path.relpath(d.getVar('sbindir')=
,
d.getVar('prefix'))} \
      -DCMAKE_INSTALL_LIBEXECDIR:PATH=3D${@os.path.relpath(d.getVar('libexe=
cdir'),
d.getVar('prefix'))} \
      -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D${sysconfdir} \
      -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D${@os.path.relpath(d.getVar('sh=
aredstatedir'),
d.  getVar('prefix'))} \
      -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D${localstatedir} \
      -DCMAKE_INSTALL_LIBDIR:PATH=3D${@os.path.relpath(d.getVar('libdir'),
d.getVar('prefix'))} \
      -DCMAKE_INSTALL_INCLUDEDIR:PATH=3D${@os.path.relpath(d.getVar('includ=
edir'),
d.getVar('prefix'))} \
      -DCMAKE_INSTALL_DATAROOTDIR:PATH=3D${@os.path.relpath(d.getVar('datad=
ir'),
d.getVar('prefix'))} \
      -DCMAKE_INSTALL_SO_NO_EXE=3D0 \
      -DCMAKE_TOOLCHAIN_FILE=3D${WORKDIR}/toolchain.cmake \
      -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \
      ${EXTRA_OECMAKE} \
      -Wno-dev

so it looks all CMAKE_INSTALL paths are actually managed by cmake class.

/M=C3=A5ns

Den tis 28 maj 2019 kl 18:47 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> Hi,
>
> Not really a Yocto question but I am trying to build an application
> using our SDK. We are using CMake to build and are using
> GNUInstallDIrs for managing our install paths. I thought
> GNUInstallDirs should have the detected that the SDK was a multilib
> which it dose in regards to finding packages since it will look for
> libraries under /usr/lib64 but when looking into GNUInstallDirs it
> will explicitly not try and detect if CMAKE_INSTALL_LIBDIR should be
> lib or lib64 when CMAKE_CROSSCOMPILING is set which it is when using
> the SDK. When building the same application in our image build it
> works as expected and GNUInstallDirs will detect that it is a multilib
> dir and install it under /usr/lib64. Could anyone point me to how we
> manage this in poky/OE so I could potentially copy that to our SDK
> build?
>
> BR
> M=C3=A5ns Zigher

