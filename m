Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F509E00EC1; Wed, 11 Jul 2018 23:11:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271D1E00CA9
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 23:11:24 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id y207-v6so53709298oie.13
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 23:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xQdgsa8ouq+ZEksxH+K7v/TLNRpgppT2i1j0ZGn6gXs=;
	b=QP66GviP/6Z0YR4tPX40gN78dA7hoNV2/Ia4bg5Z9wC3L9u4dEPqdLF6m4OTAZ2gED
	2jiL0HuFFiLtAUrrJV6qRq6X9od51HpipT4Cwqrth+j7S8dCvt2prVO09d2kg4YaDZdn
	eGpUtOwm9sM2Me7pvzmidr0LL3EpyBSb3d6c3lEA3Dke65xrpXk4he/2gcRsHAZwq5cx
	obnIBjx1e9QZI87n1HPM+2aTQIghW07r+9cRyIn930y4WkenHytIThJ1/slmbtdcbxGr
	C84Q3h+WZP3LNpgwzCyx5TaMXNuByw3XwR7+dbdMmUQiJrbT7hWNk2t4XuqDEAxCDHMi
	4bEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xQdgsa8ouq+ZEksxH+K7v/TLNRpgppT2i1j0ZGn6gXs=;
	b=JZO8VYhZ3mVwaSvvkdnN0G9IvHxOVPmNXUMqvh54cbdqGIpgiOZuBtjE7O+gKNIaTG
	yAncKk+NbsxPcDqMe8lIEF5FOHR+9Fu/qDv7e6JNNDI/8Ev5LffFAZwDJvGOfTuzOesy
	Rymf9FogaEVuGK1eW/pwsi+FH3qNn/8+2gilhrRVQ36AW7VEqXX/L0SHdx5A1rKV0XsN
	QLqEUnHYIjG/U0XaBVtJngMyQ9N35zwpmXCptByVj7WCtJ0uvBj+41IUO8rSpEOPw16/
	me2vd9BtDStebgXKGSlr+dG48ysiz0NwG7Omrb+VMdcQNQJ4VU7MR2zXtL4cF5/YHUx+
	XKsw==
X-Gm-Message-State: AOUpUlE2o6kul82q1NFj1T+DJPkq9hQgQn2d5IuFfRuerWivB/odJof4
	9/kfSMbnBGlp1CUjvFXovv64S3lEPgBoKnE7Vdc=
X-Google-Smtp-Source: AAOMgpdaIX9NRy1Z0DB9PqDMDNkgAqdpOMHgzABXGPONarM3hNAvm/N1j8F1ckD8fOOK/uu818cMLNLekfn/CWFJUjY=
X-Received: by 2002:aca:e80c:: with SMTP id
	f12-v6mr1007686oih.38.1531375884477; 
	Wed, 11 Jul 2018 23:11:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Wed, 11 Jul 2018 23:11:24
	-0700 (PDT)
In-Reply-To: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
References: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 12 Jul 2018 08:11:24 +0200
Message-ID: <CANNYZj-6T094K_MLnzL0DMT4Yb-0X_m370ncS366MOHQm_LHLw@mail.gmail.com>
To: Juro Bystricky <juro.bystricky@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, jurobystricky@hotmail.com,
	alejandr@xilinx.com
Subject: Re: [meta-mingw][sumo][PATCH 0/1] openssl for Windows
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
X-List-Received-Date: Thu, 12 Jul 2018 06:11:25 -0000
Content-Type: text/plain; charset="UTF-8"

You probably need to do this for openssl 1.1 as well as it soon will
be the default.

Alex

2018-07-12 0:42 GMT+02:00 Juro Bystricky <juro.bystricky@intel.com>:
> Patch to allow building openssl for Windows.
> openssl can also become part of SDK, i.e:
>
> SDKMACHINE="x86_64-mingw32"
> MACHINE = "qemux86-64"
> TOOLCHAIN_HOST_TASK_append = " nativesdk-openssl "
>
>
> Juro Bystricky (1):
>   openssl: build for mingw
>
>  .../openssl/openssl/mingw-targets.patch               | 13 +++++++++++++
>  recipes-connectivity/openssl/openssl_1.0.2o.bbappend  | 19 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
>  create mode 100644 recipes-connectivity/openssl/openssl/mingw-targets.patch
>  create mode 100644 recipes-connectivity/openssl/openssl_1.0.2o.bbappend
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

