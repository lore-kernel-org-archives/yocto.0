Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF4B5E009C6; Wed, 27 May 2015 13:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79B68E00956
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 13:37:02 -0700 (PDT)
Received: by qkdn188 with SMTP id n188so13058260qkd.2
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 13:37:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6sst4NCD6AZ1olSFoe1xFXVMuFJMMVIENcLco+Gmmv8=;
	b=adLGo2kibJLU7Hje5VhU51GAYi9goD9hE0L4mHWsB2ACx48xb+KG2vCXU+BopYZZwp
	2HtUs7qtVtGjmOTBFqYsBKbjnMULBjYhewPImAfD3OTxKUbI12pey88rC88ecdxEWbQB
	jKhDpEz0AnLUnrBaLDA8gZpfW1LaaXxM6aTrpHkHpLccO8sMax+wO8tPwNzirzEAvmPg
	ZlTv/VXutKNxtpWc/WFSrL1AiiH9x4K083D8lJocOeMOIJQUTypVesS1oRNc32y6kUV1
	0ENbMdjgCZyvaMw1aIzzZm5K/UERXEWOZpiy9LAXx13pRxX/knzNQMpKdE//zOWd37Vw
	w6gw==
X-Gm-Message-State: ALoCoQnUFE5CZWJLCwqhF2TTQ+2vWy9XSPhi9DTrk742/mOVXZ4+CDKpoIyvfRu26MLhQCHDckdo
X-Received: by 10.140.88.100 with SMTP id s91mr18174336qgd.59.1432759022280;
	Wed, 27 May 2015 13:37:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Wed, 27 May 2015 13:36:41 -0700 (PDT)
In-Reply-To: <5566050D.9090705@gmail.com>
References: <5566050D.9090705@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 May 2015 21:36:41 +0100
Message-ID: <CAJTo0LY3xtoy6Hke0tjo+D+PHWd=6+vR7x3k0qRoHBzeHLWTWw@mail.gmail.com>
To: "mar.krzeminski" <mar.krzeminski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changing VIRTUAL-RUNTIME_init_manager for initramfs image
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
X-List-Received-Date: Wed, 27 May 2015 20:37:05 -0000
Content-Type: multipart/alternative; boundary=001a11c11990927a3c051716344c

--001a11c11990927a3c051716344c
Content-Type: text/plain; charset=UTF-8

On 27 May 2015 at 18:55, mar.krzeminski <mar.krzeminski@gmail.com> wrote:

> I have machine and in this machine I have two images. One of this images
> is image for kernel initramfs.
> In this image I want to change init manager to busybox mdev, while ine the
> other one I use udev.
> I can do that by changing VIRTUAL-RUNTIME_init_manager variable.
> And now is time for dummy qestion, but I am not sure, if I change this
> variable
> in particular image everything will be ok? Is this a proper way to do so?
>

Yes, you can have a default assignment in your distro configuration, and
have another assignment in the image recipe that you want to have a
different init manager.

Also, don't you mean _dev_manager for the udev/mdev choice?

Ross

--001a11c11990927a3c051716344c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 May 2015 at 18:55, mar.krzeminski <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:mar.krzeminski@gmail.com" target=3D"_blank">mar.krzeminski@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1wu" cla=
ss=3D"a3s" style=3D"overflow:hidden">I have machine and in this machine I h=
ave two images. One of this images is image for kernel initramfs.<br>
In this image I want to change init manager to busybox mdev, while ine the =
other one I use udev.<br>
I can do that by changing VIRTUAL-RUNTIME_init_manager variable.<br>
And now is time for dummy qestion, but I am not sure, if I change this vari=
able<br>
in particular image everything will be ok? Is this a proper way to do so?</=
div></blockquote></div><br>Yes, you can have a default assignment in your d=
istro configuration, and have another assignment in the image recipe that y=
ou want to have a different init manager.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Also, don&#39;t you mean _dev_manager f=
or the udev/mdev choice?</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">Ross</div></div>

--001a11c11990927a3c051716344c--
