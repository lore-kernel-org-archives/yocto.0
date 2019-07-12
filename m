Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EC98E009FA; Fri, 12 Jul 2019 13:17:50 -0700 (PDT)
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
	*      [209.85.160.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 859ADE0096F
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 13:17:48 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d23so9475496qto.2
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 13:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1rtjh+Y7BlS2oM9luXhZdGT48M9ranFLpXZqDpfY6ec=;
	b=t0ep+HFnCfCdRAucnxjaSSQJSgRTMA6fqdQ2dZXNGqBi/Wk2EMi51V6rkgo1aj8Fov
	y7e05x+5mmof22czA5U2yKuRtpAJryN9OCvlQkOn3QH3RpkuqtxGaVH6tzKsYD9jN1oD
	63DAE+KYf4Sbv8zyLP+6SYyI8MtmVIxKC35QJN1rHwzou2+7xy6iWVjTtkDaPOuSZwfh
	xJeb6mkEPtrvAXv9qWi+JVYzEusM5eN5kks9RsWbPevXuviMouFZyVOR9i42c0gVnGUl
	9axXLQLjHwDVt0wB3eh4NduieerNUkxeYSimV5tEsPyecV2zNbxv+OMipOW1/yh7ftiJ
	zUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1rtjh+Y7BlS2oM9luXhZdGT48M9ranFLpXZqDpfY6ec=;
	b=uka0YV6wnlzvF+jIQZTuKe8V20uCmBjTuX5lwCC4jQoYJbF4Z1+cMkKCPALsVNfo1C
	ZBYSMOYzPi7n2XiLmjDpClOFJRZd+IlyROr88oJwTuDAYOfTcA0m5e8VhTgLvSz2XdPz
	PyN1IieiFTqZQ4fXK1mGySSklT3X1zWCrGUaqOuiZyxc8qtJerohtQ7OYSyZjFrDP/16
	Mj1PDSXRgSY4jQ+nfwdQ1Fxbl1kiH9YwSEiGr4SZ12RA6jwBBkwIAPR6LhbstI+lTZJ9
	Q9lKkONdVi/aL1XNKZBtNpOxCaS5hYOzpYF+NeBJzEKk20bkQPj/56I6vuSQd8NNpFVA
	VBYg==
X-Gm-Message-State: APjAAAUarFWJuaACKOAUaIYrq5N32vZ9sgXpUKGthdV61OYMJ3J7aEvn
	xrqS4sjY6+tt/lx4Bsy7XSLoW0OXr7bbJOLMzhTkvNqatPs=
X-Google-Smtp-Source: APXvYqyM0hktiIM6lOfjXsnK5auorxL/7UJc8o6a8PycTucMPH0cqnwv4IW26WvDdezi47k5fLpxJr+rSn47d1o70wI=
X-Received: by 2002:aed:36e8:: with SMTP id f95mr7921712qtb.88.1562962667436; 
	Fri, 12 Jul 2019 13:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AE@FMSMSX112.amr.corp.intel.com>
In-Reply-To: <F1CCA50D91351E4D93DCC0B03D7D2F4F8DF372AE@FMSMSX112.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 12 Jul 2019 13:17:21 -0700
Message-ID: <CAMKF1spvFQpVeZXNKxt4P6pYoob-phsbOh0qB=rh0EbomKqvHg@mail.gmail.com>
To: "Srinivasan, Usha" <usha.srinivasan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross compilation sysroot doesn't include libusb
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
X-List-Received-Date: Fri, 12 Jul 2019 20:17:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 12, 2019 at 1:02 PM Srinivasan, Usha
<usha.srinivasan@intel.com> wrote:
>
> I will start with the caveat: this is my first time trying to cross compi=
le for a target running a yocto bitbaked image. So I am surely not doing th=
e right thing.
>
>
>
> I have generated both a core-image-sato & core-image-sato-dev.  I am deve=
loping an application to run on my target machine.  My application uses lib=
raries that in turn need libusb.so which doesn=E2=80=99t exist in under the=
 sysroot setup for cross compilation.  I have these in my local.conf and I =
do see
>
>
>
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks tools-testapps tools-sdk dev-pkgs=
"
>
> CORE_IMAGE_EXTRA_INSTALL +=3D "openssh glib-2.0 glibc glib-networking lib=
usb-compat"
>
>
>
> I do see that libusb-compat was generated:
>
> ./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/lib=
usb-0.1-4-0.1.5-r0.corei7_64.rpm
>
> ./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/lib=
usb-0.1-src-0.1.5-r0.corei7_64.rpm
>
> ./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/lib=
usb-0.1-dev-0.1.5-r0.corei7_64.rpm
>
> ./corei7-64-poky-linux/libusb-compat/1_0.1.5-r0/deploy-rpms/corei7_64/lib=
usb-0.1-dbg-0.1.5-r0.corei7_64.rpm
>
>
>
> I tried bitbake meta-ide-support and used tmp/environment-setup-corei7-64=
-poky-linux to setup my build environment, but there is no libusb.so in the=
 sysroot lib directory.
>
>
>
> I tried bitbake meta-toolchain and installed the tool chain and used its =
 /opt/poky/2.7/environment-setup-corei7-64-poky-linux, but again the opt/po=
ky/2.7 sysroot directory  also does not include libusb.so.

you should generate image specific SDK with bitbake -cpopulate_sdk
core-image-sato
and also add libusb to CORE_IMAGE_EXTRA_INSTALL if its not being
pulled in autromatically
as a dependency by some package in sato image.

>
>
>
> What step am I missing?
>
>
>
> Thanks in advance,
>
> Usha
>
>
>
> ____
> Intel Corporation
>
> 1110 American Parkway NE
>
> Suite F-100, AMP1 10C-166b
> Allentown, PA 18109-9151
>
> 484-245-9498
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

